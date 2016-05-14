//
//  DevilWizard.swift
//  RPG-OOP
//
//  Created by Sagar Arora  on 5/13/16.
//  Copyright © 2016 Sagar Arora . All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
        
    }
    
    override var type: String {
        
        return "Devil Wizard"
    }



}