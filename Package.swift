// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Facebook-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "FacebookAdapter", targets: ["FacebookAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/facebook/FBAudienceNetwork", exact: "6.21.1"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/facebook-adapter/5.3.0/ISFacebookAdapter5.3.0.zip",
      checksum: "4868fc57078eebcf197a7e2ba58f13e2fcb0f7879b2e609783885f36d89f9970"
    )
  ]
)
