//
//  A51Decision2ViewController.swift
//  travelQuestAdventure
//
//  Created by Christine Bailey on 7/16/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision2ViewController: UIViewController {
    var a51Decision2InfoText : String!
    var a51Decision2Op1Text : String!
    var a51Decision2Op2Text : String!
    var name : String!
    var point2 : Int = 0
    @IBOutlet weak var welcomePA: UILabel!
    
    @IBOutlet weak var popPA: UILabel!
    
    @IBOutlet weak var paInfo: UILabel!
    
    @IBOutlet weak var lancasterOp1: UIButton!
    
    @IBOutlet weak var lancasterOp2: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.paInfo.text = self.a51Decision2InfoText
        self.lancasterOp1.setTitle(self.a51Decision2Op1Text, for: .normal)
        self.lancasterOp2.setTitle(self.a51Decision2Op2Text, for: .normal)
        
        welcomePA.layer.masksToBounds = true
        welcomePA.layer.cornerRadius = 5
        
        popPA.layer.masksToBounds = true
        popPA.layer.cornerRadius = 5
        
        paInfo.layer.masksToBounds = true
        paInfo.layer.cornerRadius = 15
        
        lancasterOp1.layer.masksToBounds = true
        lancasterOp1.layer.cornerRadius = 15
        
        lancasterOp2.layer.masksToBounds = true
        lancasterOp2.layer.cornerRadius = 15
        assignbackground()
        

       
    }
    func assignbackground(){
      let background = UIImage(named: "background2")
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
         if segue.identifier == "lancasterOp1Segue" && a51Decision2Op1Text == "Stay on the path 🗺" {
                   point2 = point2 + 20
                   let vc = segue.destination as! A51Decision3ViewController
                   vc.a51KansasInfoText = "You finally made it to Kansas. You're halfway across the country! Your truck still has gas, so would you like to keep going or stop and talk to locals?"
                   vc.a51KansasOp1Text = "Stop to Talk 💬"
                   vc.a51KansasOp2Text = "Keep Driving 🚛"
                    vc.name = name
                vc.point3 = point2
               }
               
               else if segue.identifier == "lancasterOp1Segue" {
                   
                   let vc = segue.destination as! A51Decision3ViewController
                   vc.a51KansasInfoText = "You finally made it to Kansas. You're halfway across the country! Would you like to stop for a meal in a local diner or take a bicycle and continue on the path?"
                   vc.a51KansasOp1Text = "Stop to Eat 🍕"
                   vc.a51KansasOp2Text = "Take the Bike 🚲"
                vc.name = name
                point2 = point2 + 20
               vc.point3 = point2
               }
               
    }
    

}
