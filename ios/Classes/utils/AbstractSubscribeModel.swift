import Flutter
import Foundation
import SwiftProtobuf

class AbstractSubscribeModel<Result: SwiftProtobuf.Message, Action: SwiftProtobuf.Message>: NSObject, FlutterStreamHandler {
    private var _eventChannel: FlutterEventChannel?
    private var _methodChannel: FlutterMethodChannel?
    private var _eventSink: FlutterEventSink?
    public var methodChannelId: String
    public var eventChannelId: String
    private var isListening = false
    
    func onStartListening() {
        preconditionFailure("This method must be overridden")
    }
    
    func onStopListening() {
        preconditionFailure("This method must be overridden")
    }

    func buildAction(data: Data) -> Action? {
        do {
            return try Action(serializedData: data)
        } catch {
            print("buildAction error: \(error)")
        }
        return nil
    }

    func handleAction(action _: Action, result: @escaping FlutterResult) {
        preconditionFailure("This method must be overridden")
    }

    func sink(result: Result) {
        do {
            if(_eventSink != nil) {
                print("[iOS] [\(String(describing: type(of: self)))] sink: \(try! result.jsonString())")
                try _eventSink!(["data": result.serializedData(partial: false)])
            }
        } catch {}
    }

    func onListen(withArguments _: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        print("[iOS] [\(String(describing: type(of: self)))] onListen")
        _eventSink = events
        return nil
    }

    func onCancel(withArguments _: Any?) -> FlutterError? {
        print("[WEAR3] onDispose cancelEventChannel [iOS] [\(String(describing: type(of: self)))] onCancel")
        self._eventChannel?.setStreamHandler(nil)
        self._eventSink = nil
        self.onStopListening()
        self.isListening = false
        
        ChannelUtil.shared.cleanUpEventChannel(for: eventChannelId)
        ChannelUtil.shared.cleanUpStreamHandler(for: eventChannelId)
        return nil
    }
    
    func dispose() {
        print("[iOS] [\(String(describing: type(of: self)))] dispose")
        self._methodChannel?.setMethodCallHandler(nil)
        ChannelUtil.shared.cleanUpMethodChannel(for: methodChannelId)
    }

    init(methodChannelId: String? = nil, eventChannelId: String? = nil) {
        self.methodChannelId = methodChannelId ?? UUID().uuidString
        self.eventChannelId = eventChannelId ?? UUID().uuidString
        _methodChannel = ChannelUtil.shared.createMethodChannel(id: self.methodChannelId)
        _eventChannel = ChannelUtil.shared.createEventChannel(id: self.eventChannelId)
        super.init()
        
        
        _methodChannel?.setMethodCallHandler { [weak self] call, result in
            if call.method == "action" {
                let args = call.arguments as! [String:Any]
                let actionData = args["data"] as! FlutterStandardTypedData
                let actionModel = self?.buildAction(data: actionData.data)
                print("[iOS] [\(String(describing: type(of: self)))] action: \(try! actionModel!.jsonString())")
                if actionModel != nil {
                    self?.handleAction(action: actionModel!, result: result)
                }
            } else if (call.method == "dispose") {
                result(nil)
                self?.dispose()
            } else if (call.method == "stopListening") {
                self?.isListening = false
                self?.onStopListening()
                result(nil)
            } else if(call.method == "startListening") {
                if(self?.isListening == false) {
                    self?.onStartListening()
                    self?.isListening = true
                }
                result(nil)
            }
        }
        
        ChannelUtil.shared.registerStreamHandler(id: self.eventChannelId, handler: self)
        _eventChannel?.setStreamHandler(self)
    }
}
