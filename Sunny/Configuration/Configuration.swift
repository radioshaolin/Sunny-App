//
//  Configuration.swift
//  Sunny
//
//  Created by Radio Shaolin on 01.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import Foundation

struct Defaults {

    static let Latitude: Double = 51.400592
    static let Longitude: Double = 4.760970

}

struct API {

    static let APIKey = "241098f71c72d319d9a4575876d6e915"
    static let BaseURL = URL(string: "https://api.darksky.net/forecast/")!

    static var AuthenticatedBaseURL: URL {
        return BaseURL.appendingPathComponent(APIKey)
    }
    
}
