//
//  ercInterfaces.swift
//  NftLabsSDK
//
//  Created by user on 11/12/21.
//

import Foundation

var ZeroAddress = "0x0000000000000000000000000000000000000000"

struct ErcInterfacesConstants {
    static var InterfaceIdErc721 = Data([128, 172, 88, 205]) as NSData
    static var InterfaceIdErc165 = Data([1, 255, 201, 167]) as NSData
    static var InterfaceIdErc721Metadata = Data([91, 94, 19, 159]) as NSData
    static var InterfaceIdErc721Enumerable = Data([120, 14, 157, 99]) as NSData
    static var InterfaceIdErc1155 = Data([217, 182, 122, 38]) as NSData
}
