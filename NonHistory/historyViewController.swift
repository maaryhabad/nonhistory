//
//  GameViewController.swift
//  NonHistory
//
//  Created by Mariana Beilune Abad on 25/04/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import UIKit

class historyViewController: UIViewController {
    
    let hasPassed = stateMachine.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    @IBAction func personagemChapter1(_ sender: Any) {
        if (hasPassed.chapter1) {
            performSegue(withIdentifier: "chapter1Done", sender: self)
        } else {
            hasPassed.chapter1 = true
            performSegue(withIdentifier: "personagemChapter1", sender: self)
        }
    }
    
    @IBAction func universoChapter1(_ sender: Any) {
        if (hasPassed.chapter1) {
            performSegue(withIdentifier: "chapter1Done", sender: self)
        } else {
            hasPassed.chapter1 = true
            performSegue(withIdentifier: "universoChapter1", sender: self)
        }
    }
    
}
