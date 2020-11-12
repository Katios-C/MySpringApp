//
//  Model.swift
//  MySpringApp
//
//  Created by Екатерина Чернова on 11.11.2020.
//

import Foundation

struct Label {
    let animation: String
    let force: Int
    let duration: Int

}

extension Label {
    static func ViewParameters() -> [Label] {
        
        var labels: [Label] = []
        let animations = DataManager.shared.animations
        let durations = DataManager.shared.durations
        let forces = DataManager.shared.forces
        
        
        for index in 0 ..< animations.count {
            let label = Label(animation: animations[index], force: forces[index], duration: durations[index])
            
            labels.append(label)
            
        }
        
        return labels
    }
    
    
}

