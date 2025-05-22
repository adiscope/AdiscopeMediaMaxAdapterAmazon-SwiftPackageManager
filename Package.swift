// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterAmazon",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterAmazon",
            targets: ["AdiscopeMediaMaxAdapterAmazonTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterAmazonTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterAmazon"),
                .target(name: "DTBiOSSDK"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.3.0/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "a06bb1f25d251fae1ba9ade8e3901c022f37d2b4024354f749cdc31bbe582f95"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/DTBiOSSDK.xcframework.zip",
            checksum: "9950cf49facd8cd21c88b4d636b641c134e20674ec9c53d157c3e20783ce7c0a"
        ),
    ]
)
