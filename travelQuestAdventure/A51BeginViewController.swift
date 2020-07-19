//
//  A51BeginViewController.swift
//  travelQuestAdventure
//
//  Created by Christine Bailey on 7/16/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51BeginViewController: UIViewController {

    @IBOutlet weak var welcomeNYC: UILabel!
    
    @IBOutlet weak var popNYC: UILabel!
    
    @IBOutlet weak var nycDescription: UILabel!
    
    @IBOutlet weak var nycInfo: UILabel!
    
    @IBOutlet weak var carButton: UIButton!
    
    @IBOutlet weak var truckButton: UIButton!
    var name : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        
        welcomeNYC.layer.masksToBounds = true
        welcomeNYC.layer.cornerRadius = 5
        
        popNYC.layer.masksToBounds = true
        popNYC.layer.cornerRadius = 5
        
        nycDescription.layer.masksToBounds = true
        nycDescription.layer.cornerRadius = 15
        
        nycInfo.layer.masksToBounds = true
        nycInfo.layer.cornerRadius = 15
        
        carButton.layer.masksToBounds = true
        carButton.layer.cornerRadius = 15
        
        truckButton.layer.masksToBounds = true
        truckButton.layer.cornerRadius = 15
        print(name)
        // Do any additional setup after loading the view.
    }
    func assignbackground(){
             let background = UIImage(named: "background1")
             var imageView : UIImageView!
             imageView = UIImageView(frame: view.bounds)
           imageView.contentMode =  UIView.ContentMode.scaleAspectFill
             imageView.clipsToBounds = true
             imageView.image = background
             imageView.center = view.center
             view.addSubview(imageView)
             self.view.sendSubviewToBack(imageView)
       

       }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       if segue.identifier == "sportsCarSegue" {
            let vc = segue.destination as! A51Decision2ViewController
            vc.a51Decision2InfoText = "You ran out of gas, so you must hitchhike. You come across a map and a compass. Which one would you like to take?"
            vc.a51Decision2Op1Text = "Map 🗺"
            vc.a51Decision2Op2Text = "Compass 🧭"
            vc.name = name
            
        } else if segue.identifier == "truckSegue" {
            let vc = segue.destination as! A51Decision2ViewController
            vc.a51Decision2InfoText = "You come across a local who says he knows a shortcut. If you want to take the shortcut, you must take him with you. What will you choose?"
            vc.a51Decision2Op1Text = "Stay on the path 🗺"
            vc.a51Decision2Op2Text = "Take the shortcut ⏰"
             vc.name = name
        }
    }
    

}
