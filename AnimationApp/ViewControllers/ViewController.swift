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
    var currentAnimation: Animation?
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationDescription: UILabel!
    @IBOutlet var nextAnimation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentAnimation = animations.randomElement()
        animationView.layer.cornerRadius = 10
        animationDescription.text = currentAnimation?.description
    }

    @IBAction func nextAnimation(_ sender: Any) {
        animationView.animation = currentAnimation?.preset ?? ""
        animationView.curve = currentAnimation?.curve ?? ""
        animationView.force = CGFloat(currentAnimation?.force ?? 0)
        animationView.duration = CGFloat(currentAnimation?.duration ?? 0)
        animationView.delay = CGFloat(currentAnimation?.delay ?? 0)
        
        animationView.animate()
        
        animationDescription.text = currentAnimation?.description
        currentAnimation = animations.randomElement()
        nextAnimation.setTitle("Next \(currentAnimation?.preset ?? "")", for: .normal)
    }
}

