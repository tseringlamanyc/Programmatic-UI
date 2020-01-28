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
        return label
    }() // creates and calls simultaneously
    
    // create a button
    
    
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
    }
    
    private func settingUpLabel() {
        // add the messageLabel to the main view
        addSubview(messageLabel)  // returns the message label we created above
        
        // set constrains for message label in code
        messageLabel.translatesAutoresizingMaskIntoConstraints = false  // inorder to use autolayout ,, true by default
        NSLayoutConstraint.activate([
            // set horizontal and vertical constraint 
        ])
    }
}
