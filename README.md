# Toggler
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![CocoaPods](https://img.shields.io/cocoapods/v/Toggler.svg?style=flat)](https://cocoapods.org/pods/Toggler)
[![Platform: iOS 13+](https://img.shields.io/badge/platform-iOS%2013%2B-blue.svg?style=flat)](https://developer.apple.com/ios/)
[![Swift 6.0](https://img.shields.io/badge/Swift-6.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/younatics/Toggler/blob/master/LICENSE)

## Intoduction
💡 don't further use `isSelected` to every button. use `Toggler` to simply control your buttons
![demo](Images/Toggler.gif)
![demo](Images/Toggler2.gif)

#### Don't do like these any more
```Swift
    func buttonClicked(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            button1.isSelected = true
            button2.isSelected = false
            button3.isSelected = false
            button4.isSelected = false
            button5.isSelected = false
        case 1:
            button1.isSelected = false
            button2.isSelected = true
            button3.isSelected = false
            button4.isSelected = false
            button5.isSelected = false
        case 2:
            button1.isSelected = false
            button2.isSelected = false
            button3.isSelected = true
            button4.isSelected = false
            button5.isSelected = false
        case 3:
            button1.isSelected = false
            button2.isSelected = false
            button3.isSelected = false
            button4.isSelected = true
            button5.isSelected = false
        case 4:
            button1.isSelected = false
            button2.isSelected = false
            button3.isSelected = false
            button4.isSelected = false
            button5.isSelected = true
        default:
            break
        }
    }
```

#### Use `Toggler`
```Swift 
func buttonClicked(_ sender: UIButton) {
    toggler.on(toggle: sender)
}
```
## Requirements

`Toggler` requires Swift 6.0 and iOS 13.0 or later. It supports Swift Package Manager and CocoaPods.

## Installation

### Swift Package Manager

In Xcode, choose **File ▸ Add Package Dependencies…** and enter:

```
https://github.com/younatics/Toggler.git
```

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/younatics/Toggler.git", from: "2.0.0")
]
```

### CocoaPods

Toggler 2.0.0 is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Toggler', '2.0.0'
```

## Usage
Init with `UIButton` or `UISwitch` controls and a default index
```Swift 
var toggler = Toggler(default: 0, togglers: [button1, button2, button3, button4, button5])
```

Toggle button
```Swift
toggler.on(toggle: sender)
toggler.onAt(index: sender.tag)
```

Add more button
```Swift 
toggler.add(toggle: button6)
```

Remove button
```Swift 
toggler.remove(at: 5)
```

## References
#### Please tell me or make pull request if you use this library in your application :) 

## Author
[younatics](https://twitter.com/younatics)
<a href="http://twitter.com/younatics" target="_blank"><img alt="Twitter" src="https://img.shields.io/twitter/follow/younatics.svg?style=social&label=Follow"></a>

## License
Toggler is available under the MIT license. See the LICENSE file for more info.
