// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BleWrapper",
    platforms: [
        .iOS(.v13),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "BleWrapper",
            targets: ["BleWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jup-ag/hw-transport-ios-ble", from: "1.2.0")
    ],
    targets: [
        .target(
            name: "BleWrapper",
            dependencies: [.product(name: "BleTransport", package: "hw-transport-ios-ble")]),
        .testTarget(
            name: "BleWrapperTests",
            dependencies: ["BleWrapper"]),
    ]
)
