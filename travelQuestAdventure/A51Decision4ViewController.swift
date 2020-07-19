//
//  A51Decision4ViewController.swift
//  travelQuestAdventure
//
//  Created by Christine Bailey on 7/16/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit

class A51Decision4ViewController: UIViewController {
    
    var coloradoInfoText : String!
    var coloradoOp1Text : String!
    var coloradoOp2Text : String!
    var name : String!
     var point4 : Int = 0
    @IBOutlet weak var welcomeCO: UILabel!
    
    @IBOutlet weak var popCO: UILabel!
    
    @IBOutlet weak var infoCO: UILabel!
    
    @IBOutlet weak var op1CO: UIButton!
    
    @IBOutlet weak var op2CO: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoCO.text = self.coloradoInfoText
            self.op1CO.setTitle(self.coloradoOp1Text, for: .normal)
            self.op2CO.setTitle(self.coloradoOp2Text, for: .normal)
            
            welcomeCO.layer.masksToBounds = true
            welcomeCO.layer.cornerRadius = 5
            
            popCO.layer.masksToBounds = true
            popCO.layer.cornerRadius = 5
            
            infoCO.layer.masksToBounds = true
            infoCO.layer.cornerRadius = 15
            
            op1CO.layer.masksToBounds = true
            op1CO.layer.cornerRadius = 15
            
            op2CO.layer.masksToBounds = true
            op2CO.layer.cornerRadius = 15
            assignbackground()
            

           
        }
        func assignbackground(){
          let background = UIImage(named: "background4")
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
        if segue.identifier == "colaradoOp1" {
            let vc = segue.destination as! A51Decision5ViewController
            point4 = point4 + 20
            vc.name = name
            vc.point5 = point4
        }else{
            let vc = segue.destination as! A51Decision5ViewController
            point4 = point4 + 10
            vc.name = name
            vc.point5 = point4
        }
    }
    

}
