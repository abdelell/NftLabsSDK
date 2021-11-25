# NftLabsSDK

The first time you run the project, an error will come up in the web3Swift library in a file called ABIParsing. Change the line(77) to "let payable = abiRecord.stateMutability != nil ? (abiRecord.stateMutability == "payable") : false
