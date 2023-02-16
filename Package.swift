// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JazzMemoryCache",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "JazzMemoryCache",
            targets: ["JazzMemoryCache"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JazzFramework/Jazz.git", from: "0.0.8"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "JazzMemoryCache",
            dependencies: [
                .product(name: "JazzConfiguration", package: "Jazz"),
                .product(name: "JazzCore", package: "Jazz"),
                .product(name: "JazzDataAccess", package: "Jazz"),
                .product(name: "JazzDependencyInjection", package: "Jazz"),
            ]),
        .testTarget(
            name: "JazzMemoryCacheTests",
            dependencies: ["JazzMemoryCache"]),
    ]
)
