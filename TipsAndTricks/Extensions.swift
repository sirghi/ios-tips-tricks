//
//  Extensions.swift
//  TipsAndTricks
//
//  Created by Sergiu Todirascu on 9/14/18.
//  Copyright © 2018 Sergiu Todirascu. All rights reserved.
//

import UIKit

extension UIViewController {

  @IBAction func dismiss() {
    self.dismiss(animated: true, completion: nil)
  }

  @IBAction func pop() {
    self.navigationController?.popViewController(animated: true)
  }

}
