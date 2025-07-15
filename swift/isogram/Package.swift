// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Isogram",
    // Add the platforms parameter here
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Isogram",
            targets: ["Isogram"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Isogram",
            dependencies: []),
        .testTarget(
            name: "IsogramTests",
            dependencies: ["Isogram"]),
    ]
)
