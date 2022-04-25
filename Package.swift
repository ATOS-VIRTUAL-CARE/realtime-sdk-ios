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
            url: "https://github.com/ATOS-VIRTUAL-CARE/realtime-sdk-ios/releases/download/0.9.1/VcsRealtimeSdk-0.9.1.xcframework.zip",
            checksum: "a4de078a2432365e335b2c15a29fff8f638d358c5d4f9d0bf432a3ff5bbb93d7"
        ),
    ]
)
