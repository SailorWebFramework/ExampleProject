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
//        .package(path: "../Sailor"),
        .package(url: "https://github.com/swiftwasm/carton", from: "1.0.3"),
        .package(url: "https://github.com/SailorWebFramework/Sailor", from: "0.2.0")

    ],
    targets: [
        .executableTarget(
            name: "ExampleProject",
            dependencies: [
                "Sailor"
            ],
            path: "Sources",
            resources: [
                .process("Resources/favicon.ico")
            ]
        ),
    ]
)
