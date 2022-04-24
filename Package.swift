// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "VcsRealtimeSdk",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "VcsRealtimeSdk",
            targets: ["VcsRealtimeSdk"]),
    ],
    dependencies: [ 
                   .package(url: "https://github.com/ATOS-VIRTUAL-CARE/webrtc-ios", .upToNextMinor(from: "98.0.0")),
                   ],
    targets: [
        .binaryTarget(
            name: "VcsRealtimeSdk",
            url: "/realtime-sdk-ios/releases/download/0.9.0/VcsRealtimeSdk-0.9.0.xcframework.zip",
            checksum: "197922a6d30f9f901c8a6ab121bbd20076187ee0a2c50676230c2263bd831d94"
        ),
    ]
)
