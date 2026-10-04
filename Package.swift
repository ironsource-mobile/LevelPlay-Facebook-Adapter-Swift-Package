// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Facebook-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "FacebookAdapter", targets: ["FacebookAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/facebook/FBAudienceNetwork", exact: "6.22.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/facebook-adapter/5.5.0/ISFacebookAdapter5.5.0.zip",
      checksum: "6f44a0456a7302e4bd07eeae78e0518822d03f6b91aeb6da01d7e3eada193a86"
    )
  ]
)
