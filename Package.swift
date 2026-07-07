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
            .upToNextMinor(from: "1.3.0")
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "AgoraChat", url: "https://download.agora.io/sdk/release/AgoraChat1_4_0.zip", checksum: "e2f202dfe90cd786c0cb2d425a9504b7c3863beaa25702131b50396439c0f79e"),

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
