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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    func presentRatingsView(theme:UIColor){
        let ratingVC = APSRateViewController()
        ratingVC.themeColor = theme
        ratingVC.ratingTitle = "Demo"
//        let navigationController = UINavigationController(rootViewController: ratingVC)
        self.navigationController?.pushViewController(ratingVC, animated: true)
    }
    
    @IBAction func orangeTheme(_ sender: Any) {
        presentRatingsView(theme: UIColor(red: 92/255, green: 158/255, blue: 192/255, alpha: 1.0))
    }
    
    @IBAction func whiteTheme(_ sender: Any) {
        presentRatingsView(theme: UIColor(red: 204/255, green: 47/255, blue: 40/255, alpha: 1.0))
    }
    
    @IBAction func blackTheme(_ sender: Any) {
        presentRatingsView(theme: UIColor.black)
    }
    
}

