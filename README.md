# :mega:Update-alert-notification:mega:

One of the siplest update notification classes
<kbd>Swift 3.2 & up</kbd>   <kbd>IOS 9 & up</kbd>   <kbd>version: 0.1</kbd>

[![Build Status](https://travis-ci.org/dovydasbereisa/Update-alert-notification.svg?branch=master)](https://travis-ci.org/dovydasbereisa/Update-alert-notification)

<img src="https://camo.githubusercontent.com/c0e54a826d90da52e4ee70c63fef3ee61b3ffbd5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c6963656e73652d4d49542d6c69676874677265792e737667" alt="GitHub license" data-canonical-src="https://img.shields.io/badge/license-MIT-lightgrey.svg" style="max-width:100%;">

<img src="https://camo.githubusercontent.com/ec47502cbe97a29725c6e90256d27a38c594ca43/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c616e67756167652d7377696674253230342e302d627269676874677265656e2e737667" alt="Swift Version" data-canonical-src="https://img.shields.io/badge/language-swift%204.0-brightgreen.svg" style="max-width:100%;">

<img src="https://camo.githubusercontent.com/ca32f433df5400f5e697a5a94b99871e3a612a24/68747470733a2f2f696d672e736869656c64732e696f2f636f636f61706f64732f702f4661636554696d65566965772e7376673f7374796c653d666c6174" alt="Platform" data-canonical-src="https://img.shields.io/cocoapods/p/FaceTimeView.svg?style=flat" style="max-width:100%;">

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

