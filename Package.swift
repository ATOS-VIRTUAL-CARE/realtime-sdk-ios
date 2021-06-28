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
                   .package(url: "https://github.com/ATOS-VIRTUAL-CARE/apollo-ios", .branch("graphql-transport-ws")), 
                   .package(url: "https://github.com/ATOS-VIRTUAL-CARE/webrtc-ios", .upToNextMinor(from: "90.0.0")),
                   ],
    targets: [
        .binaryTarget(
            name: "RealtimeSDK",
            url: "https://github.com/ATOS-VIRTUAL-CARE/realtime-sdk-ios/releases/download/0.4.1/RealtimeSDK-0.4.1.xcframework.zip",
            checksum: "e64aac4f7d8f0c97c6cecf5eed0ebbfa480871a9b5ca8ec58753cf1f00ebc2ea"
        ),
    ]
)
