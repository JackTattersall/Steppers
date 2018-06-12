//
//  SteppersTests.swift
//  SteppersTests
//
//  Created by Administrator on 05/06/2018.
//  Copyright © 2018 Administrator. All rights reserved.
//

import XCTest
@testable import Steppers

class SteppersTests: XCTestCase {
    
    func testMealInitializationSucceeds() {
        let zeroRatingMeal = Meal.init(name: "Food", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal.init(name: "Food", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal.init(name: "Food", photo: nil, rating: -4)
        XCTAssertNil(negativeRatingMeal)
        
        let noNameMeal = Meal.init(name: "", photo: nil, rating: 3)
        XCTAssertNil(noNameMeal)
        
        let tooLargeRatingMeal = Meal.init(name: "Food", photo: nil, rating: 9)
        XCTAssertNil(tooLargeRatingMeal)
    }
    
}
