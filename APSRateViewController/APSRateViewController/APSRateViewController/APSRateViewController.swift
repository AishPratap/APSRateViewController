//
//  APSRateViewController.swift
//  APSRateViewController
//
//  Created by Aishwarya Pratap Singh on 3/22/17.
//  Copyright © 2017 Aishwarya Pratap Singh. All rights reserved.
//

import Foundation
import UIKit

class APSRateViewController: UIViewController {
    
    
    
    @IBOutlet weak var noteView: UITextView!
    @IBOutlet weak var ratingTextLabel: UILabel!
    @IBOutlet weak var ratingSlider: APSRateSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.backgroundColor = UIColor.red
        self.customizeSlider()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func customizeSlider() {
        self.ratingSlider.customizeSlider()
        self.ratingSlider.addTarget(self, action: #selector(ratingDidChange), for:.valueChanged)
        self.ratingSlider.addTarget(self, action: #selector(ratingDidChange), for:.valueChanged)
    }
    
    func ratingDidChange(sender:AnyObject) {
        
        let rating = self.ratingSlider.value
        
        if rating < 1 {
            self.ratingTextLabel.text = "Very Bad"
        }else if rating < 2 {
            self.ratingTextLabel.text = "Bad"
        }else if rating < 3 {
            self.ratingTextLabel.text = "Average"
        }else if rating < 4 {
            self.ratingTextLabel.text = "Good"
        }else {
            self.ratingTextLabel.text = "Excellent"
        }
    }
    
    @IBAction func onSubmit(_ sender: Any) {
    }
    
}
