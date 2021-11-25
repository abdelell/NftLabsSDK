//
//  listing.swift
//  NftLabsSDK
//
//  Created by user on 11/11/21.
//

import Foundation

struct Listing {
    var id: String
    var seller: String
    var token_contract: String
    var token_id: String
    var quantity: Int
    var currency_contract: String
    var price_per_token: Int
    var sale_start: Date
    var sale_end: Date
    var tokens_per_buyer: Int
    var token_metadata: NftMetadata? = nil
    var currency_metadata: CurrencyValue? = nil
}
