//
//  SettingsTableViewCell.swift
//  Sunny
//
//  Created by Radio Shaolin on 01.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    // MARK: - Type Properties

    static let reuseIdentifier = "SettingsCell"

    // MARK: - Properties

    @IBOutlet var mainLabel: UILabel!

    // MARK: - Initialization

    override func awakeFromNib() {
        super.awakeFromNib()

        // Configure Cell
        selectionStyle = .none
    }

    func configure(withViewModel viewModel: SettingsRepresentable) {
        mainLabel.text = viewModel.text
        accessoryType = viewModel.accessoryType
    }
    
}
