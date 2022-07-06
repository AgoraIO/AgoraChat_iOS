// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraChat_iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AgoraChat_iOS",
            targets: ["AgoraChat_iOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "AgoraChat_iOS", url: "https://download.agora.io/swiftpm/Agora_Chat_iOS/1.0.6/AgoraChat.xcframework.zip", checksum: "ec0d9c92453b4927d344cff35a412c70028fda324d701d933f0ae27f7e935294"),
    ]
)
