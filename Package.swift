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
            url: "https://github.com/ATOS-VIRTUAL-CARE/realtime-sdk-ios/releases/download/0.7.3/VcsRealtimeSdk-0.7.3.xcframework.zip",
            checksum: "46a453edc282193ed9e17439464bb2369f76ccaee84543258af0e669cea11d5c"
        ),
    ]
)
