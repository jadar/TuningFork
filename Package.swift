// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TuningFork",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TuningFork",
            targets: ["TuningFork"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/AudioKit/AudioKit", .upToNextMajor(from: "5.3.1")),
        .package(url: "https://github.com/AudioKit/SoundpipeAudioKit", .upToNextMajor(from: "5.3.1")),
        .package(url: "https://github.com/malcommac/Repeat", .upToNextMajor(from: "0.6.0"))
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TuningFork",
            dependencies: [
                .product(name: "AudioKit", package: "AudioKit"),
                .product(name: "SoundpipeAudioKit", package: "SoundpipeAudioKit"),
                .product(name: "Repeat", package: "Repeat")
            ]),
        .testTarget(
            name: "TuningForkTests",
            dependencies: ["TuningFork"]),
    ]
)
