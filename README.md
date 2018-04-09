# :mega:Update-alert-notification:mega:

One of the siplest update notification classes
<kbd>Swift 3.2 & up</kbd>   <kbd>IOS 9 & up</kbd>   <kbd>version: 0.1</kbd>

<p>
  
  <a href="https://travis-ci.org/dovydasbereisa/Update-alert-notification">
<img border="0" alt="Build Status" src="https://travis-ci.org/dovydasbereisa/Update-alert-notification.svg?branch=master">
</a>

<a href="https://opensource.org/licenses/MIT">
<img border="0" alt="LICENSE" src="https://img.shields.io/cocoapods/l/AFNetworking.svg">
</a>
  
<a href="https://en.wikipedia.org/wiki/Swift_(programming_language)">
<img border="0" alt="SWIFT" src="https://img.shields.io/badge/Swift-3.2%20%26%20up-brightgreen.svg">
</a>
  
<a href="https://lt.wikipedia.org/wiki/IOS">
<img border="0" alt="PLATFORM" src="https://img.shields.io/badge/IOS-9%20%26%20up-yellow.svg">
</a>

</p>


![Example](https://github.com/dovydasbereisa/Update-notification/blob/master/Example.png?raw=true)

# What you will need:
- A website which will contain the latest version of your app in plain text[(I Use 000webhost)](https://www.000webhost.com/)
  - [Example](https://dovydasberei.000webhostapp.com/public.html) 
- (Optional) A website which will cotain how to install your app 
  - [Example](https://dovydasberei.000webhostapp.com/how%20to%20install.html) 
- (Optional) A website which will cotain your ChangeLog in plain text
  - [Example](https://dovydasberei.000webhostapp.com/electricity%20run%20change%20log.html) 
- Swift 3.2 or later
- Xcode 
  
  
# How to install Update-notification:
1. Download *"Check for update.swift"* [Download project files](https://github.com/dovydasbereisa/Update-notification/archive/master.zip)
2. Drag It to your Project
3. Use <kbd>cmd⌘</kbd> + <kbd>B</kbd> to build the project

# How to use Update-notification

``` Swift
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //basics:
        Update_Check.versionOfApp = 0.2
        
        Update_Check.webisite_containing_latest_version = "https://dovydasberei.000webhostapp.com/public.html"
        
        check_for_update()
        
        
        // changable stuff:
        Update_Check.should_check_for_update = true
        
        Update_Check.show_changelog_as_an_option = true
        
        Update_Check.webisite_containing_changelog = "https://dovydasberei.000webhostapp.com/electricity%20run%20change%20log.html"
        
        Update_Check.show_how_2install_option = true
        
        Update_Check.webisite_containing_How2_install = "https://dovydasberei.000webhostapp.com/how%20to%20install.html"
        
        Update_Check.Use_diferent_View_controller = ViewController()
        
        Update_Check.update_messege = "New Version of Electricity Run came out,  please update to it when posible :)                                                                                                                                                                              CURENT VERSION: \(Update_Check.versionOfApp)                                                     -Admin"
        //     "\(versionOfApp)" displays versionOfApp
        
        Update_Check.update_title = ""
        // \(pm) displays webisite_containing_current_version number
        //change the update title on the 137 line of code, but i don't recomend to change it
        // How the title will apear: 1.1 Just came out
        
        Update_Check.change_log_popup_title = "Changelog"
    }
```

# Upcoming features

- [x] Pubished the app
- [ ] IOS 8 Support
- [ ] CocoaPods support
- [ ] Carthage support
- [ ] add a skip version button

# A Couple of Pointers:
1. More information of what every command does will be listed in the *Check for update.swift* file

2. If you use a different View controller where the notification will appear then, don't forget to do `Update_Check.Use_diferent_View_controller = YourViewController()`, the default is ViewController()

3. Every command is prefilled, so you can just paste `check_for_update()` in your `viewDidLoad()` to test everything out

# Contact:
contact me if you find a problem or if you are a developer who whant's to chat :D

Email: dovydasbereisa@gmail.com

Twitter: [@dovydasbere](https://twitter.com/dovydasbere)

# License


<img alt="MIT License" src="https://github.com/dovydasbereisa/Update-notification/blob/master/License.png" width="60em" height="auto/" style="max-width:100%;">

[This project](https://github.com/dovydasbereisa/Update-notification) is licensed under [MIT License](https://opensource.org/licenses/MIT)

