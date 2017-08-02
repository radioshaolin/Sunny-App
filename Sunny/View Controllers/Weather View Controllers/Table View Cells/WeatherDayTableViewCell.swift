//
//  WeatherDayTableViewCell.swift
//  Sunny
//
//  Created by Radio Shaolin on 01.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import UIKit

class WeatherDayTableViewCell: UITableViewCell {

    // MARK: - Type Properties

    static let reuseIdentifier = "WeatherDayCell"

    // MARK: - Properties

    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var windSpeedLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var iconImageView: UIImageView!

    // MARK: - Initialization

    override func awakeFromNib() {
        super.awakeFromNib()

        // Configure Cell
        selectionStyle = .none
    }

    func configure(withViewModel viewModel: WeatherDayRepresentable) {
        dayLabel.text = viewModel.day
        dateLabel.text = viewModel.date
        temperatureLabel.text = viewModel.temperature
        windSpeedLabel.text = viewModel.windSpeed
        iconImageView.image = viewModel.image
    }
}
