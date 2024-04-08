//
//  SceneDelegate.swift
//  Homework 14 (loginPage)
//
//  Created by vako on 07.04.24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: scene)
        window?.rootViewController = LogInVC()
        window?.makeKeyAndVisible()
    }
    
    
}
