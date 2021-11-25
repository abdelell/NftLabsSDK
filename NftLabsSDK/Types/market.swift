//
//  market.swift
//  NftLabsSDK
//
//  Created by user on 11/11/21.
//

import Foundation

struct ListArg {
    var asset_contract: String
    var token_id: Int
    var currency_contract: String
    var price_per_token: Int
    var quantity: Int
    var tokens_per_buyer: Int
    var seconds_until_start: Int
    var seconds_until_end: Int
}

struct Filter {
    var seller: String? = nil
    var tokenContract: String? = nil
    var tokenId: Int? = nil
}

struct MarketListing {
    var listingId: Int
    var seller: String
    var assetContract: String
    var tokenId: Int
    var quantity: Int
    var currency: String
    var pricePerToken: Int
    var saleStart: Int
    var saleEnd: Int
    var tokensPerBuyer: Int
    var tokenType: Int
}

//struct Listing {
//    var id: String
//    var seller: String
//    var token_contract: String
//    var token_id: String
//    var quantity: Int
//    var currency_contract: String
//    var price_per_token: Int
//    var sale_start: Date
//    var sale_end: Date
//    var token_metadata: NftMetadata? = nil
//    var currency_metadata: CurrencyValue? = nil
//}
