// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GT3",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "GT3",
            targets: ["GT3"]
        )
    ],
    targets: [
        .target(
            name: "GT3",
            dependencies: [],
            path: "Sources",
            resources: [.copy("GT3Captcha.framework"), .copy("GT3Captcha.bundle")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
