// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwiftSMTP",
    products: [
        .library(
            name: "SwiftSMTP",
            targets: ["SwiftSMTP"]),
        ],
    dependencies: [
        .package(url: "https://github.com/Kitura/BlueSocket.git", from: "2.0.2"),
        .package(url: "https://github.com/Kitura/BlueSSLService.git", from: "2.0.1"),
        .package(url: "https://github.com/Kitura/BlueCryptor.git", from: "2.0.1"),
        .package(url: "https://github.com/Kitura/LoggerAPI.git", from: "2.0.0"),
        ],
    targets: [
        .target(
            name: "SwiftSMTP",
            dependencies: ["Socket", "SSLService", "Cryptor", "LoggerAPI"]),
        .testTarget(
            name: "SwiftSMTPTests",
            dependencies: ["SwiftSMTP"]),
        ]
)
