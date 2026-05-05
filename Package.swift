// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "tidal-store-index-runner",
    products: [.executable(name: "tidal-store-index-runner", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
