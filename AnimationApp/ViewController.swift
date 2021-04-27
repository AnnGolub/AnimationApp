//
//  ViewController.swift
//  AnimationApp
//
//  Created by Анна Голубева on 27.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var imageView: SpringImageView!
    
    private var animationView = Animation.getAnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        imageView.image = UIImage(named: "Pic")
    }
    
    @IBAction func runImageViewAnimation(_ sender: UIButton) {
        presetLabel.text = "Preset: \(animationView.preset)"
        curveLabel.text = "Curve: \(animationView.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animationView.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animationView.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", animationView.delay))"
        
        imageView.animation = animationView.preset
        imageView.curve = animationView.curve
        imageView.force = CGFloat(animationView.force)
        imageView.duration = CGFloat(animationView.duration)
        imageView.delay = CGFloat(animationView.delay)
        imageView.animate()
        
        sender.setTitle("Go \(animationView.preset)", for: .normal)
        
        animationView = Animation.getAnimationView()
    }
}
