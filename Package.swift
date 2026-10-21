// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Facebook-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "FacebookAdapter", targets: ["FacebookAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/facebook/FBAudienceNetwork", exact: "6.22.1"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "FacebookAdapter",
      dependencies: [
        "FacebookAdapterSDK",
        .product(name: "FBAudienceNetwork", package: "FBAudienceNetwork"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "FacebookAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/facebook-adapter/5.6.0/ISFacebookAdapter5.6.0.zip",
      checksum: "071eaac36586fb9e81065ae9206bbd5ff1248b3403b5fd1a22690b03ef518867"
    )
  ]
)
