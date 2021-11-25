//
//  ipfsStorage.swift
//  NftLabsSDK
//
//  Created by user on 11/12/21.
//

import Foundation

class IpfsStorage {
    let nftLabsApiUrl = "https://upload.nftlabs.co"
    
    var gatewayUri: String
    
    init(gatewayUri: String) {
        self.gatewayUri = gatewayUri
    }
    
    func get(uri: String,
             completion: @escaping (Result<String, Error>) -> Void) {
        guard let ipfsUrl = URL(string: replaceIpfsPrefixWithGateway(uri: uri, gatewayUri: gatewayUri)) else {
            completion(Result.failure(Exceptions.failedToDownloadMetadata))
            return
        }
        
        // GET request
        let getTask = URLSession.shared.dataTask(with: ipfsUrl) {(data, response, error) in
            guard let data = data else { return }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode != 200 else {
                print("ERROR: Failed to get httpResponse from response call")
                completion(Result.failure(Exceptions.failedToDownloadMetadata))
                return
            }
            
            guard let jsonString = String(data: data, encoding: .utf8) else {
                print("Cant get JSON data")
                completion(Result.failure(Exceptions.failedToDownloadMetadata))
                return
            }
            
            completion(Result.success(jsonString))
            print(String(data: data, encoding: .utf8)!)
        }

        getTask.resume()
    }
    
    func upload(metadata: String, contractAddress: String,
                signerAddress: String, completion: @escaping (Result<String, Error>) -> Void) {
        if metadata.starts(with: "ipfs://") {
            // Dont think it should be successful
            completion(.success(metadata))
            return
        }
        
        let paramaterDictionary = ["file": [nil, metadata]]
        
        guard let serviceUrl = URL(string: "\(nftLabsApiUrl)/upload") else {
            completion(.failure(Exceptions.failedToUploadMetadata))
            return
        }
        
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "POST"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("CONSOLE-GO-SDK-\(contractAddress)", forHTTPHeaderField: "X-App-Name")
        request.setValue(signerAddress, forHTTPHeaderField: "X-Public-Address")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: paramaterDictionary, options: []) else {
            completion(.failure(Exceptions.failedToUploadMetadata))
            return
        }
        request.httpBody = httpBody
        
        let postTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode != 200 else {
                print("ERROR: Failed to get httpResponse from response call")
                completion(Result.failure(Exceptions.failedToUploadMetadata))
                return
            }
            
            do {
                guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                      let ipfsUri = json["ipfsUri"] as? String else {
                          completion(.failure(Exceptions.failedToUploadMetadata))
                          return
                      }
                completion(.success(ipfsUri))
            } catch {
                completion(.failure(Exceptions.failedToUploadMetadata))
                print(error)
            }
        }
        
        postTask.resume()
    }
}

extension IpfsStorage {
    private func replaceIpfsPrefixWithGateway(uri: String, gatewayUri: String) -> String {
        if uri == "" {
            return ""
        }
        
        var newUri = uri.replacingFirstOccurrence(of: "ipfs://", with: gatewayUri)
        
        // Cant find a built in method that keeps removing the last characters
        while(true) {
            if newUri.last != "/" {
                break
            }
            
            newUri.removeLast()
        }
        
        return newUri
    }
}

private extension String {
    
    func replacingFirstOccurrence(of target: String, with replacement: String) -> String {
        guard let range = self.range(of: target) else { return self }
        return self.replacingCharacters(in: range, with: replacement)
    }
}
