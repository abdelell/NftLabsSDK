//
//  sdkOptions.swift
//  NftLabsSDK
//
//  Created by user on 11/12/21.
//

import Foundation

struct SdkOptions {
    static var ipfs_gateway_url: String = "https://cloudflare-ipfs.com/ipfs/"
    static var registry_contract_address: String = "0x6fb033D1C518877b58C9fBF635Db90441CecFC99"
    static var max_gas_price_in_gwei: Int = 100
    static var gas_speed: String = "fastest"
    static var private_key: String = "3a51fcc766b33827d372715f2b16183a44689af4c8330f93515f752f4ab36daa"
    static var tx_timeout_in_seconds: Int = 30
}
