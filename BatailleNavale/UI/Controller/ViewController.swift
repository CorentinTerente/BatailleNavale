//
//  ViewController.swift
//  BatailleNavale
//
//  Created by formation2 on 12/12/2018.
//  Copyright © 2018 diginamic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var scoreButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    
    @IBAction func onTap(_ sender: UIButton) {
        //TODO : Renvoie à la view attenante au bouton cliqué.
        if sender == playButton {
            guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"PlayViewController") as? PlayViewController else {
                return
            }
            self.show(vc, sender: self)
        } else if sender == scoreButton {
            guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"ScoreViewController") as? ScoreViewController else {
                return
            }
            self.show(vc, sender: self)
        } else if sender == settingsButton {
            guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"SettingViewController") as? SettingViewController else {
                return
        }
            self.show(vc, sender: self)
        
        }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

