//
//  MintSomeShit.swift
//  NftDemo
//
//  Created by user on 11/12/21.
//

import Foundation
import NftLabsSDK

class MintSomeShit {
    
    let thirdWeb = ThirdWeb(privateKey: "")
    
    
    init() {
        print("YELllow who is there")
        
//        let contractHeaders: [ABIElement]
//
//        do {
//            if let path = Bundle.main.path(forResource: "abii", ofType: "json") {
//                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
//                print("1")
//                contractHeaders = try JSONDecoder().decode([ABIElement].self, from: data)
//                print("2")
//            }
//        } catch  {
//
//            print("Errorrrr")
//        }
        
//
        let nftModule = thirdWeb.getNftModule(contractAddress: "0x2e1460d9e806Ca1de4B45E5F9E2756Cc0B07a102")
    }

}
