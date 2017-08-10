# Toggler
[![Version](https://img.shields.io/cocoapods/v/Toggler.svg?style=flat)](http://cocoapods.org/pods/Toggler)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/younatics/Toggler/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/Toggler.svg?style=flat)](http://cocoapods.org/pods/Toggler)
[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)

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

`Toggler` is written in Swift 3. Compatible with iOS 8.0+

## Installation

### Cocoapods

Toggler is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Toggler'
```
### Carthage
```
github "younatics/Toggler"
```

## Usage
Init with `UIButton` or `UISwtich` and default index
```Swift 
toggler = Toggler(default: 0, togglers: [button1, button2, button3, button4, button5])
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
[younatics 🇰🇷](http://younatics.github.io)

## License
Toggler is available under the MIT license. See the LICENSE file for more info.
