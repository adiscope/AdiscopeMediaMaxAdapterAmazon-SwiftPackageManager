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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "eb1becf20f3d386e5d5986a20570fbb61d02cab8c18854da0781e9e73bf74bd7"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/DTBiOSSDK.xcframework.zip",
            checksum: "160468024830b2b6173e5eb0cabf850ce90207a4215066467ad8803bb66eaa98"
        ),
    ]
)
