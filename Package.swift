// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShopliveStudioSDK",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "ShopliveStudioSDK",type: .static,  targets: ["ShopliveStudioSDKTarget"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(
            name: "ShopliveStudioSDK",
            path: "Framework/ShopliveStudioSDK.xcframework"
        ),
        .target(
            name: "ShopliveStudioSDKTarget",
            dependencies: [
                .target(name: "ShopliveStudioSDK")
            ]
        )
    ]
)
