//
//  ParsingError.swift
//  NftDemo
//
//  Created by user on 11/16/21.
//

import Foundation

// Parser Errors
enum ParsingError: Error {
    case invalidJsonFile

    case elementTypeInvalid
    case elementNameInvalid
    case functionInputInvalid
    case functionOutputInvalid
    case eventInputInvalid
    case parameterTypeInvalid
    case parameterTypeNotFound
    case contractNameInvalid(json: [String: Any])
    case contractAbiInvalid
}
