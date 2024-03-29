# NSAttributedStringBuilder

![platforms](https://img.shields.io/badge/platforms-iOS-333333.svg)
![pod](https://img.shields.io/cocoapods/v/NSAttributedStringBuilder.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Context

NSAttributedStringBuilder is a Swift micro framework that leverages Function Builders to implement syntactic sugar that lets you intuitively compose attributed strings.

Instead of writing:

```swift
let attributedString = NSMutableAttributedString(string: "Hello", attributes: [.font: UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.red])
attributedString(NSAttributedString(string: " world!", attributes: [.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.orange]))
```

You can now write:

```swift
let attributedString = NSAttributedString.composing {
    NSAttributedString(string: "Hello", attributes: [.font: UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.red])
    NSAttributedString(string: " world!", attributes: [.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.orange])
}
```

## Requirements

Xcode 11+ & Swift 5.1

## Installation

### CocoaPods

Add the following to your `Podfile`:

`pod "NSAttributedStringBuilder"`

### Carthage

Add the following to your `Cartfile`:

`github "vincent-pradeilles/NSAttributedStringBuilder"`

## Author

* Twitter: [@v_pradeilles](https://twitter.com/v_pradeilles)
