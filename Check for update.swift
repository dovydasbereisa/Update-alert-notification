//
//  UPDATE_IMPORT.swift
//  UPDATE_CHECKER
//
//  Created by Dovydas Bereisa on 4/3/18.
//  Copyright © 2018 Dovydas Bereisa. All rights reserved.
//



import SafariServices












public class Update_Check {
    //important changable stuff:
    
    
    
    
    static var versionOfApp = 1.0    //change this number to specify the version of your app
    
    
    
    //static var times_to_check = 1 //how many times do you whant to check for update? NO :(
    
    
    
    static var webisite_containing_current_version = "https://dovydasberei.000webhostapp.com/public.html"
    //in here the website shuld only contain the newest public version of your app
    //heres an example of what the websites source code should look like:
    //0.9
    
    
    
    static var should_check_for_update = true
    //if you don't whant to check for update change this to false
    
    
    
    static var show_changelog_as_an_option = true
    //if you don't whant the changelog item to apear change this to false
    
    
    
    static var webisite_containing_changelog = "https://dovydasberei.000webhostapp.com/electricity%20run%20change%20log.html"
    //in the websites source code do it like this
    //1. change
    //2. change
    //3. change
    //and so on
    
    
    
    static var show_how_2install_option = true
    //opens the website showing how to update the app
    //the options titile is "Show how to install?"
    
    
    
    static var webisite_containing_How2_install = "https://dovydasberei.000webhostapp.com/how%20to%20install.html"
    //this website will open in safari showing how to install the update of the app
    
    
    static var Use_diferent_View_controller = ViewController()
    
    
    //end of changable stuff
    
    
    
    
    
    
    
    
    
    //advanced changable stuff:
    
    static var update_title = ""
    // \(pm) displays webisite_containing_current_version number
    //change the update title on the 137 line of code, but i don't recomend to change it
    // How the title will apear: 1.1 Just came out
    
    static var update_messege = "New Version of Electricity Run came out,  please update to it when posible :)                                                                                                                                                                              CURENT VERSION: \(Update_Check.versionOfApp)                                                     -Admin"
    //     "\(versionOfApp)" displays versionOfApp
    
    static var change_log_popup_title = "Changelog"
    //end of advanced changable stuff
    
    
    static var safariController: SFSafariViewController?
    
