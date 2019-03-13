//
//  OnlyEarlGreyTest.swift
//  OnlyEarlGreyTest
//
//  Created by apple on 13/03/19.
//  Copyright © 2019 apple. All rights reserved.
//

import XCTest
import EarlGrey

class OnlyEarlGreyTest: XCTestCase {
    
    func testExample() {
        for _ in 1...5 {
            EarlGrey.selectElement(with: grey_text("Button")).perform(grey_tap())
        }
    }
}
