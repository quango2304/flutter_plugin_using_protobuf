import Flutter
import Foundation

class ChannelUtil {
    private var _eventChannels: [String: FlutterEventChannel] = [:]
    private var _streamHandlers: [String: FlutterStreamHandler] = [:]
    private var _methodChannels: [String: FlutterMethodChannel] = [:]

    var messenger: FlutterBinaryMessenger?
    public func initialize(registrar: FlutterPluginRegistrar) {
        messenger = registrar.messenger()
    }

    func createMethodChannel(id: String) -> FlutterMethodChannel {
        let channel = FlutterMethodChannel(name: id, binaryMessenger: messenger!)
        self.registerMethodChannel(id: id, channel: channel)
        return channel
    }

    func createEventChannel(id: String) -> FlutterEventChannel {
        let channel = FlutterEventChannel(name: id, binaryMessenger: messenger!)
        self.registerEventChannel(id: id, channel: channel)
        return channel
    }
    
    func registerEventChannel(id: String, channel: FlutterEventChannel) {
        self._eventChannels[id] = channel
    }
    
    func registerMethodChannel(id: String, channel: FlutterMethodChannel) {
        self._methodChannels[id] = channel
    }
    
    func cleanUpMethodChannel(for id: String) {
        self._methodChannels.removeValue(forKey: id)
    }
    
    func cleanUpEventChannel(for id: String) {
        self._eventChannels.removeValue(forKey: id)
    }
    
    func cleanUpStreamHandler(for id: String) {
        self._streamHandlers.removeValue(forKey: id)
    }
    
    func registerStreamHandler(id: String, handler: FlutterStreamHandler) {
        self._streamHandlers[id] = handler
    }
    
    func cleanUp() {
        for eventChannel in _eventChannels.values {
            eventChannel.setStreamHandler(nil)
        }
        
        for methodChannel in _methodChannels.values {
            methodChannel.setMethodCallHandler(nil)
        }
        
        for streamHandler in _streamHandlers.values {
            streamHandler.onCancel(withArguments: nil)
        }
        
        self._eventChannels.removeAll()
        self._streamHandlers.removeAll()
        self._methodChannels.removeAll()
    }

    static let shared = ChannelUtil()
    private init() {}
}
