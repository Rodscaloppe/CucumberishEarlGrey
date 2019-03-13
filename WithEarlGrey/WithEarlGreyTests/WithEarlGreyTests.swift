//
//  WithEarlGreyTests.swift
//  WithEarlGreyTests
//
//  Created by apple on 13/03/19.
//  Copyright © 2019 apple. All rights reserved.
//

import XCTest
import Foundation
import Cucumberish

class CucumberishInitializer: NSObject {
    @objc class func setupCucumberish(){
        
        before({ _ in
            XCUIApplication().launch()
        })
        
        Given("Blibli login page") { (args, userInfo) -> Void in
            print("Helo...!!!")
        }
        
        When("^I login") { (args, userInfo) -> Void in
            print("Helo...!!!")
        }
        
        Then("^I should see my username$") { (args, userInfo) -> Void in
            print("Helo...!!!")
        }
        
        let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(inDirectory: "Features", from: bundle, includeTags: self.getTags(), excludeTags: nil)
    }
    
    class func waitForElementToAppear(_ element: XCUIElement){
        let predicate = NSPredicate(format: "exists == true")
        let expectation = XCTestCase().expectation(for: predicate, evaluatedWith: element,
                                                   handler: nil)
        
        let result = XCTWaiter().wait(for: [expectation], timeout: 5)
        guard result == .completed else {
            XCTFail()
            return
        }
    }
    
    fileprivate class func getTags() -> [String]? {
        var itemsTags: [String]? = nil
        for i in ProcessInfo.processInfo.arguments {
            if i.hasPrefix("-Tags:") {
                let newItems = i.replacingOccurrences(of: "-Tags:", with: "")
                itemsTags = newItems.components(separatedBy: ",")
            }
        }
        print(itemsTags)
        return itemsTags
    }
    
}
