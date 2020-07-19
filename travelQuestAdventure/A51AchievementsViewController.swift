//
//  A51AchievementsViewController.swift
//  travelQuestAdventure
//
//  Created by Christine Bailey on 7/16/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit
import AVFoundation

class A51AchievementsViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var nameCongratsLabel: UILabel!
    @IBOutlet weak var pickPhotoButton: UIButton!
    @IBOutlet weak var winnerName: UILabel!
    var audioPlayer: AVAudioPlayer?
    var name : String!
    @IBOutlet weak var selfieButton: UIButton!
    
     var imagePicker = UIImagePickerController()
       
    @IBOutlet weak var imageView: UIImageView!
    //hello world
       override func viewDidLoad() {
            super.viewDidLoad()
            winnerName.text = name
            selfieButton.layer.masksToBounds = true
            selfieButton.layer.cornerRadius = 15
        
            let path = Bundle.main.path(forResource: "trumpet.mp3", ofType:nil)!
            let url = URL(fileURLWithPath: path)

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
            // couldn't load file :(
        }
        
        
            pickPhotoButton.layer.masksToBounds = true
            pickPhotoButton.layer.cornerRadius = 15
            imagePicker.delegate = self
         //imageView.isHidden = true
       }

       @IBAction func SelfieTapped(_ sender: UIButton) {
         imagePicker.sourceType = .camera
         present(imagePicker, animated: true, completion: nil)
       }
    
    
    @IBAction func PhotoLibraryTapped(_ sender: UIButton) {
         imagePicker.sourceType = .photoLibrary
         present(imagePicker, animated: true, completion: nil)
       }
       func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
         //update our phote with selected photo
         if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
           imageView.image = selectedImage
           imageView.isHidden = false
         }
         //Go back to viewController
         imagePicker.dismiss(animated: true, completion: nil)

       }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
