//
//  DataManager.swift
//  MySpringApp
//
//  Created by Екатерина Чернова on 11.11.2020.
//

import Foundation

class DataManager {
    static let shared = DataManager ()
    
    let animations = ["shake", "pop", "morph"]
    
    let forces =  [1, 2, 3]
    
    let durations = [1, 2, 3]
    
    private init() {}
}
