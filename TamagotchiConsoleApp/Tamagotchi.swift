//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Tummuru, Sritej (Coll) on 30/11/2022.
//

import Foundation

class Tamagotchi {
    var weight: Int
    var hunger: Int
    var age: Int
    
    init() {
        self.weight = 0
        self.hunger = 0
        self.age = 0
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
    
    func eatSnack(snackSize: Int) {
        self.hunger -= snackSize
    }
}
