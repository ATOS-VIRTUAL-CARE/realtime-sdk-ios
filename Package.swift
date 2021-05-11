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
            checksum: "f1997d2cf12fedc83342c880a4ef4ffc06aa1dc1997222eb723157ade8b9b68d"
        ),
    ]
)
