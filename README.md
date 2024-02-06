[SwiftProtobuf library](https://github.com/apple/swift-protobuf) binaries (iOS + iOS Simulator)


# Building and updating

1. Clone [Trust Wallet Core fork](https://github.com/tangem/wallet-core)
2. Install the required dependencies by following [the official guide](https://developer.trustwallet.com/wallet-core/building).
3. [Optional] Update **SwiftProtobuf** library:
	* Make sure that the new version of the **SwiftProtobuf** library is compatible with other consumers of a binary artifact (`grpc-swift`, `hedera-sdk-swift`, `SwiftBinanceChain`, `blockchain-sdk-swift`, and so on)
	* Set a new version in the `./tools/dependencies-version` file
	* Set a new version in the `./swift/Podfile` file
4. Build C++ and Rust sources by running `./bootstrap.sh` command
5. Build iOS sources by running `./tools/generate-files ios` command
6. Navigate to the `.swift` folder
7. Build binary artefacts by running `fastlane ios xcframework` command
8. Copy the **SwiftProtobuf** binary artefact `./swift/build/SwiftProtobuf.xcframework` to this repo's root folder
9. After merging the PR with your changes, assign the appropriate tag (mirrors the version of the **SwiftProtobuf** library built as a binary artefact)
