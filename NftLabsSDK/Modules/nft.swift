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

public class NftModule {
    var address: String = ""
    var generatedKey: HDKey.Private!

    init(address: String) {
        self.address = address
        
        let sentence: Mnemonic.MnemonicSentence = Mnemonic.MnemonicSentence(["matter", "category", "scatter", "much", "again", "buzz", "build", "belt", "kitten", "gossip", "twice", "vanish"])
        let walletStorage = KeychainStorageStrategy(identifier: "cz.ackee.etherkit.example")
        HDKey.Private.create(
            with: MnemonicStorageStrategy(walletStorage),
            mnemonic: sentence,
            network: .main,
            path: [
                KeyPathNode(at: 44, hardened: true),
                KeyPathNode(at: 60, hardened: true),
                KeyPathNode(at: 0, hardened: true),
                KeyPathNode(at: 0),
            ]
        ) { _ in
            HDKey.Private(walletStorage, network: .main, path: [
                KeyPathNode(at: 44, hardened: true),
                KeyPathNode(at: 60, hardened: true),
                KeyPathNode(at: 0, hardened: true),
                KeyPathNode(at: 1),
            ]).unlocked { value in
                self.mint()
                DispatchQueue.main.async {
                    _ = value.map { key in
                        print("Public Address: \(key.publicKey)")

                    }
                }
            }
        }
    }

    public func mint() {
        // Mints New Token
        let arg = MintArg(name: "Hello There", description: "Yellow")
        mintTo(getSignerAddress(), arg)
    }

    public func mintTo(_ toAddress: String, _ arg: MintArg) {
        let walletStorage = KeychainStorageStrategy(identifier: "cz.ackee.etherkit.example")
        let key = HDKey.Private(walletStorage, network: .rinkeby, path: [
                    KeyPathNode(at: 44, hardened: true),
                    KeyPathNode(at: 60, hardened: true),
                    KeyPathNode(at: 0, hardened: true),
                    KeyPathNode(at: 1),
                    ])
        print("Public Address: \(key)")
        let query = EtherQuery(URL(string: "wss://rinkeby-light.eth.linkpool.io/ws")!, connectionMode: .websocket)
        let testContractAddress = try! Address(describing: "0x2e1460d9e806Ca1de4B45E5F9E2756Cc0B07a102")
        let contractAddress = try! Address(describing: "0x6fb033D1C518877b58C9fBF635Db90441CecFC99")
        
        let test = try! Address(describing: "0x650B7618a64f5F9A538a400A7C9d97a51277cF62")
        query.testWrapper(at: test).getAllWaves().send(using: key).startWithResult { result in
            switch result {
            case .success(let hash):
                print(hash)
                print("Test greetings succeeded!")
            case .failure(let error):
                print(error)
                print("Test greetings failed.")
            }
        }
//        query.nFTWrapper(at: testContractAddress).mintNFT(to: contractAddress, uri: "ipfs://QmdFeKxt6FJUNvaGgzYuYNRbpNWyHxP2PFzjsgPf1eD2Jf").send(using: key).startWithResult { result in
//
//            switch result {
//            case .success(let hash):
//                print(hash)
//                print("Test greetings succeeded!")
//            case .failure(let error):
//                print(error)
//                print("Test greetings failed.")
//            }
//            print("what is going on?")
//        }
//        let finalProperties: [String: String] = arg.properties
//
//        let storage = IpfsStorage(gatewayUri: SdkOptions.ipfs_gateway_url)
//
//        let meta = ["name": arg.name,
//                    "description": arg.description,
//                    "image": arg.image_uri,
//                    "properties": finalProperties] as [String : Any]
//
//        var uri: String = ""
//
//
//        storage.upload(metadata: "\(meta)",
//                                 contractAddress: address,
//                       signerAddress: getSignerAddress()) { result in
//            switch result {
//            case .success(let uriData):
//                uri = uriData
//            case .failure(let error):
//                print("ERror")
//                print(error.localizedDescription)
//            }
//
//            print("Uploaded Metadata Successfully To Storage")
//
//
//
//            print("Goooood?")
//        }
        

    }

    public func getSignerAddress() -> String {
        return SdkOptions.registry_contract_address
    }
}
