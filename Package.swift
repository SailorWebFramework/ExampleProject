// swift-tools-version: 5.10
import PackageDescription
let package = Package(
    name: "<Your name here>",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "<Your name here>", targets: ["Sailor App"])
    ],
    dependencies: [
        .package(url: "https://github.com/SailorWebFramework/Sailor", branch: "releases/v0.1"),
        .package(url: "https://github.com/swiftwasm/carton", from: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "Sailor App",
            dependencies: [
                "Sailor"
            ],
            path: "Sources",
            resources: [
                // .process("Resources/")
                //🧭Compass Generated Resources?
                //⛵Sailor Generated Resources (DONT REMOVE THIS COMMENT)
//                .process("Resources/"),
//                .process("Resources/Assests/")
                //⛵End (DONT REMOVE THIS COMMENT)
            ]
        ),
    ]
)
