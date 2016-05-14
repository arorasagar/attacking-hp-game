//
//  ViewController.swift
//  RPG-OOP
//
//  Created by Sagar Arora  on 5/13/16.
//  Copyright © 2016 Sagar Arora . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ChestBtn: UIButton!
    @IBOutlet weak var PrintLbl: UILabel!
    @IBOutlet weak var PlayerHpLbl: UILabel!
    @IBOutlet weak var EnemyHpLbl: UILabel!
    @IBOutlet weak var EnemyImage: UIImageView!
    
    
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player(playerName: "DirtyLaundry21", hp: 110, attackPower: 20)
        generateRandomEnemy()
        PlayerHpLbl.text = "\(player.hp) HP"
        
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(UInt32(2)))
        
        if (rand == 0) {
            
            enemy = Kimara(StartingHp: 50, attackPower: 12)
            
        }
        
        else {
            
           enemy = DevilWizard(StartingHp: 60, attackPower: 15)
        }
        EnemyImage.hidden = false
        
    }
    
    
    @IBAction func PressedonAttackBtn(sender: AnyObject) {
        if enemy.attemptAttack(player.attackPower) {
            PrintLbl.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            EnemyHpLbl.text = "\(enemy.hp) HP"
            
            
            
        } else {
            PrintLbl.text = "Attack was unsuccessful!"
        
        }
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.playerName) found \(loot)"
            ChestBtn.hidden = false
            
        }
        if !enemy.isAlive {
            EnemyHpLbl.text = ""
            PrintLbl.text = "Killed \(enemy.type) by \(player.playerName) ! "
             EnemyImage.hidden = true 
            
            
            
        }
    }
    
    @IBAction func PressedOnChest(sender: AnyObject) {
        ChestBtn.hidden = true
        PrintLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
      
        
    }
    


}
