// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Facebook-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "FacebookAdapter", targets: ["FacebookAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/facebook/FBAudienceNetwork", exact: "6.21.0"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "FacebookAdapter",
      dependencies: [
        "FacebookAdapterSDK",
        .product(name: "FBAudienceNetwork", package: "FBAudienceNetwork"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "FacebookAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/facebook-adapter/5.2.0/ISFacebookAdapter5.2.0.zip",
      checksum: "4be4163f8f6a07a30eb215c030dc0d940898317697243ff3a19f928c8a8d59e6"
    )
  ]
)
