//
//  Character.swift
//  RPG-OOP
//
//  Created by Sagar Arora  on 5/13/16.
//  Copyright © 2016 Sagar Arora . All rights reserved.
//

import Foundation


class Character {
    
    private var _hp: Int = 100
    private var _attackPower: Int = 10
   
    var attackPower: Int {
        return _attackPower
        
        
    }
    
    var hp: Int {
        
        return _hp
        
    }
    
    init(StartingHp: Int, attackPower: Int) {
        self._hp = StartingHp
        self._attackPower = attackPower
        
        
    }
    
    var isAlive: Bool {
        
        get {
            if _hp <= 0 {
               return false
                
            } else {
                return true
    
    
    
            }
        }
    }
    
    func attemptAttack(attackPower: Int) -> Bool {
    
        _hp -= attackPower
        
            return true
       




}

}







