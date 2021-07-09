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
                   .package(url: "https://github.com/ATOS-VIRTUAL-CARE/apollo-ios", .branch("graphql-transport-ws")), 
                   .package(url: "https://github.com/ATOS-VIRTUAL-CARE/webrtc-ios", .upToNextMinor(from: "90.0.0")),
                   ],
    targets: [
        .binaryTarget(
            name: "VcsRealtimeSdk",
            url: "https://github.com/ATOS-VIRTUAL-CARE/realtime-sdk-ios/releases/download/0.5.1/VcsRealtimeSdk-0.5.1.xcframework.zip",
            checksum: "2185d02f8f764741ecab447358840488e562045369ddd53e8ced3d2f777a21c0"
        ),
    ]
)
