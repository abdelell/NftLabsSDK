//
//  collection.swift
//  NftLabsSDK
//
//  Created by user on 11/11/21.
//

import Foundation

struct CollectionMetadata {
    var id: Int?
    var creator: String?
    var supply: Int?
    var metadata: NftMetadata? = nil
}

struct CreateCollectionArg {
    var metadata: StringOrDict? = nil
    var supply: Int? = nil
}

struct MintCollectionArg {
    var token_id: Int? = nil
    var amount: Int? = nil
}
