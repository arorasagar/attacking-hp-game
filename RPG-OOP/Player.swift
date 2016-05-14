//
//  Player.swift
//  RPG-OOP
//
//  Created by Sagar Arora  on 5/13/16.
//  Copyright © 2016 Sagar Arora . All rights reserved.
//

import Foundation

class Player: Character {
    private var _playerName: String =  ""

    var playerName: String {
        
        get {
           return _playerName
            
        }
        
    }
    private var _inventory =  [String]()
    
    var inventory: [String] {
        
        get {
            
            
            return _inventory
        
        }
        
        
    }
    // Good use for subclasses and accesses properties from other classes
    convenience init(playerName: String, hp: Int, attackPower: Int) {
        // Old class properties below
        self.init(StartingHp: hp, attackPower: attackPower)
        self._playerName = playerName
        self._inventory = inventory
        
    
    


    }
    func addItemToInventory(Item : String) {
        
        _inventory.append(Item)
        
    }

}
