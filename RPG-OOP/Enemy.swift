//
//  Enemy.swift
//  RPG-OOP
//
//  Created by Sagar Arora  on 5/13/16.
//  Copyright © 2016 Sagar Arora . All rights reserved.
//

import Foundation


class Enemy: Character {

    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler", ]
        
        
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        
        if (!isAlive) {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            // return a number between 0 and the length of the array loot(Like math.random except random in the array)
             return loot[rand]
        }
        
        return nil
        
    }

}