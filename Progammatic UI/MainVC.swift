//
//  ViewController.swift
//  Progammatic UI
//
//  Created by Tsering Lama on 1/28/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    private var mainView = MainView()
    
    // for programmatic UI implement and set up the view in loadView()
    
    // gets called before viewDidLoad ,, sets up initial view of the view controller
    // dont do super in loadView
    override func loadView() {
        view = mainView 
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        configureNavBar()
        
        // need action for button
        mainView.resetButton.addTarget(self, action: #selector(resetColors(sender:)), for: .touchUpInside)
}
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateAppColor()
    }
    
    private func updateAppColor() {
        if let colorName = UserDefaults.standard.object(forKey: AppKey.appColorKey) as? String {
            view.backgroundColor = UIColor(named: colorName)
        } else {
            print("no background color saved")
        }
    }
    
    private func configureNavBar() {
        navigationItem.title = "Lets fighting loveeeeeee"
        
        // Bar button item
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(showSettings(_:)))
    }
    
    @objc
    private func showSettings(_ sender: UIBarButtonItem) {
        // segue to setting VC
        let settingVC = SettingsVC()
        navigationController?.pushViewController(settingVC, animated: true)
        
        //present(settingVC, animated: true)
        //settingVC.modalPresentationStyle = .overCurrentContext
        //settingVC.modalTransitionStyle = .flipHorizontal
        
        print("show settings")
    }
    
    @objc
    private func resetColors(sender: UIButton) {
        print("Button pressed")
    }


}

