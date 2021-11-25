//
//  ThirdWeb.swift
//  NftLabsSDK
//
//  Created by user on 11/12/21.
//

import Foundation

public class ThirdWeb {
    
    let privateKey: String
    
    var nftModule: NftModule?
    
    public init(privateKey: String) {
        self.privateKey = privateKey
    }
    
    public func getNftModule(contractAddress: String) -> NftModule {
        guard nftModule != nil else {
            let nftModule = NftModule(address: contractAddress)
            return nftModule
        }
        
        
        // Is there a better way rather than force unwrap it here?
        return nftModule!
    }
    
    
    
}
