//
//  WeatherDayRepresentable.swift
//  Sunny
//
//  Created by Radio Shaolin on 02.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import UIKit

protocol WeatherDayRepresentable {
    var day: String { get }
    var date: String  { get }
    var temperature: String  { get }
    var windSpeed: String { get }
    var image: UIImage?  { get }
}

