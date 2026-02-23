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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "f3fac08974a0e212985a58dcb0352342a7b27d07b8bc241b051eed948869638b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazonMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationAmazonAdMarketplaceAdapter.xcframework.zip",
            checksum: "4ef946e7aac3aef93d87f50af9baba1c8a84f7962ab1265793da6c2a22270aa0"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/DTBiOSSDK.xcframework.zip",
            checksum: "ca1a08923bb911d481d0793980cc3723829bbab5135339d43ca33a8ea1f3d126"
        ),
    ]
)
