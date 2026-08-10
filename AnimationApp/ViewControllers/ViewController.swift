//
//  ViewController.swift
//  AnimationApp
//
//  Created by Владислав on 09.08.2026.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    private let animations = Animation.getAnimations()
    //var currentAnimation = animations.randomElement()
    
    @IBOutlet var animateView: SpringView!
    @IBOutlet var animationDescription: UILabel!
    @IBOutlet var nextAnimation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateView.layer.cornerRadius = 10
        animationDescription.text = animations.first?.description
    }

    @IBAction func nextAnimation(_ sender: Any) {
        //animateView.animation
    }
}

