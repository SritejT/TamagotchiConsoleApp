//
//  TamagotchiTest.swift
//  TamagotchiConsoleAppTests
//
//  Created by Tummuru, Sritej (Coll) on 30/11/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {

    func testWhenICreateTamagotchiItsWeightHungerAndAgeAreInitialisedToCorrectValues() {
        //arrange
        //act
        let tamagotchi = Tamagotchi()
        //assert
        XCTAssertEqual(50, tamagotchi.getWeight())
        XCTAssertEqual(5, tamagotchi.getHunger())
        XCTAssertEqual(0, tamagotchi.getAge())
    }
    
    func testWhenTamagotchiEatsSnackHungerShouldDecreaseBySizeOfSnackAndWeightShouldIncreaseAccordingToTheSizeOfTheSnack() {
        let sizeOfSnack = [1, 2, 3, 4, 5, 6, 7, 45, 56, 567, 23]
        let expected = [[4, 50], [3, 50], [2, 50], [1, 50], [0, 50], [0, 51], [0, 52], [0, 90], [0, 101], [0, 612], [0, 68]]
        for i in 0..<sizeOfSnack.count {
            let tamagotchi = Tamagotchi()
            tamagotchi.eatSnack(snackSize: sizeOfSnack[i])
            XCTAssertEqual(expected[i][0], tamagotchi.getHunger())
            XCTAssertEqual(expected[i][1], tamagotchi.getWeight())
        }
    }
    
    func testWhenTamagotchiPoosItsUncleanedPooShouldIncrease() {
        let expected = 4
        let tamagotchi = Tamagotchi()
        tamagotchi.poo()
        tamagotchi.eatSnack(snackSize: 55)
        for _ in 0..<4 {
            tamagotchi.poo()
        }
        XCTAssertEqual(expected, tamagotchi.getSickness())
    }
    
}
