//
//  WeekViewController.swift
//  Sunny
//
//  Created by Radio Shaolin on 01.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import UIKit

protocol WeekViewControllerDelegate {
    func controllerDidRefresh(controller: WeekViewController)
}

class WeekViewController: WeatherViewController {

    // MARK: - Properties

    @IBOutlet var tableView: UITableView!

    // MARK: -

    var delegate: WeekViewControllerDelegate?
    
    // MARK: -

    var viewModel: WeekViewViewModel? {
        didSet {
            updateView()
        }
    }

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    // MARK: - Public Interface

    override func reloadData() {
        updateView()
    }
    
    // MARK: - View Methods

    private func setupView() {
        setupTableView()
        setupRefreshControl()
    }

    private func updateView() {
        activityIndicatorView.stopAnimating()
        tableView.refreshControl?.endRefreshing()

        if let _ = viewModel {
            updateWeatherDataContainer()

        } else {
            messageLabel.isHidden = false
            messageLabel.text = "Sunny was unable to fetch weather data."
            
        }
    }

    // MARK: -

    private func setupTableView() {
        tableView.separatorInset = UIEdgeInsets.zero
    }

    private func setupRefreshControl() {
        // Initialize Refresh Control
        let refreshControl = UIRefreshControl()

        // Configure Refresh Control
        refreshControl.addTarget(self, action: #selector(WeekViewController.didRefresh(sender:)), for: .valueChanged)

        // Update Table View)
        tableView.refreshControl = refreshControl
    }

    // MARK: -

    private func updateWeatherDataContainer() {
        weatherDataContainer.isHidden = false

        tableView.reloadData()
    }

    // MARK: - Actions

    @objc func didRefresh(sender: UIRefreshControl) {
        delegate?.controllerDidRefresh(controller: self)
    }
    
}

extension WeekViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        guard let viewModel = viewModel else { return 0 }
        return viewModel.numberOfSectons
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else { return 0 }
        return viewModel.numberOfDays
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: WeatherDayTableViewCell.reuseIdentifier, for: indexPath) as? WeatherDayTableViewCell else { fatalError("Unexpected Table View Cell") }

        if let weatherDayRepresentable = viewModel?.viewModel(for: indexPath.row) {
            cell.configure(withViewModel: weatherDayRepresentable)
        }

        return cell
    }

}
