// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShopliveStudioSDK",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "ShopliveStudioSDK", targets: ["ShopliveStudioSDKTarget"]),
    ],
    dependencies: [
        .package(name: "PanModal", url: "https://github.com/slackhq/PanModal.git", .upToNextMajor(from: "1.0.0")),
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
        .package(name: "SnapKit", url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "ShopliveStudioSDK",
            path: "Framework/ShopliveStudioSDK.xcframework"
        ),
        .target(
            name: "ShopliveStudioSDKTarget",
            dependencies: [
                .target(name: "ShopliveStudioSDK"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "PanModal", package: "PanModal"),
                .product(name: "SnapKit", package: "SnapKit")
            ]
        )
    ]
)
