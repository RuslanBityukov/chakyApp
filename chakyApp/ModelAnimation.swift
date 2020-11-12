//
//  ModelAnimation.swift
//  chakyApp
//
//  Created by Руслан Битюков on 11.11.2020.
//

//import UIKit






struct Animation {
    var animation: String
    var curve: String
    var forse: Int

    static let animationsSet: Set <String> = ["slideDown",
                                              "slideRight",
                                              "morph",
                                              "squeeze",
                                              "squeezeLeft",
                                              "flipX",
                                              "wobble",
                                              "fall",
                                              "squeezeLeft",
                                              "squeezeRight",
                                              "squeezeDown",
                                              "squeezeUp",
                                              "slideLeft",
                                              "swing",
                                              "shake",
                                              "pop"]
    
    static let curves = ["easeInOut",
                         "easeOut",
                         "linear",
                         "spring"]
    
    static func randomAnimations() -> [Animation] {
        
        var animations = [Animation]()
        let animationsArray = Array(animationsSet)
        
        for animation in animationsArray {
            let randomCurve = Int.random(in: 0...3)
            let randomForce = Int.random(in: 1...4)
            animations.append(Animation(animation: animation, curve: curves[randomCurve], forse: randomForce))
        }
        return animations
    }
}
