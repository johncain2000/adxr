// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "adxr_library",
    platforms: [
        .iOS(.v14),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "adxr_library",
            targets: ["adxr"]),
    ],
    targets: [
        .binaryTarget(
            name: "adxr",
            path: "adxr.xcframework"
        ),
        .testTarget(
            name: "adxr_libraryTests",
            dependencies: ["adxr"]),
    ]
)
