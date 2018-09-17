//
//  ArriveHereViewController.swift
//  TipsAndTricks
//
//  Created by Sergiu Todirascu on 10/2/18.
//  Copyright © 2018 Sergiu Todirascu. All rights reserved.
//

import UIKit

class ArriveHereViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Înapoi", style: .plain, target: nil, action: nil)
  }

  @IBAction func arriveHere(_ segue: UIStoryboardSegue) {
    // Hello
  }

}
