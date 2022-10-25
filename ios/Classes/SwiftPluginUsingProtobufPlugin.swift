import Flutter
import UIKit

public class SwiftPluginUsingProtobufPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugin_using_protobuf", binaryMessenger: registrar.messenger())
    let instance = SwiftPluginUsingProtobufPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    ChannelUtil.shared.initialize(registrar: registrar)
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      switch call.method {
      case "getTestModel":
          let testModel = TestModel()
          print("getTestModel")
          result(
                  [
                      "data": try! testModel.toProto().serializedData()
                  ]
              )
          break
      default:
          result(nil)
      }
  }
}
