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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/facebook-adapter/5.1.0/ISFacebookAdapter5.1.0.zip",
      checksum: "e8bedf8883521d08d07e12f332f376724c577d92577b16762339905354a5ac2b"
    )
  ]
)
