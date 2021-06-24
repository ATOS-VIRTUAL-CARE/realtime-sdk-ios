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
            url: "https://github.com/danabrooks/RealtimeSDK/releases/download/0.3.0/RealtimeSDK-0.3.0.xcframework.zip",
            checksum: "1d741f1c63d94af4ff80805a64ada3155278e6e61561922cb6aa626bca5afca6"
        ),
    ]
)
