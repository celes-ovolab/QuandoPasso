// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QuandoPasso",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
			name: "QuandoPasso", targets: ["QuandoPassoLib"])
    ],
    dependencies: [
		.package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on
		.binaryTarget(
			name: "QuandoPassoLib",
			url: "https://api.github.com/repos/celes-ovolab/testSDK/releases/assets/79171950.zip",
			checksum: "43d35e03eb16d26f390670a44ffd0168c833034fd40b636d45a154872cb86001"
		)
    ]
)
