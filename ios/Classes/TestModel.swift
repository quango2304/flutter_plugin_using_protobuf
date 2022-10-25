import Foundation

class TestModel: AbstractSubscribeModel<TestProto.Result, TestProto.Action> {

    override func buildAction(data: Data) -> TestProto.Action? {
        do {
            return try TestProto.Action(serializedData: data)
        } catch {
            print("buildAction error: \(error)")
        }
        return nil
    }

    override func handleAction(action: TestProto.Action, result: @escaping FlutterResult) {
        switch action.action {
        case .finish(_):
            var resultProto = TestProto.Result()
            resultProto.status = .success
            self.sink(result: resultProto)
            result(nil)
        default:
            result(nil)
        }
    }
    
    override func onStartListening() {
        //subscribe anything
    }
    
    override func onStopListening() {
        //unsubscribe anything
    }

    func toProto() -> TestProto {
        var proto = TestProto()
        proto.methodChannelID = methodChannelId
        proto.eventChannelID = eventChannelId
        return proto
    }
}
