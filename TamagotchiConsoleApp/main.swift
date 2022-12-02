//
//  main.swift
//  TamagotchiConsoleApp
//
//  Created by Tummuru, Sritej (Coll) on 30/11/2022.
//

import Foundation

let tamagotchi = Tamagotchi()

var running = true

let options = ["Eat a snack", "Go to the toilet", "Quit Game"]

while running {
    print("What would you like your tamagotchi to do?")
    for (num, optionText) in options.enumerated() {
        print("\(num + 1). \(optionText)")
        if let userInput = readLine() {
            if let userOption = Int(userInput) {
                switch userOption {
                    case 1:
                        tamagotchi.eatSnack(snackSize: 5)
                    case 2:
                        tamagotchi.poo()
                    case 3:
                        running = false
                    default:
                        print("Choose another option.")
                }
            }
        }
    }
}
