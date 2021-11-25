//
//  ABIElement.swift
//  NftDemo
//
//  Created by user on 11/16/21.
//

public enum ABIElement: Decodable {
    case function(Function)
    case event(Event)
    case ignored

    enum CodingKeys: String, CodingKey {
        case name
        case type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let type = try values.decode(String.self, forKey: .type)

        switch type {
        case "constructor", "fallback":
            print("Constructor/Fallback")
            self = .ignored
        case "function":
            let function: Function = try Function.init(from: decoder)
            let inputsNames: [String] = function.inputs.map { $0.name }
            guard !inputsNames.contains("") else {
                self = .ignored
                print("function/ignored")
                return
            }
            let name = try values.decode(String.self, forKey: .name)
            print("\(name): function")
            self = .function(function)
        case "event":
            print("event")
            self = .event(try Event(from: decoder))
        default:
            print("Problem")
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [CodingKeys.type], debugDescription: "unknown type of ABI Element"))
        }
    }
}

extension ABIElement {
    public func renderToSwift() -> String {
        switch self {
        case let .function(f): return f.renderToSwift()
        case let .event(e): return e.renderToSwift()
        case .ignored: return ""
        }
    }
}
