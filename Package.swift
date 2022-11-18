// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "Lingo",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "Lingo", targets: ["Lingo"])
    ],
    targets: [
        .target(name: "Lingo"),
        .testTarget(name: "LingoTests", dependencies: ["Lingo"])
    ]
)
