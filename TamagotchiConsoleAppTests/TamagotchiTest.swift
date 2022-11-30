//
//  TamagotchiTest.swift
//  TamagotchiConsoleAppTests
//
//  Created by Tummuru, Sritej (Coll) on 30/11/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {

    func testWhenICreateTamagotchiItsWeightHungerAndAgeAreInitialisedTo0() {
        //arrange
        //act
        let tamagotchi = Tamagotchi()
        //assert
        XCTAssertEqual(0, tamagotchi.getWeight())
        XCTAssertEqual(0, tamagotchi.getHunger())
        XCTAssertEqual(0, tamagotchi.getAge())
    }
    
    func testWhenTamagotchiEatsSnackHungerShouldDecreaseBySizeOfSnack() {
        let sizeOfSnack = [1, 2, 3, 4, 5, 6, 7, 45, 56, 567, 23]
        for i in sizeOfSnack {
            let tamagotchi = Tamagotchi()
            let oldHungerValue = tamagotchi.getHunger()
            tamagotchi.eatSnack(snackSize: i)
            XCTAssertEqual(oldHungerValue - i, tamagotchi.getHunger())
        }
    }
}
