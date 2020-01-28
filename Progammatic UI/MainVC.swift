//
//  ViewController.swift
//  Progammatic UI
//
//  Created by Tsering Lama on 1/28/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        configureNavBar()
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


}

