//
//  pack.swift
//  NftLabsSDK
//
//  Created by user on 11/11/21.
//

import Foundation

struct PackMetadata {
    var id: Int
    var creator_address: String
    var current_supply: Int
    var open_start: Date
    var metadata: NftMetadata
}

struct PackNftMetadata {
    var supply: Int
    var metadata: NftMetadata
}

struct AssetAmountPair {
    var token_id: Int
    var amount: Int
}

struct CreatePackArg {
    var asset_contract_address: String
    var metadata: StringOrDict
    var assets: [AssetAmountPair]
    var rewards_per_open: Int = 1
    var seconds_until_open_start: Int = 0
}
