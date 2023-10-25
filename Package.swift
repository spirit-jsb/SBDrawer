// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SBDrawer",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(name: "SBDrawer", targets: ["SBDrawer"]),
    ],
    targets: [
        .target(name: "SBDrawer", path: "Sources"),
    ],
    swiftLanguageVersions: [
        .v5,
    ]
)
