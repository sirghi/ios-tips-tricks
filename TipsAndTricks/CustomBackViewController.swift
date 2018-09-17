//
//  CustomBackViewController.swift
//  TipsAndTricks
//
//  Created by Sergiu Todirascu on 9/14/18.
//  Copyright © 2018 Sergiu Todirascu. All rights reserved.
//

import UIKit

class CustomBackViewController: UIViewController {

  @IBOutlet var customButtons: [UIButton]!
  var leftItem: UIBarButtonItem?

  override func viewDidLoad() {
    super.viewDidLoad()
    self.leftItem = self.navigationItem.leftBarButtonItem
  }

  @IBAction func changeBackButtonStyle(_ sender: UIButton) {
    switch sender.tag {

    case 1: // no back
      self.navigationItem.leftBarButtonItem = self.leftItem
      self.navigationItem.leftItemsSupplementBackButton = false

    case 2: // simple back
      self.navigationItem.leftBarButtonItem = nil

    case 3: // Supplement
      self.navigationItem.leftBarButtonItem = self.leftItem
      self.navigationItem.leftItemsSupplementBackButton = true

    default:
      break
    }

    let barAppearance =
      UINavigationBar.appearance(whenContainedInInstancesOf: [CustomBackNavViewController.self])

    if sender.tag == 4 {
      let backButtonBackgroundImage = #imageLiteral(resourceName: "bird")

      
      barAppearance.backIndicatorImage = backButtonBackgroundImage
      barAppearance.backIndicatorTransitionMaskImage = backButtonBackgroundImage

    } else {
      barAppearance.backIndicatorImage = nil
      barAppearance.backIndicatorTransitionMaskImage = nil
    }
  }

}
