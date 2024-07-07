//
//  ViewController.swift
//  DataStorageTraining
//
//  Created by Ertannic Saralay on 05.07.2024.
//

import UIKit

final class RMTabViewController: UITabBarController {
    
    
    
    // MARK: - Views

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTabs()
        
    }


    private func setUpTabs() {
        
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic

         
        let charactersNav = UINavigationController(rootViewController: charactersVC)
        let locationsNav = UINavigationController(rootViewController: locationsVC)
        let episodesNav = UINavigationController(rootViewController: episodesVC)
        let settingsNav = UINavigationController(rootViewController: settingsVC)
        
        for nav in [charactersNav, locationsNav, episodesNav, settingsNav] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [charactersNav, locationsNav, episodesNav, settingsNav],
            animated: true
        )
    }
    
}

