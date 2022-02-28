// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "gt3-ios-cocoapods-support",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "gt3-ios-cocoapods-support",
            targets: ["gt3-ios-cocoapods-support"]
        ),
    ],
    targets: [
        .target(
            name: "gt3-ios-cocoapods-support",
            dependencies: [],
            path: "Sources"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
