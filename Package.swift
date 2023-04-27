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
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .binaryTarget(
            name: "ShopliveStudioSDK",
            path: "Framework/ShopliveStudioSDK.xcframework"
        ),
        .target(
            name: "ShopliveStudioSDKTarget",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                .target(name: "ShopliveStudioSDK")
            ]
        )
    ]
)
