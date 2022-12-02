//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Tummuru, Sritej (Coll) on 30/11/2022.
//

import Foundation

class Tamagotchi {
    private var weight: Int
    private var hunger: Int
    private var age: Int
    private var isDead: Bool
    private var sickness: Int
    private var uncleanedPoo
    
    init() {
        self.weight = 50
        self.hunger = 5
        self.age = 0
        self.isDead = false
        self.sickness = 0
    }
    
    func getWeight() -> Int {
        return self.weight
    }
    
    func getHunger() -> Int {
        return self.hunger
    }
    
    func getAge() -> Int {
        return self.age
    }
    
    func poo() {
        let volumeOfPoo = self.weight
        
    }
    
    func eatSnack(snackSize: Int) {
        if snackSize > self.hunger {
            self.weight += (snackSize - self.hunger)
            self.hunger = 0
        } else {
            self.hunger -= snackSize
        }
    }
}
