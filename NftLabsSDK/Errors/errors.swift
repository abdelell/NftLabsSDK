//
//  errors.swift
//  NftLabsSDK
//
//  Created by user on 11/12/21.
//

import Foundation

enum Exceptions: Error {
    case noSignerSuppliedToSDK
    case assetNotFoundException(identifier: [Any]? = nil)
    case unsupportedAssetException(identifier: [Any]? = nil)
    case failedToDownloadMetadata
    case failedToUploadMetadata
}

extension Exceptions: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .noSignerSuppliedToSDK:
            return "No signer (private key) supplied to SDK"
        case .assetNotFoundException(identifier: let identifier):
            return identifier != nil ?
            "Asset with ID \(String(describing: identifier)) not found" :
            "Asset not found"
        case .unsupportedAssetException(identifier: let identifier):
            return "Asset with address \(String(describing: identifier)) is not compatible with this method"
        case .failedToDownloadMetadata:
            return "Failed to download metadata"
        case .failedToUploadMetadata:
            return "Failed to upload metadata"
        }
    }
}
