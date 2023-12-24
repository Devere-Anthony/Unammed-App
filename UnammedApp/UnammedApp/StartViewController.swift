//
//  ViewController.swift
//  UnammedApp
//
//  Created by Devere Weaver on 12/23/23.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet var startSessionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startSessionButton.setImage(UIImage(named: "play-button"), for: .normal)
        startSessionButton.setTitle("", for: .normal)
    }
    
    


}

