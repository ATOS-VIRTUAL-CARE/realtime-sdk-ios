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
            url: "https://github.com/danabrooks/RealtimeSDK/releases/download/0.2.0/RealtimeSDK-0.2.0.xcframework.zip",
            checksum: "b0a5f2963e82b237a759d11661e7222eb11fb454b6330f3c885d9e9ea3b60ad8"
        ),
    ]
)
