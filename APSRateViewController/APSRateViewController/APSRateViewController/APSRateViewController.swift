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
    
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var noteView: UITextView!
    @IBOutlet weak var ratingTextLabel: UILabel!
    @IBOutlet weak var ratingSlider: APSRateSlider!
    
    var ratingDiscriptionDictionary:[String]?
    var themeColor:UIColor! = UIColor.white
    var ratingTitle:String! = "Rating"
    var defaultRating:Float! = 3.5
    
    let borderColor = UIColor(red:233/255, green:233/255, blue:233/255, alpha:1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.backgroundColor = UIColor.red
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(sliderTapped))
        self.ratingSlider.addGestureRecognizer(tapGesture)
        setupView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupView(){
        self.title = ratingTitle
        self.setupTheme()
        self.customizeSlider()
        self.customizeTextView()
    }
    
    func setupTheme(){
        if themeColor == UIColor.black {
            applyDarkTheme()
        }else if themeColor == UIColor.white {
            applyThemeWithColor(theme:UIColor.black)
        }else{
            applyThemeWithColor(theme:themeColor)
        }
    }
    
    func applyDarkTheme(){
//        self.noteView.layer.borderColor = UIColor.lightGray.cgColor
//        self.submitBtn.backgroundColor = theme
//        self.submitBtn.titleLabel?.textColor = UIColor.white
//        self.ratingSlider.minimumTrackTintColor = theme
    }
    
    func applyThemeWithColor(theme:UIColor){
        self.navigationController?.navigationBar.barTintColor = theme
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.noteView.layer.borderColor = borderColor.cgColor
        self.submitBtn.backgroundColor = theme
        self.submitBtn.setTitleColor(UIColor.white, for:.normal)
        self.ratingSlider.minimumTrackTintColor = theme
        self.submitBtn.layer.cornerRadius = 5.0
    }
    
    func customizeTextView(){
        self.noteView.layer.borderWidth = 1.0
        self.noteView.layer.cornerRadius = 5.0
        self.noteView.text = ""
    }
    
    func customizeSlider() {
        self.ratingSlider.customizeSlider()
        self.ratingSlider.value = defaultRating
        self.ratingSlider.addTarget(self, action: #selector(ratingDidChange), for:.valueChanged)
        updateLabelForRating(rating: defaultRating)
    }
    
    func ratingDidChange(sender:AnyObject) {
        
        let rating = self.ratingSlider.value
        
        updateLabelForRating(rating: rating)
    }
    
    func updateLabelForRating(rating:Float){
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
    
    func sliderTapped(tapGestureRecognizer:UIGestureRecognizer){
        let positionInView = tapGestureRecognizer.location(in:self.view)
        let sliderPosition = self.ratingSlider.frame
        
        let rating = (positionInView.x - sliderPosition.origin.x)*CGFloat(self.ratingSlider.maximumValue)/self.ratingSlider.frame.size.width
        
        self.ratingSlider.setValue(Float(rating), animated: true)
        
        updateLabelForRating(rating:Float(rating))
    }
    
    @IBAction func onSubmit(_ sender: Any) {
    
    }
    
}
