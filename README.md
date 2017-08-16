# Pre-work - TipCalculator

TipCalculator is a tip calculator application for iOS.

Submitted by: Nanxi Kang

Time spent: 2 hours spent in total

## User Stories

The following **required** functionality is complete:

* [ X ] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [ X ] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ X ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ X ] List anything else that you can get done to improve the app functionality!
* supports customized tips to be set

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://github.com/knx1029/TipCalculator/blob/master/Demo.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** 
Outlets are variables in swift code to refer to a UI component. Outlets are just implemented as object references to the actual component objects.
Actions are functions in swift code to handle an event happened to a UI component. Actions are registered functions (a.k.a., listeners) to the component objects.

Outlets

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:**
A strong reference cycle for closures is caused by 
1) In the definition of a class, one property is referencing a closure
2) The referenced closure uses another property of the class
When both happen, the class holds a strong reference to the closure and the closure holds a strong reference to the class. Hence, the cycle forms.


## License

    Copyright Nanxi Kang 

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.