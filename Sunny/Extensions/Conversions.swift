//
//  Conversions.swift
//  Sunny
//
//  Created by Radio Shaolin on 01.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import Foundation

extension Double {

    func toCelcius() -> Double {
        return ((self - 32.0) / 1.8)
    }

    func toKPH() -> Double {
        return (self * 1.609344)
    }

}
