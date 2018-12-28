//
//  ViewController.swift
//  SimplestLogger
//
//  Created by Shai Balassiano on 28/12/2018.
//  Copyright © 2018 Shai Balassiano. All rights reserved.
//

import UIKit

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

