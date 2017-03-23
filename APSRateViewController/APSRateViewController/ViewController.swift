//
//  ViewController.swift
//  APSRateViewController
//
//  Created by Aishwarya Pratap Singh on 3/22/17.
//  Copyright © 2017 Aishwarya Pratap Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.blue
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        let ratingVC = APSRateViewController()
        let navigationController = UINavigationController(rootViewController: ratingVC)
        self.present(navigationController, animated: true, completion: nil)
    }

}

