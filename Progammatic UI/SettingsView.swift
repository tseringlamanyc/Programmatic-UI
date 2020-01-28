//
//  SettingsView.swift
//  Progammatic UI
//
//  Created by Tsering Lama on 1/28/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class SettingsView: UIView {
    
    public lazy var pickerView: UIPickerView = {
       let pv = UIPickerView()
       return pv
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setUpPickerView()
    }
    
    private func setUpPickerView() {
        addSubview(pickerView)
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pickerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            pickerView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    
}
