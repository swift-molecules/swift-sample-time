// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-sample-time",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(
            name: "Sample Time",
            targets: ["Sample Time"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-atoms/swift-sample.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-time.git",
            branch: "main"
        ),
    ],
    targets: [
        .target(
            name: "Sample Time",
            dependencies: [
                .product(name: "Sample", package: "swift-sample"),
                .product(name: "Time", package: "swift-time"),
            ]
        ),
        .testTarget(
            name: "Sample Time Tests",
            dependencies: ["Sample Time"],
            path: "Tests/Sample Time Tests"
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("Lifetimes"),
        .enableUpcomingFeature("InferIsolatedConformances"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
