#Basic View Controller Containment

The first time I wrote about View Controller Containment I was a rookie of the iOS development, and I thought _this is if you want to implement your own navigation controller, but who's so stupid to do that?_. Some time has passed since then, and now I can see the benefit in terms of encapsulation, single responsibility principle, and just keeping the files small that this approach brings along. 

###What it does

View Controller Containment allows developer to add `UIViewController` instances as childs of another `UIViewController`. But if it was just that it would be crap. The cool thing is the set of methods to manage the context. Read the documentation [here](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/Reference/Reference.html//apple_ref/doc/uid/TP40006926-CH3-SW86) and [here](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/Reference/Reference.html#//apple_ref/doc/uid/TP40006926-CH3-SW88)

###Something to think about

The guys at [Build Phase](http://podcasts.thoughtbot.com/buildphase) from [thoughtbot](http://thoughtbot.com/) mentioned this technique a number of time. 

In the first issue of [objc.io](http://www.objc.io/) there's a good point on [why you **should not** use view controller containment](http://www.objc.io/issue-1/containment-view-controller.html). 