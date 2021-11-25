// Generated using ContractGen
// swiftlint:disable file_length

import ReactiveSwift
import EtherKit
import BigInt

struct NFTWrapperBox {
    fileprivate let etherQuery: EtherQuerying
    fileprivate let at: Address

    init(etherQuery: EtherQuerying, at: Address) {
        self.etherQuery = etherQuery
        self.at = at
    }
    
    func DEFAULT_ADMIN_ROLE<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let DEFAULT_ADMIN_ROLEFunctionCall = Function(name: "DEFAULT_ADMIN_ROLE", parameters: [] as [ABIType])
                let DEFAULT_ADMIN_ROLEData = GeneralData(data: DEFAULT_ADMIN_ROLEFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: DEFAULT_ADMIN_ROLEData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func MINTER_ROLE<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let MINTER_ROLEFunctionCall = Function(name: "MINTER_ROLE", parameters: [] as [ABIType])
                let MINTER_ROLEData = GeneralData(data: MINTER_ROLEFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: MINTER_ROLEData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func PAUSER_ROLE<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let PAUSER_ROLEFunctionCall = Function(name: "PAUSER_ROLE", parameters: [] as [ABIType])
                let PAUSER_ROLEData = GeneralData(data: PAUSER_ROLEFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: PAUSER_ROLEData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func TRANSFER_ROLE<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let TRANSFER_ROLEFunctionCall = Function(name: "TRANSFER_ROLE", parameters: [] as [ABIType])
                let TRANSFER_ROLEData = GeneralData(data: TRANSFER_ROLEFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: TRANSFER_ROLEData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func _contractURI<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let _contractURIFunctionCall = Function(name: "_contractURI", parameters: [] as [ABIType])
                let _contractURIData = GeneralData(data: _contractURIFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: _contractURIData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func approve<T: PrivateKeyType>(to: Address, tokenId: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let approveFunctionCall = Function(name: "approve", parameters: [to.abiType, tokenId.abiType] as [ABIType])
                let approveData = GeneralData(data: approveFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: approveData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func balanceOf<T: PrivateKeyType>(owner: Address) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let balanceOfFunctionCall = Function(name: "balanceOf", parameters: [owner.abiType] as [ABIType])
                let balanceOfData = GeneralData(data: balanceOfFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: balanceOfData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func burn<T: PrivateKeyType>(tokenId: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let burnFunctionCall = Function(name: "burn", parameters: [tokenId.abiType] as [ABIType])
                let burnData = GeneralData(data: burnFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: burnData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func contractURI<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let contractURIFunctionCall = Function(name: "contractURI", parameters: [] as [ABIType])
                let contractURIData = GeneralData(data: contractURIFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: contractURIData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func getApproved<T: PrivateKeyType>(tokenId: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let getApprovedFunctionCall = Function(name: "getApproved", parameters: [tokenId.abiType] as [ABIType])
                let getApprovedData = GeneralData(data: getApprovedFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: getApprovedData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func getRoleAdmin<T: PrivateKeyType>(role: Data) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let getRoleAdminFunctionCall = Function(name: "getRoleAdmin", parameters: [.bytes(count: .constrained(32), value: role)] as [ABIType])
                let getRoleAdminData = GeneralData(data: getRoleAdminFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: getRoleAdminData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func getRoleMember<T: PrivateKeyType>(role: Data, index: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let getRoleMemberFunctionCall = Function(name: "getRoleMember", parameters: [.bytes(count: .constrained(32), value: role), index.abiType] as [ABIType])
                let getRoleMemberData = GeneralData(data: getRoleMemberFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: getRoleMemberData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func getRoleMemberCount<T: PrivateKeyType>(role: Data) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let getRoleMemberCountFunctionCall = Function(name: "getRoleMemberCount", parameters: [.bytes(count: .constrained(32), value: role)] as [ABIType])
                let getRoleMemberCountData = GeneralData(data: getRoleMemberCountFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: getRoleMemberCountData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func grantRole<T: PrivateKeyType>(role: Data, account: Address) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let grantRoleFunctionCall = Function(name: "grantRole", parameters: [.bytes(count: .constrained(32), value: role), account.abiType] as [ABIType])
                let grantRoleData = GeneralData(data: grantRoleFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: grantRoleData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func hasRole<T: PrivateKeyType>(role: Data, account: Address) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let hasRoleFunctionCall = Function(name: "hasRole", parameters: [.bytes(count: .constrained(32), value: role), account.abiType] as [ABIType])
                let hasRoleData = GeneralData(data: hasRoleFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: hasRoleData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

//    func isApprovedForAll<T: PrivateKeyType>(owner: Address, operator: Address) -> ContractMethodInvocation<T> {
//        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
//            return SignalProducer<Hash, EtherKitError> { observer, disposable in
//                let isApprovedForAllFunctionCall = Function(name: "isApprovedForAll", parameters: [owner.abiType, operator.abiType] as [ABIType])
//                let isApprovedForAllData = GeneralData(data: isApprovedForAllFunctionCall.encodeToCall())
//                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: isApprovedForAllData, queue: DispatchQueue.global(qos: .default), completion: { result in
//                    switch result {
//                    case .success(let hash):
//                        observer.send(value: hash)
//                    case .failure(let error):
//                        observer.send(error: error)
//                        observer.sendCompleted()
//                    }
//                })
//            }
//        }
//        return ContractMethodInvocation(send: send)
//    }

    func isTrustedForwarder<T: PrivateKeyType>(forwarder: Address) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let isTrustedForwarderFunctionCall = Function(name: "isTrustedForwarder", parameters: [forwarder.abiType] as [ABIType])
                let isTrustedForwarderData = GeneralData(data: isTrustedForwarderFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: isTrustedForwarderData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func mintNFT<T: PrivateKeyType>(to: Address, uri: String) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let mintNFTFunctionCall = Function(name: "mintNFT", parameters: [to.abiType, uri.abiType] as [ABIType])
                let mintNFTData = GeneralData(data: mintNFTFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: mintNFTData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func name<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let nameFunctionCall = Function(name: "name", parameters: [] as [ABIType])
                let nameData = GeneralData(data: nameFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: nameData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func nextTokenId<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let nextTokenIdFunctionCall = Function(name: "nextTokenId", parameters: [] as [ABIType])
                let nextTokenIdData = GeneralData(data: nextTokenIdFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: nextTokenIdData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func ownerOf<T: PrivateKeyType>(tokenId: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let ownerOfFunctionCall = Function(name: "ownerOf", parameters: [tokenId.abiType] as [ABIType])
                let ownerOfData = GeneralData(data: ownerOfFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: ownerOfData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func pause<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let pauseFunctionCall = Function(name: "pause", parameters: [] as [ABIType])
                let pauseData = GeneralData(data: pauseFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: pauseData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func paused<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let pausedFunctionCall = Function(name: "paused", parameters: [] as [ABIType])
                let pausedData = GeneralData(data: pausedFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: pausedData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func renounceRole<T: PrivateKeyType>(role: Data, account: Address) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let renounceRoleFunctionCall = Function(name: "renounceRole", parameters: [.bytes(count: .constrained(32), value: role), account.abiType] as [ABIType])
                let renounceRoleData = GeneralData(data: renounceRoleFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: renounceRoleData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func revokeRole<T: PrivateKeyType>(role: Data, account: Address) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let revokeRoleFunctionCall = Function(name: "revokeRole", parameters: [.bytes(count: .constrained(32), value: role), account.abiType] as [ABIType])
                let revokeRoleData = GeneralData(data: revokeRoleFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: revokeRoleData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func royaltyBps<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let royaltyBpsFunctionCall = Function(name: "royaltyBps", parameters: [] as [ABIType])
                let royaltyBpsData = GeneralData(data: royaltyBpsFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: royaltyBpsData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func safeTransferFrom<T: PrivateKeyType>(from: Address, to: Address, tokenId: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let safeTransferFromFunctionCall = Function(name: "safeTransferFrom", parameters: [from.abiType, to.abiType, tokenId.abiType] as [ABIType])
                let safeTransferFromData = GeneralData(data: safeTransferFromFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: safeTransferFromData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func safeTransferFrom<T: PrivateKeyType>(from: Address, to: Address, tokenId: BigUInt, data: Data) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let safeTransferFromFunctionCall = Function(name: "safeTransferFrom", parameters: [from.abiType, to.abiType, tokenId.abiType, .bytes(count: .unlimited, value: data)] as [ABIType])
                let safeTransferFromData = GeneralData(data: safeTransferFromFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: safeTransferFromData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

//    func setApprovalForAll<T: PrivateKeyType>(operator: Address, approved: Bool) -> ContractMethodInvocation<T> {
//        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
//            return SignalProducer<Hash, EtherKitError> { observer, disposable in
//                let setApprovalForAllFunctionCall = Function(name: "setApprovalForAll", parameters: [operator.abiType, approved.abiType] as [ABIType])
//                let setApprovalForAllData = GeneralData(data: setApprovalForAllFunctionCall.encodeToCall())
//                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: setApprovalForAllData, queue: DispatchQueue.global(qos: .default), completion: { result in
//                    switch result {
//                    case .success(let hash):
//                        observer.send(value: hash)
//                    case .failure(let error):
//                        observer.send(error: error)
//                        observer.sendCompleted()
//                    }
//                })
//            }
//        }
//        return ContractMethodInvocation(send: send)
//    }

    func setContractURI<T: PrivateKeyType>(URI: String) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let setContractURIFunctionCall = Function(name: "setContractURI", parameters: [URI.abiType] as [ABIType])
                let setContractURIData = GeneralData(data: setContractURIFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: setContractURIData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func setRestrictedTransfer<T: PrivateKeyType>(restrictedTransfer: Bool) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let setRestrictedTransferFunctionCall = Function(name: "setRestrictedTransfer", parameters: [restrictedTransfer.abiType] as [ABIType])
                let setRestrictedTransferData = GeneralData(data: setRestrictedTransferFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: setRestrictedTransferData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func setRoyaltyBps<T: PrivateKeyType>(royaltyBps: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let setRoyaltyBpsFunctionCall = Function(name: "setRoyaltyBps", parameters: [royaltyBps.abiType] as [ABIType])
                let setRoyaltyBpsData = GeneralData(data: setRoyaltyBpsFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: setRoyaltyBpsData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func supportsInterface<T: PrivateKeyType>(interfaceId: Data) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let supportsInterfaceFunctionCall = Function(name: "supportsInterface", parameters: [.bytes(count: .constrained(4), value: interfaceId)] as [ABIType])
                let supportsInterfaceData = GeneralData(data: supportsInterfaceFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: supportsInterfaceData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func symbol<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let symbolFunctionCall = Function(name: "symbol", parameters: [] as [ABIType])
                let symbolData = GeneralData(data: symbolFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: symbolData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func tokenByIndex<T: PrivateKeyType>(index: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let tokenByIndexFunctionCall = Function(name: "tokenByIndex", parameters: [index.abiType] as [ABIType])
                let tokenByIndexData = GeneralData(data: tokenByIndexFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: tokenByIndexData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func tokenOfOwnerByIndex<T: PrivateKeyType>(owner: Address, index: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let tokenOfOwnerByIndexFunctionCall = Function(name: "tokenOfOwnerByIndex", parameters: [owner.abiType, index.abiType] as [ABIType])
                let tokenOfOwnerByIndexData = GeneralData(data: tokenOfOwnerByIndexFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: tokenOfOwnerByIndexData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func tokenURI<T: PrivateKeyType>(tokenId: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let tokenURIFunctionCall = Function(name: "tokenURI", parameters: [tokenId.abiType] as [ABIType])
                let tokenURIData = GeneralData(data: tokenURIFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: tokenURIData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func totalSupply<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let totalSupplyFunctionCall = Function(name: "totalSupply", parameters: [] as [ABIType])
                let totalSupplyData = GeneralData(data: totalSupplyFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: totalSupplyData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func transferFrom<T: PrivateKeyType>(from: Address, to: Address, tokenId: BigUInt) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let transferFromFunctionCall = Function(name: "transferFrom", parameters: [from.abiType, to.abiType, tokenId.abiType] as [ABIType])
                let transferFromData = GeneralData(data: transferFromFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: transferFromData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func transfersRestricted<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let transfersRestrictedFunctionCall = Function(name: "transfersRestricted", parameters: [] as [ABIType])
                let transfersRestrictedData = GeneralData(data: transfersRestrictedFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: transfersRestrictedData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }

    func unpause<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let unpauseFunctionCall = Function(name: "unpause", parameters: [] as [ABIType])
                let unpauseData = GeneralData(data: unpauseFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: unpauseData, queue: DispatchQueue.global(qos: .default), completion: { result in
                    switch result {
                    case .success(let hash):
                        observer.send(value: hash)
                    case .failure(let error):
                        observer.send(error: error)
                        observer.sendCompleted()
                    }
                })
            }
        }
        return ContractMethodInvocation(send: send)
    }
}

extension EtherQuery {
    func nFTWrapper(at: Address) -> NFTWrapperBox {
        return NFTWrapperBox(etherQuery: self, at: at)
    }
}
