// swift-tools-version:4.1
// Generated automatically by Perfect Assistant 2
// Date: 2018-03-28 18:54:02 +0000
import PackageDescription

let package = Package(
	name: "PerfectHTTPServer",
	products: [
		.library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
	],
	dependencies: [
		.package(name: "PerfectNet", url: "https://github.com/PerfectlySoft/Perfect-Net", from: "3.1.2"),
		.package(name: "PerfectHTTP", url: "https://github.com/PerfectlySoft/Perfect-HTTP", from: "3.0.12"),
		.package(name: "Perfect-CZlib-src", url: "https://github.com/PerfectlySoft/Perfect-CZlib-src", from: "0.0.0")
	],
	targets: [
		.target(name: "PerfectCHTTPParser", dependencies: []),
		.target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", "PerfectNet", "PerfectHTTP", "PerfectCZlib"]),
		.testTarget(name: "PerfectHTTPServerTests", dependencies: ["PerfectHTTPServer"])
	]
)
