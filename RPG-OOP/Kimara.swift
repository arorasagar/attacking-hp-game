//
//  Kimara.swift
//  RPG-OOP
//
//  Created by Sagar Arora  on 5/13/16.
//  Copyright © 2016 Sagar Arora . All rights reserved.
//

import Foundation

class Kimara: Enemy {

    let IMMUNE_MAX = 15
    
    
    override var loot: [String] {
       return ["Tough Hide", "Kimara Venom", "Rare Trident"]
        
    }
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPower: Int) -> Bool {
        if attackPower >= IMMUNE_MAX {
            return super.attemptAttack(attackPower)
            
        } else {
            return false 
            
        }
    }
}