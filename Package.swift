// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HapticFeedback",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "HapticFeedback",
            targets: ["HapticFeedback"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "HapticFeedback",
            dependencies: []
        ),
        .testTarget(
            name: "HapticFeedbackTests",
            dependencies: ["HapticFeedback"]
        ),
    ]
)
