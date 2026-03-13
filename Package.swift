// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraChat",
    defaultLocalization: "en",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AgoraChat",
            targets: ["AgoraChatWrapper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/AgoraIO/AgoraInfra_iOS.git",
            .upToNextMinor(from: "1.2.0")
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        // 1️⃣ binary SDK (name must match .xcframework inside the zip)
        .binaryTarget(name: "AgoraChat", url: "https://download.agora.io/sdk/release/AgoraChat1_4_0_beta.zip", checksum: "16623c4d9cb0270a4582a74a9ef49732153d399a0b8cf87e17f4a2e86899a0d7"),

        // 2️⃣ wrapper target
        .target(
            name: "AgoraChatWrapper",
            dependencies: [
                "AgoraChat",
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        ),
    ]
)
