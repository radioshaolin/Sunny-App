//
//  WeekViewViewModelTests.swift
//  SunnyTests
//
//  Created by Radio Shaolin on 02.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import XCTest
@testable import Sunny

class WeekViewViewModelTests: XCTestCase {
    
    var viewModel: WeekViewViewModel!
    
    override func setUp() {
        super.setUp()

        let data = loadStubFromBundle(withName: "forecast", extension: "json")
        let weatherData: WeatherData = try! JSONDecoder.decode(data: data)
        
        viewModel = WeekViewViewModel(weatherData: weatherData.dailyData)
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // MARK: - Tests for Number of Sections
    
    func testNumberOfSections() {
        XCTAssertEqual(viewModel.numberOfSectons, 1)
    }
    
    // MARK: - Tests for Number of Days
    
    func testNumberOfDays() {
        XCTAssertEqual(viewModel.numberOfDays, 8)
    }
    
    // MARK: - Tests for View Model for Index
    
    func testViewModelForIndex() {
        let weatherDayViewViewModel = viewModel.viewModel(for: 5)
        
        XCTAssertEqual(weatherDayViewViewModel.day, "Tuesday")
        XCTAssertEqual(weatherDayViewViewModel.date, "October 11")
    }
    
}

