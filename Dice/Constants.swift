//
//  Constants.swift
//  Dice
//
//  Created by Julieta Fernandez Irujo on 08/11/2023.
//  Copyright © 2023 Julieta Fernandez Irujo. All rights reserved.
//

import UIKit

struct Constants {
  
  static let shared: Constants = Constants()
  
  var diceArray: [UIImage?] = [UIImage(named: "diceOne"),
                               UIImage(named: "diceTwo"),
                               UIImage(named: "diceThree"),
                               UIImage(named: "diceFour"),
                               UIImage(named: "diceFive"),
                               UIImage(named: "diceSix")]
  var buttonConrnerRadius: CGFloat = 7
  var imageConrnerRadius: CGFloat = 12
  var alpha: CGFloat = 0.5
  var alphaOne: CGFloat = 1
  var one: Int = 1
  var four: Int = 4
  var backgroundString: String = "greenBackground"
  
}
