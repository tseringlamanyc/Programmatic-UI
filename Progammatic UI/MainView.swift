//
//  MainView.swift
//  Progammatic UI
//
//  Created by Tsering Lama on 1/28/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let defaultMessage = "No default color, go to settings"
    
    // create a label
    // creates once the view is done ,, gets created when called
    public lazy var messageLabel: UILabel = {
        // initialzied it here ..... creates the label here
        let label = UILabel()
        label.text = defaultMessage
        label.shadowColor = .systemRed
        label.textAlignment = .center
        return label
    }() // creates and calls simultaneously
    
    // create a button
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.systemRed, for: .normal)
        return button
    }()
    
    
    // this gets called if view is done programmatically
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    // if this view gets initialized from storyboard
    // this gets called
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        settingUpLabel()
        settingUpButton()
    }
    
    private func settingUpButton() {
        addSubview(resetButton)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            resetButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resetButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 20)
        ])
    }
    
    private func settingUpLabel() {
        // add the messageLabel to the main view
        addSubview(messageLabel)  // returns the message label we created above
        
        // set constrains for message label in code
        messageLabel.translatesAutoresizingMaskIntoConstraints = false  // inorder to use autolayout ,, true by default
        NSLayoutConstraint.activate([
            // set top anchor 20 points from the safe area top
            messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            
            // set padding to leading
            messageLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            // set padding to trailing
            messageLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
}
