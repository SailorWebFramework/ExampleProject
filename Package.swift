// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ExampleProject",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "ExampleProject", targets: ["ExampleProject"])
    ],
    dependencies: [
        .package(url: "https://github.com/swiftwasm/carton", from: "1.0.3"),
        .package(url: "https://github.com/SailorWebFramework/Sailor", from: "0.2.1"),
        .package(url: "https://github.com/SailorWebFramework/Navigator", from: "0.1.0")
    ],
    targets: [
        .executableTarget(
            name: "ExampleProject",
            dependencies: [
                "Sailor",
                "Navigator"
            ],
            path: "Sources",
            resources: [
                .process("Resources/favicon.ico")
            ]
        ),
    ]
)
