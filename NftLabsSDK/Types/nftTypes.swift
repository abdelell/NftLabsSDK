//
//  nft.swift
//  NftLabsSDK
//
//  Created by user on 11/11/21.
//

import Foundation

public struct MintArg {
    var name: String
    var description: String? = ""
    var image_uri: String? = ""
    var properties: [String: String] = [:]
}

public struct NftMetadata {
    var name: String? = nil
    var description: String? = nil
    var image: String? = nil
    var properties: StringOrDict? = nil
    var id: Int? = nil
    var uri: String? = nil
}

public enum StringOrDict {
    case string(String)
    case dict([String: String])
}
