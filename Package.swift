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
            url: "https://github.com/ATOS-VIRTUAL-CARE/realtime-sdk-ios/releases/download/0.7.4/VcsRealtimeSdk-0.7.4.xcframework.zip",
            checksum: "d2b4d780236cdd4b7b1be3401834b1c4e4e048d5bb73dbe885325d28ab3fdd1e"
        ),
    ]
)
