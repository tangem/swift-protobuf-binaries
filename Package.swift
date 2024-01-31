// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftProtobuf",
    products: [
        .library(
            name: "SwiftProtobuf",
            targets: ["SwiftProtobufBinaries"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SwiftProtobufBinaries",
            path: "SwiftProtobuf.xcframework"
        )
    ]
)
