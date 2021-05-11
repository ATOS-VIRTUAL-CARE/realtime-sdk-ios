// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RealtimeSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "RealtimeSDK",
            targets: ["RealtimeSDK"]),
    ],
    dependencies: [ 
                   .package(url: "https://github.com/phanikavi/apollo-ios", .upToNextMinor(from: "0.43.2")), 
                   .package(url: "https://github.com/statsel/WebRTC", .upToNextMinor(from: "89.0.0")), 
                   ],
    targets: [
        .binaryTarget(
            name: "RealtimeSDK",
            url: "https://github.com/danabrooks/RealtimeSDK/releases/download/0.1.0/RealtimeSDK-0.1.0.xcframework.zip",
            checksum: "4d8bcffd6c084d4dac0e54543fe2c4504b8ca5f55fd388ba79f2c1d1f444f2bf"
        ),
    ]
)
