//
//  AbstractActionModel.swift
//  wear3_flutter_plugin
//
//  Created by Mr Nguyen Truong Duy on 12/11/2021.
//

import Flutter
import Foundation
import SwiftProtobuf

class AbstractActionModel<Action: SwiftProtobuf.Message> {
    private var _methodChannel: FlutterMethodChannel?
    public var methodChannelId: String

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

    func dispose() {
        _methodChannel?.setMethodCallHandler(nil)
        ChannelUtil.shared.cleanUpMethodChannel(for: methodChannelId)
    }

    init(methodChannelId: String? = nil, eventChannelId: String? = nil) {
        self.methodChannelId = methodChannelId ?? UUID().uuidString
        _methodChannel = ChannelUtil.shared.createMethodChannel(id: self.methodChannelId)
        _methodChannel?.setMethodCallHandler { call, result in
            if call.method == "action" {
                let args = call.arguments as! [String: Any]
                let actionData = args["data"] as! FlutterStandardTypedData
                let actionModel = self.buildAction(data: actionData.data)
                if actionModel != nil {
                    print("[iOS] [\(String(describing: type(of: self)))] action: \(try! actionModel!.jsonString())")
                    self.handleAction(action: actionModel!, result: result)
                }
            } else if(call.method == "dispose") {
                print("[iOS] [\(String(describing: type(of: self)))] action: dispose")
                result(nil)
                self.dispose()
            }
        }
    }
}

