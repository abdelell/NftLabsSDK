//
//  currency.swift
//  NftLabsSDK
//
//  Created by user on 11/11/21.
//

import Foundation

struct Currency {
    var name: String
    var symbol: String
    var decimals: Int
}

struct CurrencyValue {
    var currency: Currency
    var value: String
    var display_value: String
}
