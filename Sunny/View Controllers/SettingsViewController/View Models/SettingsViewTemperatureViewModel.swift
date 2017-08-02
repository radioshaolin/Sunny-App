//
//  SettingsViewTemperatureViewModel.swift
//  Sunny
//
//  Created by Radio Shaolin on 01.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import UIKit

struct SettingsViewTemperatureViewModel: SettingsRepresentable {
    
    let temperatureNotation: TemperatureNotation
    
    var text: String {
        switch temperatureNotation {
        case .fahrenheit: return "Fahrenheit"
        case .celsius: return "Celsius"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.temperatureNotation() == temperatureNotation {
            return .checkmark
        } else {
            return .none
        }
    }
    
    
}
