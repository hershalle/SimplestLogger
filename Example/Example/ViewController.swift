//
//  ViewController.swift
//  Example
//
//  Created by Shai Balassiano on 17/02/2019.
//  Copyright © 2019 Shai Balassiano. All rights reserved.
//

import UIKit
import SimplestLogger

typealias Logger = SimplestLogger

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Logger.error(NSError(domain: "domain one", code: -1, userInfo: ["info": "infoValue"]))
        Logger.verbose("verbose - not so important")
        Logger.debug("debug - something to debug")
        Logger.info("info - a nice information")
        Logger.warning("warning - oh no, thats not be good")
    }
}
