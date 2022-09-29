// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QuandoPasso",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
			name: "QuandoPasso", targets: ["QuandoPassoDependencies", "QuandoPassoLib"])
    ],
    dependencies: [
		.package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on
		.target(
			name: "QuandoPassoDependencies",
			dependencies: ["Alamofire", "QuandoPassoLib"]
		),
		.binaryTarget(
			name: "QuandoPassoLib",
			url: "https://api.github.com/repos/celes-ovolab/testSDK/releases/assets/79402930.zip",
			checksum: "59c485fc882ba95345eb31b9f315c638bab79ba7b9a157fa776105ffcefd5ae7"
		)
    ]
)