    static let once: Void = {
        
        
        
        var doItOneTime = 1
        var newest_version = webisite_containing_current_version
        
        
        
        if should_check_for_update == true {
            
            let url = NSURL(string: webisite_containing_current_version)
            if url != nil {
                print("checking for update :)")
                print("Ususally in simulators this runs slower :l")
                let task = URLSession.shared.dataTask(with: url! as URL) {(data, response, error) in
                    if data != nil {
                        
                        print("checked :D, latest version: \((NSString(data: data!, encoding: String.Encoding.utf8.rawValue))!)")
                        print("current version: \(versionOfApp)")
                        
                        
                        let amount = (NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
                        
                        
                        if let amount2 = amount as String? {
                            let am = Double(amount2)
                            //print("step 1 completed")
                            if am! > versionOfApp {
                                //print("step 2 completed")
                                let pm = am!
                                //text messege popup start
                                //print("yolo2")
                                if doItOneTime > 0 {
                                    //print("yolo")
                                    let alertController = UIAlertController(title: "\(pm) Just came out", message: update_messege, preferredStyle: .alert)
                                    //print("olo3")
                                    let cancelAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
                                        //...
                                        //print("olo4")
                                    }
                                    alertController.addAction(cancelAction)
                                    //print("olo5")
                                    if show_changelog_as_an_option == true {
                                        //print("olo6")
                                        let cance2lAction = UIAlertAction(title: "Change Log", style: .default) { (action) in
                                            // here start
                                            //print("executing")
                                            let ur1l = NSURL(string: webisite_containing_changelog)
                                            if ur1l != nil {
                                                let task = URLSession.shared.dataTask(with: ur1l! as URL) {(data, response, error) in
                                                    if data != nil {
                                                        
                                                        
                                                        
                                                        
                                                        let amount = (NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
                                                        
                                                        //print("olo7")
                                                        if let amount2 = amount as String? {
                                                            //  let am = Double(amount)
                                                            //print("step 3 completed")
                                                            //     if am! > versionOfApp {
                                                            //           print("step 2 completed")
                                                            let pm = amount2
                                                            //text messege popup start
                                                            
                                                            
                                                            let alertController = UIAlertController(title: change_log_popup_title, message: "\(pm)",
                                                                //leave the \(pm) if you whant the changes to appear
                                                                preferredStyle: .alert)
                                                            //print("olo8")
                                                            let cancelAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
                                                                // ...
                                                            }
                                                            alertController.addAction(cancelAction)
                                                            if show_how_2install_option == true {
                                                                let OKAction = UIAlertAction(title: "How do i install it?", style: .default) { (action) in
                                                                    if #available(iOS 11.0, *) {
                                                                        
                                                                        let window = UIWindow(frame: UIScreen.main.bounds)
                                                                        window.rootViewController = Use_diferent_View_controller
                                                                        window.makeKeyAndVisible()
                      safariController = SFSafariViewController(url: URL(string: webisite_containing_How2_install)!)
                            window.rootViewController!.present(safariController!, animated: true, completion: nil)
                                                                        
                                                                        
                                                                    } else {
                                                                        let window = UIWindow(frame: UIScreen.main.bounds)
                                                                        window.rootViewController = Use_diferent_View_controller
                                                                        window.makeKeyAndVisible()
                                                                        safariController = SFSafariViewController(url: URL(string: webisite_containing_How2_install)!, entersReaderIfAvailable: true)
                                                                        window.rootViewController!.present(safariController!, animated: true, completion: nil)
                                                                        
                                                                    }
                                                                }
                                                                
                                                                
                                                                alertController.addAction(OKAction)
                                                            }
                                                            let window = UIWindow(frame: UIScreen.main.bounds)
                                                            window.rootViewController = Use_diferent_View_controller
                                                            window.makeKeyAndVisible()
                                                            window.rootViewController?.present(alertController, animated: true, completion: nil)
                                                            
                                                        }
                                                        
                                                        //text messege popup end
                                                        
                                                    }
                                                }
                                                
                                                
                                                task.resume()
                                                
                                                
                                            }
                                            
                                            //here end
                                        }
                                        alertController.addAction(cance2lAction)
                                    }
                                    if show_how_2install_option == true {
                                        let OKAction = UIAlertAction(title: "How do i install it?", style: .default) { (action) in
                                            if #available(iOS 11.0, *) {
                                                let window = UIWindow(frame: UIScreen.main.bounds)
                                                window.rootViewController = Use_diferent_View_controller
                                                window.makeKeyAndVisible()
                                                safariController = SFSafariViewController(url: URL(string: webisite_containing_How2_install)!)
                                                window.rootViewController!.present(safariController!, animated: true, completion: nil)
                                            } else {
                                                let window = UIWindow(frame: UIScreen.main.bounds)
                                                window.rootViewController = Use_diferent_View_controller
                                                window.makeKeyAndVisible()
                                                safariController = SFSafariViewController(url: URL(string: webisite_containing_How2_install)!, entersReaderIfAvailable: true)
                                    window.rootViewController!.present(safariController!, animated: true, completion: nil)
                                            }
                                        }
                                        
                                        
                                        alertController.addAction(OKAction)
                                    }
                                    let window = UIWindow(frame: UIScreen.main.bounds)
                                    window.rootViewController = Use_diferent_View_controller
                                    window.makeKeyAndVisible()
                                    window.rootViewController?.present(alertController, animated: true, completion: nil)
                                    
                                    if doItOneTime > 0 {
                                        doItOneTime -= 1
                                        //print("minused 1")
                                    }
                                    
                                }
                                
                                //text messege popup end
                                
                            }
                        }
                    }
                }
                task.resume()
            }
            
        }
        
    }()
    
    func hi() {
        Update_Check.once
        
    }
}


           func check_for_update() {
           
            let test = Update_Check()
            for _ in 0..<1 {
                test.hi()
            }
            
    }
            



