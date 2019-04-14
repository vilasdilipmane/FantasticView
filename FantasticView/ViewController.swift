//
//  ViewController.swift
//  FantasticView
//
//  Created by Vilas on 14/04/19.
//  Copyright © 2019 trivenibai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fantasticView = FantasticView(frame: self.view.bounds)
        
        self.view.addSubview(fantasticView)    }


}

