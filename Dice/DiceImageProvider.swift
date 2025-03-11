//
//  DiceImageHelper.swift
//  LasVegasDicee
//
//  Created by Julieta Fernandez Irujo on 14/10/2024.
//  Copyright © 2024 Julieta Fernandez Irujo. All rights reserved.
//

import UIKit.UIImage

struct DiceImageProvider {
  
  // MARK: - Methods
  static func getDiceImages() -> [UIImage] {
    let diceArray: [UIImage] = [
      Constants.diceOne,
      Constants.diceTwo,
      Constants.diceThree,
      Constants.diceFour,
      Constants.diceFive,
      Constants.diceSix
    ]
      .compactMap { UIImage(named: $0) }
    
    return diceArray
  }
  
}
