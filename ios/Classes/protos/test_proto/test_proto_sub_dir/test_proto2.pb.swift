// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: test_proto/test_proto_sub_dir/test_proto2.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct TestProto2 {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum Status: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case inProgress // = 0
    case notStarted // = 1
    case success // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .inProgress
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .inProgress
      case 1: self = .notStarted
      case 2: self = .success
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .inProgress: return 0
      case .notStarted: return 1
      case .success: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public struct Action {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var action: TestProto2.Action.OneOf_Action? = nil

    public var finish: String {
      get {
        if case .finish(let v)? = action {return v}
        return String()
      }
      set {action = .finish(newValue)}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public enum OneOf_Action: Equatable {
      case finish(String)

    #if !swift(>=4.1)
      public static func ==(lhs: TestProto2.Action.OneOf_Action, rhs: TestProto2.Action.OneOf_Action) -> Bool {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch (lhs, rhs) {
        case (.finish, .finish): return {
          guard case .finish(let l) = lhs, case .finish(let r) = rhs else { preconditionFailure() }
          return l == r
        }()
        }
      }
    #endif
    }

    public init() {}
  }

  public struct Result {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var status: TestProto2.Status = .inProgress

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=4.2)

extension TestProto2.Status: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [TestProto2.Status] = [
    .inProgress,
    .notStarted,
    .success,
  ]
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension TestProto2: @unchecked Sendable {}
extension TestProto2.Status: @unchecked Sendable {}
extension TestProto2.Action: @unchecked Sendable {}
extension TestProto2.Action.OneOf_Action: @unchecked Sendable {}
extension TestProto2.Result: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension TestProto2: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "TestProto2"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TestProto2, rhs: TestProto2) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TestProto2.Status: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "IN_PROGRESS"),
    1: .same(proto: "NOT_STARTED"),
    2: .same(proto: "SUCCESS"),
  ]
}

extension TestProto2.Action: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = TestProto2.protoMessageName + ".Action"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "finish"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.action != nil {try decoder.handleConflictingOneOf()}
          self.action = .finish(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if case .finish(let v)? = self.action {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TestProto2.Action, rhs: TestProto2.Action) -> Bool {
    if lhs.action != rhs.action {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TestProto2.Result: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = TestProto2.protoMessageName + ".Result"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.status != .inProgress {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TestProto2.Result, rhs: TestProto2.Result) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}