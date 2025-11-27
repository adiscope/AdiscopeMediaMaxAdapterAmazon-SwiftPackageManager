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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterAmazonTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterAmazon"),
                .target(name: "AdiscopeMediaMaxAdapterAmazonMediationAdapter"),
                .target(name: "DTBiOSSDK"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "39e01853cc423d96056d7e8d5de5a8c47eac01d63e9d59a1209f7f645b85eb37"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazonMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationAmazonAdMarketplaceAdapter.xcframework.zip",
            checksum: "03978a302660050771ef9a31ec6c31c8259d81b5aff1836a01003493d0124e3f"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/DTBiOSSDK.xcframework.zip",
            checksum: "cbd1e58f91935cc9045f8cf48fb6e2864c5b4bebd2b3c71c34339f51cd41f193"
        ),
    ]
)
