//
//  SceneDelegate.swift
//  Dice
//
//  Created by Julieta Fernandez Irujo on 31/03/2021.
//  Copyright © 2021 Julieta Fernandez Irujo. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  // MARK: - Porperties
  var window: UIWindow?

  // MARK: - Methods
  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let _: UIWindowScene = (scene as? UIWindowScene) else { return }
  }
}
