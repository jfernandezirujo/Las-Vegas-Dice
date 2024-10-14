//
//  UIColot+Extension.swift
//  Dice
//
//  Created by Julieta Fernandez Irujo on 27/08/2023.
//  Copyright © 2023 Julieta Fernandez Irujo. All rights reserved.
//

import UIKit.UIColor

extension UIColor {

  // MARK: - Properties
  static let customRed: UIColor = UIColor(displayP3Red: Constants.redValue / Constants.colorValue,
                                          green: Constants.greenValue / Constants.colorValue,
                                          blue: Constants.blueValue / Constants.colorValue,
                                          alpha: Constants.alphaOne)
}
