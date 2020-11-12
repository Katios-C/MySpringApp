//
//  ViewController.swift
//  MySpringApp
//
//  Created by Екатерина Чернова on 11.11.2020.
//

import Spring

class ViewController: UIViewController {
    
    //var labels = Label.ViewParameters()
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var button: UIButton!
    @IBOutlet var parametersLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    @IBAction func runAnimationButton(_ sender: SpringButton) {
        
        let buttonText = DataManager.shared.animations.randomElement()
        button.setTitle("\(String(describing: buttonText))", for: .normal)
        
        
        
        animationView.animation = buttonText ?? ""
        animationView.force = CGFloat(DataManager.shared.forces.randomElement() ?? 0 )
        animationView.duration = CGFloat(DataManager.shared.durations.randomElement() ?? 0)
        
        
    
        parametersLabel.text = "Animation: \(animationView.animation), \n Force: \(animationView.force), \n Duration: \(animationView.duration)"
        animationView.animate()
        
    
    }
}

