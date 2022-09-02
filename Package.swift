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
            targets: ["AgoraChat"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "AgoraChat", url: "https://download.agora.io/sdk/release/AgoraChat1_0_7.xcframework.zip", checksum: "a686a455ead4d39ec87285324e40446b381400f4f9035eecda20e0f7b7bb463e"),
    ]
)
