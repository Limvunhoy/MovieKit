//
//  TabBarViewController.swift
//  MovieKit
//
//  Created by IG_Se7enzZ on 3/9/21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let homeViewController     = HomeViewController()
    let searchViewController   = SearchViewController()
    let filmViewController     = FilmViewController()
    let accountViewController  = AccountViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    private func initView() {
        
        homeViewController.navigationItem.largeTitleDisplayMode     = .always
        searchViewController.navigationItem.largeTitleDisplayMode   = .always
        filmViewController.navigationItem.largeTitleDisplayMode     = .always
        accountViewController.navigationItem.largeTitleDisplayMode  = .always
        
        homeViewController.title    = "Home"
        searchViewController.title  = "Search"
        filmViewController.title    = "Films"
        accountViewController.title = "Account"
        
        let homeNav     = UINavigationController(rootViewController: homeViewController)
        let searchNav   = UINavigationController(rootViewController: searchViewController)
        let filmNav     = UINavigationController(rootViewController: filmViewController)
        let accountNav  = UINavigationController(rootViewController: accountViewController)
        
        homeNav.navigationBar.prefersLargeTitles    = true
        searchNav.navigationBar.prefersLargeTitles  = true
        filmNav.navigationBar.prefersLargeTitles    = true
        accountNav.navigationBar.prefersLargeTitles = true
        
        homeNav.tabBarItem      = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        searchNav.tabBarItem    = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        filmNav.tabBarItem      = UITabBarItem(title: "Films", image: UIImage(systemName: "film"), tag: 2)
        accountNav.tabBarItem   = UITabBarItem(title: "Account", image: UIImage(systemName: "person"), tag: 3)
        
        setViewControllers([homeNav, searchNav, filmNav, accountNav], animated: false)
        tabBar.tintColor = Color.PRIMARY_COLOR
        
    }
}
