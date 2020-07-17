//
//  ViewController.swift
//  travelQuestAdventure
//
//  Created by Christine Bailey on 7/16/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var a51Button: UIButton!
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var descriptionStoryA51: UILabel!
    
    @IBOutlet weak var goButtonImage: UIButton!
    var userName : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        descriptionStoryA51.isHidden = true
        goButtonImage.isHidden = true
        a51Button.isHidden = true
    }
    
    @IBAction func tappedArea51Story(_ sender: UIButton) {
        descriptionStoryA51.isHidden = false
        goButtonImage.isHidden = false
        

    }
    
    @IBAction func tappedSubmitName(_ sender: UIButton) {
        if let userName = nameTextField.text {
        greetingLabel.text = "\(userName), please pick a story from below."
        }
        greetingLabel.isHidden = false
        a51Button.isHidden = false
    }
    
}

