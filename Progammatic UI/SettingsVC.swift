//
//  SettingsVC.swift
//  Progammatic UI
//
//  Created by Tsering Lama on 1/28/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    
    private var settingView = SettingsView()
    
    // data for pickerView
    private let colors = ["Red", "Green", "Blue","White"]
    
    override func loadView() {
        view = settingView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        navigationItem.title = "Bawls"
        
        // configure delegate and datasource of pickerview
        settingView.pickerView.delegate = self
        settingView.pickerView.dataSource = self
    }
}

extension SettingsVC: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    
}
