//
//  XCTestCase.swift
//  SunnyTests
//
//  Created by Radio Shaolin on 02.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import XCTest

extension XCTestCase {
    
    func loadStubFromBundle(withName name: String, extension: String) -> Data {
        
        let bundle = Bundle(for: classForCoder)
        let  url = bundle.url(forResource: name, withExtension: `extension`)
        
        return try! Data(contentsOf: url!)
    }
    
}
