//
//  SettingsVC.swift
//  Progammatic UI
//
//  Created by Tsering Lama on 1/28/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

struct AppKey {
    static let appColorKey = "app color"
    static let indexKey = "index key"
}


class SettingsVC: UIViewController {
    
    private var settingView = SettingsView()
    
    // data for pickerView
    private let colors = ["Red", "Green", "Blue","White"]
    
    override func loadView() {
        view = settingView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        navigationItem.title = "Bawls"
        
        // configure delegate and datasource of pickerview
        settingView.pickerView.delegate = self
        settingView.pickerView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let indexUser = UserDefaults.standard.object(forKey: AppKey.indexKey) as? Int
        settingView.pickerView.selectRow(indexUser!, inComponent: 0, animated: true)
        let colorName = colors[indexUser!]
        view.backgroundColor = UIColor(named: colorName)
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let colorName = colors[row]
        view.backgroundColor = UIColor(named: colorName)
        UserDefaults.standard.set(colorName, forKey: AppKey.appColorKey)
        UserDefaults.standard.set(row, forKey: AppKey.indexKey)
    }
    
}
