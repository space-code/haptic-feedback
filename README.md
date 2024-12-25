![HapticFeedback: Describes various categories of tactile sensations](https://raw.githubusercontent.com/space-code/haptic-feedback/main/Resources/haptic-feedback.png)

<h1 align="center" style="margin-top: 0px;">haptic-feedback</h1>

<p align="center">
<a href="https://github.com/space-code/haptic-feedback/blob/main/LICENSE"><img alt="License" src="https://img.shields.io/github/license/space-code/haptic-feedback?style=flat"></a> 
<a href="https://swiftpackageindex.com/space-code/haptic-feedback"><img alt="Swift Compatibility" src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fspace-code%2Fhaptic-feedback%2Fbadge%3Ftype%3Dswift-versions"/></a> 
<a href="https://swiftpackageindex.com/space-code/haptic-feedback"><img alt="Platform Compatibility" src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fspace-code%2Fhaptic-feedback%2Fbadge%3Ftype%3Dplatforms"/></a> 
<a href="https://github.com/space-code/haptic-feedback"><img alt="CI" src="https://github.com/space-code/haptic-feedback/actions/workflows/ci.yml/badge.svg?branch=main"></a>
<a href="https://github.com/apple/swift-package-manager" alt="haptic-feedback on Swift Package Manager" title="haptic-feedback on Swift Package Manager"><img src="https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg" /></a>
</p>

## Description
`haptic-feedback` defines different types of haptic feedback.

- [Usage](#usage)
- [Requirements](#requirements)
- [Installation](#installation)
- [Communication](#communication)
- [Contributing](#contributing)
- [Author](#author)
- [License](#license)

## Usage

```swift
import HapticFeedback

// Generates a heavy notification feedback
HapticFeedback.notification(.heavy).generate()
```

## Requirements
- iOS 13.0+
- Xcode 14.0
- Swift 5.7

## Installation
### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but `haptic-feedback` does support its use on supported platforms.

Once you have your Swift package set up, adding `haptic-feedback` as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/space-code/haptic-feedback.git", .upToNextMajor(from: "1.0.0"))
]
```

## Communication
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Contributing
Bootstrapping development environment

```
make bootstrap
```

Please feel free to help out with this project! If you see something that could be made better or want a new feature, open up an issue or send a Pull Request!

## Author
Nikita Vasilev, nv3212@gmail.com

## License
haptic-feedback is available under the MIT license. See the LICENSE file for more info.
