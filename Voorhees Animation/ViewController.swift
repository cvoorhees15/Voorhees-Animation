//
//  ViewController.swift
//  Voorhees Animation
//
//  Created by Caleb Voorhees on 2/14/20.
//  Copyright © 2020 Caleb Voorhees. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var knightView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var background: UIImageView!
    
    
    @IBAction func toggleButton(_ sender: Any) {
        if knightView.isAnimating
        {
            knightView.stopAnimating()
        }else
        {
            knightView.startAnimating()
        }
    }
    
    @IBAction func setSpeed(_ sender: Any) {
        knightView.animationDuration=TimeInterval(1.0-speedSlider.value)
        knightView.startAnimating()
    }
    
    @IBAction func backgroundButton(_ sender: Any) {
        if background.isHidden
        {
            background.isHidden = false
        } else
        {
            background.isHidden = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let jumpAnimation: [UIImage] = [
            UIImage(named: "frame1")!,
            UIImage(named: "frame2")!,
            UIImage(named: "frame3")!,
            UIImage(named: "frame4")!,
            UIImage(named: "frame5")!,
            UIImage(named: "frame6")!,
            UIImage(named: "frame7")!,
            UIImage(named: "frame8")!,
            UIImage(named: "frame9")!,
            UIImage(named: "frame10")!,
            UIImage(named: "frame11")!,
            UIImage(named: "frame12")!,
            UIImage(named: "frame13")!,
            UIImage(named: "frame14")!,
            UIImage(named: "frame15")!,
            ]
        
knightView.animationImages=jumpAnimation
        knightView.animationDuration=1.0
    }


}

