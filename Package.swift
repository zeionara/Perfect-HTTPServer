// swift-tools-version:5.3
// Generated automatically by Perfect Assistant 2
// Date: 2018-03-28 18:54:02 +0000
import PackageDescription

let package = Package(
	name: "PerfectHTTPServer",
	products: [
		.library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
	],
	dependencies: [
		.package(name: "PerfectNet", url: "https://github.com/zeionara/Perfect-Net", .branch("master")),
		.package(name: "PerfectHTTP", url: "https://github.com/zeionara/Perfect-HTTP", .branch("master")),
		.package(name: "PerfectCZlib", url: "https://github.com/PerfectlySoft/Perfect-CZlib-src", from: "0.0.0")
	],
	targets: [
		.target(name: "PerfectCHTTPParser", dependencies: []),
		.target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", "PerfectNet", "PerfectHTTP", "PerfectCZlib"]),
		.testTarget(name: "PerfectHTTPServerTests", dependencies: ["PerfectHTTPServer"])
	]
)
