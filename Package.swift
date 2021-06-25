// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RealtimeSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "RealtimeSDK",
            targets: ["RealtimeSDK"]),
    ],
    dependencies: [ 
                   .package(url: "https://github.com/phanikavi/apollo-ios", .upToNextMinor(from: "0.43.2")), 
                   .package(url: "https://github.com/phanikavi/WebRTC", .upToNextMinor(from: "90.0.0")),
                   ],
    targets: [
        .binaryTarget(
            name: "RealtimeSDK",
            url: "https://github.com/danabrooks/RealtimeSDK/releases/download/0.4.0/RealtimeSDK-0.4.0.xcframework.zip",
            checksum: "bac7b85e63c62be9d7e6fb32497595429ace2882b9624e30a71d90c8cbbcab8d"
        ),
    ]
)
