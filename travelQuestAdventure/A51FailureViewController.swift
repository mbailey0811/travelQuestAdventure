//
//  A51FailureViewController.swift
//  travelQuestAdventure
//
//  Created by Christine Bailey on 7/16/20.
//  Copyright © 2020 Megan Bailey. All rights reserved.
//

import UIKit
import AVFoundation

class A51FailureViewController: UIViewController {
    var explanationOfFailText : String!

    @IBOutlet weak var failLabel: UILabel!
    var audioPlayer: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Fail.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            // couldn't load file :(
        }


        // Do any additional setup after loading the view.
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
