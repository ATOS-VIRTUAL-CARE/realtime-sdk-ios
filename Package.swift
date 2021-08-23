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
                   .package(url: "https://github.com/ATOS-VIRTUAL-CARE/webrtc-ios", .upToNextMinor(from: "90.0.1")),
                   ],
    targets: [
        .binaryTarget(
            name: "VcsRealtimeSdk",
            url: "https://github.com/ATOS-VIRTUAL-CARE/realtime-sdk-ios/releases/download/0.6.1/VcsRealtimeSdk-0.6.1.xcframework.zip",
            checksum: "65c1be7e9a1b0e95a275c4ac2e46d385c90f27018747ed802be5a2cb5af6b80c"
        ),
    ]
)
