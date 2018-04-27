# SAGDPRKisMinor

[![CI Status](https://img.shields.io/travis/GuilhermeMota93/SAGDPRKisMinor.svg?style=flat)](https://travis-ci.org/GuilhermeMota93/SAGDPRKisMinor)
[![Version](https://img.shields.io/cocoapods/v/SAGDPRKisMinor.svg?style=flat)](https://cocoapods.org/pods/SAGDPRKisMinor)
[![License](https://img.shields.io/cocoapods/l/SAGDPRKisMinor.svg?style=flat)](https://cocoapods.org/pods/SAGDPRKisMinor)
[![Platform](https://img.shields.io/cocoapods/p/SAGDPRKisMinor.svg?style=flat)](https://cocoapods.org/pods/SAGDPRKisMinor)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SAGDPRKisMinor is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SAGDPRKisMinor'
```

## Author

GuilhermeMota93, guilherme.mota@superawesome.tv

## License

SAGDPRKisMinor is available under the MIT license. See the LICENSE file for more info.

##How to add to another project

Podfile of project where we want to use it

- dependency on Cocoa Pods Master repo Github
	source 'https://github.com/CocoaPods/Specs.git'
- dependency on our own private pod specs repo - this holds refs to our existent and future Podspecs
	source 'https://github.com/SuperAwesomeLTD/sa-private-pods-specs-ios.git' 

Then add the actual PRIVATE pod to podspec of the project we want to use on:
s.dependency ’SAGDPRKisMinor’, '1.0.0'

An Example project:
This project is the one depending on the private pod - podfile and podspec of this on
https://github.com/SuperAwesomeLTD/sa-mobile-fastlane-test-two-ios

This is the actual PRIVATE one
https://github.com/SuperAwesomeLTD/sa-mobile-fastlane-test-ios