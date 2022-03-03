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
            dependencies: ["GT3Captcha", "GT3Captcha_Bundle"],
            path: "Sources"
        ),
        .target(
            name: "GT3Captcha",
            resources: [.process("GT3Captcha.framework")],
            path: "Sources"
        ),
        .target(
            name: "GT3Captcha_Bundle",
            resources: [.process("GT3Captcha.bundle")],
            path: "Sources"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
