//
//  DataManager.swift
//  AnimationApp
//
//  Created by Анна Голубева on 27.04.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let presets: [Spring.AnimationPreset] = [
        .SlideLeft, .SlideRight, .SlideDown, .SlideUp,
        .Wobble, .Shake, .Pop, .Morph, .Squeeze]
    
    let curves: [Spring.AnimationCurve] = [
        .EaseIn, .EaseOut, .EaseInOut, .EaseInOutBack, .Spring,
        .EaseInSine, .EaseOutSine, .EaseInQuad, .EaseOutQuad
    ]
    
}
