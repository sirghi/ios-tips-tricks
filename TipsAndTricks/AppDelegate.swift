//
//  AppDelegate.swift
//  TipsAndTricks
//
//  Created by Sergiu Todirascu on 3/5/18.
//  Copyright © 2018 Sergiu Todirascu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    generateShortcutItems()
    var performShortcutDelegate = true

    if let _ = launchOptions?[UIApplicationLaunchOptionsKey.shortcutItem] as? UIApplicationShortcutItem {
      DispatchQueue.main.async {
        self.showAlert(with: "Launched")
      }
      performShortcutDelegate = false
    }

    return performShortcutDelegate
  }

  func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
    self.showAlert(with: "Awoken from background")
    completionHandler(true)
  }



  func generateShortcutItems() {
    let firstShortcut = UIApplicationShortcutItem(type: "1", localizedTitle: "Clock", localizedSubtitle: nil, icon: UIApplicationShortcutIcon(type: .alarm), userInfo: nil)
    let secondShortcut = UIApplicationShortcutItem(type: "2", localizedTitle: "Song", localizedSubtitle: nil, icon: UIApplicationShortcutIcon(type: .audio), userInfo: nil)
    UIApplication.shared.shortcutItems = [firstShortcut, secondShortcut]
  }

  func showAlert(with message: String) {
    let alert = UIAlertController(title: "Info", message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .destructive, handler: nil)
    alert.addAction(action)
    self.window?.rootViewController?.present(alert, animated: true, completion: nil)
  }

}
