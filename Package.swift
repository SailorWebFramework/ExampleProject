// swift-tools-version: 5.9
import PackageDescription
let package = Package(
    name: "YOURNAME",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "YOURNAME", targets: ["SailorApp"])
    ],
    dependencies: [
        .package(url: "https://github.com/SailorWebFramework/Sailor", branch: "releases/v0.1"),
        .package(url: "https://github.com/swiftwasm/carton", from: "1.0.1")
    ],
    targets: [
        .executableTarget(
            name: "SailorApp",
            dependencies: [
                "Sailor"
            ],
            path: "Sources",
            resources: [
//                 .process("Resources/")
                 .process("Resources/main.css"),
                 .process("Resources/favicon.ico")
                //🧭Compass Generated Resources?
                //⛵Sailor Generated Resources (DONT REMOVE THIS COMMENT)
//                .process("Resources/"),
//                .process("Resources/Assests/")
                //⛵End (DONT REMOVE THIS COMMENT)
            ]
        ),
    ]
)
