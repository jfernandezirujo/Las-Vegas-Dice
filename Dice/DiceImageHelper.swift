//
//  DiceImageHelper.swift
//  LasVegasDicee
//
//  Created by Julieta Fernandez Irujo on 14/10/2024.
//  Copyright © 2024 Julieta Fernandez Irujo. All rights reserved.
//

import UIKit.UIImage

struct DiceImageHelper {
  
  // MARK: - Properties
  static let shared: DiceImageHelper = DiceImageHelper()
  
  // MARK: - Methods
  func getDiceImages() -> [UIImage] {
    let diceArray: [UIImage] = [UIImage(named: Constants.diceOne),
                                 UIImage(named: Constants.diceTwo),
                                 UIImage(named: Constants.diceThree),
                                 UIImage(named: Constants.diceFour),
                                 UIImage(named: Constants.diceFive),
                                 UIImage(named: Constants.diceSix)]
      .compactMap { $0 }
    
    return diceArray
  }
  
}
