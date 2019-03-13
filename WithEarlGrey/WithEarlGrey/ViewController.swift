//
//  ViewController.swift
//  WithEarlGrey
//
//  Created by apple on 13/03/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let labelArray = ["ball  1" , "ball   2" , "ball   3" , "ball   4" , "ball   5"]
    var random : Int = 0
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // CGRectMake has been deprecated - and should be let, not var
        
        // you will probably want to set the font (remember to use Dynamic Type!)
        label.font = UIFont.preferredFont(forTextStyle: .footnote)
        
        // and set the text color too - remember good contrast
        label.textColor = .black
        
        // may not be necessary (e.g., if the width & height match the superview)
        // if you do need to center, CGPointMake has been deprecated, so use this
        label.center = CGPoint(x: 160, y: 284)
        
        // this changed in Swift 3 (much better, no?)
        label.textAlignment = .center
        
        label.text = labelArray[random]
        
        self.view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonRandom(_ sender: Any){
        newRandomLabel()
    }
    
    func newRandomLabel() {
        random = Int(arc4random_uniform(5))
        label.text = labelArray[random]
        print(labelArray[random])
    }
}

