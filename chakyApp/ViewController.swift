//
//  ViewController.swift
//  chakyApp
//
//  Created by Руслан Битюков on 10.11.2020.
//

import Spring

class ViewController: UIViewController {
    
    let animations = Animation.randomAnimations()
    var currentAnimationIndex = 0
    
    @IBOutlet var springLabel: UILabel!
    @IBOutlet var springAnimationView: SpringView!
    
    var animation: Animation!
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setLabel()
    }
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        
        springAnimationView.animation = animations[currentAnimationIndex].animation
        springAnimationView.curve = animations[currentAnimationIndex].curve
        springAnimationView.force = CGFloat(animations[currentAnimationIndex].forse)
        springAnimationView.animate()
        
        springAnimationView.animateNext(completion: {
            if self.currentAnimationIndex == (self.animations.count - 1) {
                self.currentAnimationIndex = 0
            } else {
                self.currentAnimationIndex += 1
            }
            self.setLabel()
        })
        
        sender.setTitle("\(animations[currentAnimationIndex].animation)", for: .normal)
    }
    
    func setLabel()  {
        let nextAnimationDescription = "NEXT:\n\nAnimation: \(animations[currentAnimationIndex].animation)\nCurve: \(animations[currentAnimationIndex].curve)\nForce: \(animations[currentAnimationIndex].forse)"
        
        springLabel.text = nextAnimationDescription
        
    }
}
