//
//  nft.swift
//  NftLabsSDK
//
//  Created by user on 11/12/21.
//

import Foundation 
import web3swift
import ReactiveSwift
import EtherKit
import PromiseKit

var contract:ProjectContract?
var web3:web3?
var network:Network = .rinkeby
var wallet:Wallet?
var password = ""

public class NftModule {

    let address: String
    
    init(address: String) {
        wallet = getWallet(password: password, privateKey: "5c122fd6691ff517139e6bd1fcfb34eff247a2964b4bc8d1e202a513f8a29451", walletName:"RinkebyWallet")
        // Create contract with wallet as the sender
        contract = ProjectContract(wallet: wallet!)
        self.address = address
    }

    public func mint() {
        // Mints New Token
//        let arg = MintArg(name: "Hello There", description: "Yellow")
        let addressTo = EthereumAddress(self.address)
        let imageUri = "ipfs://QmdFeKxt6FJUNvaGgzYuYNRbpNWyHxP2PFzjsgPf1eD2Jf"
        
        let parameters = [addressTo as Any, imageUri as Any] as [AnyObject]
        firstly {
            // Call contract method
            callContractMethod(method: .mintNFT, parameters: parameters, password: password)
        }.done { response in
            // print out response
            print("mintingNFT response: \(response)")
        }
    }

    public func getSignerAddress() -> String {
        return SdkOptions.registry_contract_address
    }
}
