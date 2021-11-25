// Generated using ContractGen
// swiftlint:disable file_length

import ReactiveSwift
import EtherKit
import BigInt

struct testWrapperBox {
    fileprivate let etherQuery: EtherQuerying
    fileprivate let at: Address

    init(etherQuery: EtherQuerying, at: Address) {
        self.etherQuery = etherQuery
        self.at = at
    }
    
    func getAllWaves<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let getAllWavesFunctionCall = Function(name: "getAllWaves", parameters: [] as [ABIType])
                let getAllWavesData = GeneralData(data: getAllWavesFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: getAllWavesData, queue: DispatchQueue.global(qos: .default), completion: { result in
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

    func getTotalWaves<T: PrivateKeyType>() -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let getTotalWavesFunctionCall = Function(name: "getTotalWaves", parameters: [] as [ABIType])
                let getTotalWavesData = GeneralData(data: getTotalWavesFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: getTotalWavesData, queue: DispatchQueue.global(qos: .default), completion: { result in
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

    func wave<T: PrivateKeyType>(message: String) -> ContractMethodInvocation<T> {
        let send: (_ using: T) -> SignalProducer<Hash, EtherKitError> = { using in
            return SignalProducer<Hash, EtherKitError> { observer, disposable in
                let waveFunctionCall = Function(name: "wave", parameters: [message.abiType] as [ABIType])
                let waveData = GeneralData(data: waveFunctionCall.encodeToCall())
                self.etherQuery.send(using: using, to: self.at, value: Wei(0), data: waveData, queue: DispatchQueue.global(qos: .default), completion: { result in
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
    func testWrapper(at: Address) -> testWrapperBox {
        return testWrapperBox(etherQuery: self, at: at)
    }
}
