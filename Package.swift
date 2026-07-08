// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Toggler",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Toggler", targets: ["Toggler"])
    ],
    targets: [
        .target(
            name: "Toggler",
            path: "Toggler",
            exclude: [
                "Toggler.h",
                "Info.plist"
            ],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "TogglerTests",
            dependencies: ["Toggler"],
            path: "Tests/TogglerTests",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        )
    ]
)
