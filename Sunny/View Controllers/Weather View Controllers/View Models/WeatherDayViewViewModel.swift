//
//  WeatherViewViewModel.swift
//  Sunny
//
//  Created by Radio Shaolin on 02.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import UIKit

struct WeatherDayViewViewModel: WeatherDayRepresentable {
    
    let weatherDayData: WeatherDayData
    
    let dayFormatter = DateFormatter()
    let dateFormatter = DateFormatter()
    
    var day: String {
        dayFormatter.dateFormat = "EEEE"
        
        return dayFormatter.string(from: weatherDayData.time)
    }
    
    var date:String {
        dateFormatter.dateFormat = "MMMM d"
        
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    var temperature: String {
        let min = format(temperature: weatherDayData.temperatureMin)
        let max = format(temperature: weatherDayData.temperatureMax)
        
        return "\(min) - \(max)"
    }
    
    var windSpeed: String {
        let windSpeed = weatherDayData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", windSpeed)
        case .metric:
            return String(format: "%.f MPH", windSpeed.toKPH())
        }
    }
    
    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherDayData.icon)
    }
    
    private func format(temperature: Double) -> String {
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.0f °F", temperature)
        case .celsius:
            return String(format: "%.0f °C", temperature.toCelcius())
        }
    }
    
}
