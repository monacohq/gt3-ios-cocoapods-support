// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GT3Captcha",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "GT3Captcha",
            targets: ["GT3Captcha", "Captcha"]
        )
    ],
    targets: [
        .target(
            name: "GT3Captcha",
            dependencies: ["Captcha"],
            path: "Sources",
            resources: [.process("GT3Captcha.bundle")]
        ),
        .binaryTarget(
            name: "Captcha",
            path: "Sources/GT3Captcha.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
