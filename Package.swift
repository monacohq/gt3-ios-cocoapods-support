// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GT3Captcha-iOS",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "GT3Captcha-iOS",
            targets: ["GT3Captcha-iOS"]
        )
    ],
    targets: [
        .target(
            name: "GT3Captcha-iOS",
            dependencies: ["GT3Captcha"],
            path: "Sources",
            resources: [.process("GT3Captcha.bundle")]
        ),
        .binaryTarget(
            name: "GT3Captcha",
            path: "Sources/GT3Captcha.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
