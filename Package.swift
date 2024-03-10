// swift-tools-version: 5.9
import PackageDescription
let package = Package(
    name: "<Your name here>",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "<Your name here>", targets: ["Website"])
    ],
    dependencies: [
        .package(url: "https://github.com/SailorWebFramework/Sailor", branch: "releases/v0.1"),
        .package(url: "https://github.com/swiftwasm/carton", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "Website",
            dependencies: [
                "Sailor"
            ],
            path: "src",
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
