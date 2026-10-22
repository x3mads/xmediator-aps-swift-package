// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorAPS",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorAPS", targets: ["XMediatorAPSTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps.git", exact: "5.6.6"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.47.0")),
    ],
    targets: [
        .target(
            name: "XMediatorAPSTarget",
            dependencies: [
                .target(name: "XMediatorAPS"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps"),
            ],
            path: "XMediatorAPSTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorAPS",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorAPS/XMediatorAPS-5.6.6.0.zip",
            checksum: "732575ef9ee0afffb9e195d883c43f4dd052889c832e4bd40348af09eb200cf5"
        ),
    ]
)
