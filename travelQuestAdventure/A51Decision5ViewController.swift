//
//  A51Decision5ViewController.swift
//  travelQuestAdventure
//
//  Created by Christine Bailey on 7/16/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision5ViewController: UIViewController {
    @IBOutlet weak var welcomeArea51: UILabel!
    
    @IBOutlet weak var popArea51: UILabel!
    
    @IBOutlet weak var infoArea51: UILabel!
    
    @IBOutlet weak var op1Area51: UIButton!
    
    @IBOutlet weak var op2Area51: UIButton!
    var a51Area51Text : String!
    var a51Area51Op1Text : String!
    var a51Area51Op2Text : String!
    var name : String!
     var point5 : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
            welcomeArea51.layer.masksToBounds = true
            welcomeArea51.layer.cornerRadius = 5
            
            popArea51.layer.masksToBounds = true
            popArea51.layer.cornerRadius = 5
            
            infoArea51.layer.masksToBounds = true
            infoArea51.layer.cornerRadius = 15
            
            op1Area51.layer.masksToBounds = true
            op1Area51.layer.cornerRadius = 15
            
            op2Area51.layer.masksToBounds = true
            op2Area51.layer.cornerRadius = 15
            assignbackground()
            

           
        }
        func assignbackground(){
          let background = UIImage(named: "background5")
          var imageView : UIImageView!
          imageView = UIImageView(frame: view.bounds)
          imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.center = view.center
          view.addSubview(imageView)
          self.view.sendSubviewToBack(imageView)
        }


        // Do any additional setup after loading the view.
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "organizedAnswer"{
            let vc = segue.destination as! A51AchievementsViewController
            vc.name = name
            point5 = point5 + 20
            vc.finalPoints = point5
        }else{
        let vc = segue.destination as! A51AchievementsViewController
        vc.name = name
            point5 = point5 + 10
            vc.finalPoints = point5
        }
    }
    

}
