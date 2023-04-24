// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "atmsocial",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "atmsocial",
            targets: ["AppModule"],
            bundleIdentifier: "project.atmsocial",
            teamIdentifier: "9F53D3M6K3",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .barChart),
            accentColor: .presetColor(.yellow),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
