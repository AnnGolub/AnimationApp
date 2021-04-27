//
//  Animation.swift
//  AnimationApp
//
//  Created by Анна Голубева on 27.04.2021.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    static func getAnimationView() -> Animation {
        return Animation(
            preset: DataManager.shared.presets.randomElement()?.rawValue ?? "pop",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 0...3),
            duration: Float.random(in: 0...3),
            delay: Float.random(in: 0...3))
    }
}
