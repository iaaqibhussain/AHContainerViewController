# AHContainerViewController


[![Version](https://img.shields.io/cocoapods/v/AHContainerViewController.svg?style=flat)](http://cocoapods.org/pods/AHContainerViewController)
[![License](https://img.shields.io/cocoapods/l/AHContainerViewController.svg?style=flat)](http://cocoapods.org/pods/AHContainerViewController)
[![Platform](https://img.shields.io/cocoapods/p/AHContainerViewController.svg?style=flat)](http://cocoapods.org/pods/AHContainerViewController)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

AHContainerViewController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AHContainerViewController"
```

## Setup 
After installing the pod in your project or adding both of the classes i.e. AHContainerViewController and AHEmptySegue. Drag a Container View Controller in your project and from identity inspector select the view attached to it and set its class as AHContainerViewController.

![alt tag](https://github.com/iaaqib/AHContainerViewController/blob/master/Screenshots/Screen%20Shot%202017-01-29%20at%207.26.35%20pm.png)

</br>

Now select the segue attached to the Container View Controller and add an identifier.

![alt tag](https://github.com/iaaqib/AHContainerViewController/blob/master/Screenshots/Screen%20Shot%202017-01-29%20at%207.27.20%20pm.png)

</br>

Attach ViewControllers to the Container View Controller and set the segue's custom class to AHEmptySegue.

![alt tag](https://github.com/iaaqib/AHContainerViewController/blob/master/Screenshots/Screen%20Shot%202017-01-29%20at%207.27.59%20pm.png)

</br>

Finally give the identifier of the ViewController you want to show when the Container View first loads.


![alt tag](https://github.com/iaaqib/AHContainerViewController/blob/master/Screenshots/Screen%20Shot%202017-01-29%20at%207.28.27%20pm.png)

</br>

## Usage 

Method <code>segueIdentifierReceivedFromParent</code> of class AHContainerViewController can be used to manipulate between the attached View Controllers by passing in the respective identifiers.

Property <code>currentViewController</code> can be used anytime to know which View Controller is currently on the front and can further be used to get/pass data from/to attached View Controllers.  
</br>
## Using with Swift

In your <code>Bridging-Header.h</code> file add:
<pre>#import <&zwj;AHContainerViewController/AHContainerViewController.h&zwj;> </pre>
Don't forget to <code>import AHContainerViewController</code> in the class where using it.

## Author

Aaqib Hussain, iaaqibhussain@outlook.com

## License

AHContainerViewController is available under the MIT license. See the LICENSE file for more info.
