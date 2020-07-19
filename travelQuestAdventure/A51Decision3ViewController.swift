//
//  A51Decision3ViewController.swift
//  travelQuestAdventure
//
//  Created by Christine Bailey on 7/16/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision3ViewController: UIViewController {
    var a51KansasInfoText : String!
    var a51KansasOp1Text : String!
    var a51KansasOp2Text : String!
    var name : String!
    @IBOutlet weak var welcomeKS: UILabel!
    
    @IBOutlet weak var popKS: UILabel!
    
    @IBOutlet weak var infoKS: UILabel!
    
    @IBOutlet weak var op1KS: UIButton!
    
    @IBOutlet weak var op2KS: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoKS.text = self.a51KansasInfoText
            self.op1KS.setTitle(self.a51KansasOp1Text, for: .normal)
            self.op2KS.setTitle(self.a51KansasOp2Text, for: .normal)
            
            welcomeKS.layer.masksToBounds = true
            welcomeKS.layer.cornerRadius = 5
            
            popKS.layer.masksToBounds = true
            popKS.layer.cornerRadius = 5
            
            infoKS.layer.masksToBounds = true
            infoKS.layer.cornerRadius = 15
            
            op1KS.layer.masksToBounds = true
            op1KS.layer.cornerRadius = 15
            
            op2KS.layer.masksToBounds = true
            op2KS.layer.cornerRadius = 15
            assignbackground()
            

           
        }
        func assignbackground(){
          let background = UIImage(named: "background3")
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
        
        if segue.identifier == "kansasOp1Segue" && a51KansasOp1Text == "Stop to Talk 💬" {
            
            let vc = segue.destination as! A51Decision4ViewController
            vc.coloradoInfoText = "Welcome to the mountains! When you stopped to talk, the stranger told you that you should use a rope to climb. Will you follow their advice?"
            vc.coloradoOp1Text = "Climb with Rope🧗"
            vc.coloradoOp2Text = "Climb with Axes⛏"
            vc.name = name
            
        }
        
        else if segue.identifier == "kansasOp1Segue" && a51KansasOp1Text == "Stop to Eat 🍕" {
            
            let vc = segue.destination as! A51Decision4ViewController
            vc.coloradoInfoText = "Welcome to the mountains! When you stopped to eat, a stranger at a nearby table advised that you use axes to climb the mountain. Will you follow their advice?"
            vc.coloradoOp1Text = "Climb with Rope🧗"
            vc.coloradoOp2Text = "Climb with Axes⛏"
            vc.name = name
            
        }
        
    }
    

}
