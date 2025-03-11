//
//  DiceModel.swift
//  LasVegasDicee
//
//  Created by Julieta Fernandez Irujo on 11/03/2025.
//  Copyright © 2025 Julieta Fernandez Irujo. All rights reserved.
//

import UIKit

class DiceModel {

  // MARK: - Properties
  private var currentValue: Int
  private var diceArray: [UIImage] = DiceImageProvider.getDiceImages()
  var image: UIImage {
    return diceArray[currentValue]
   }

  // MARK: - init
  init() {
    self.currentValue = Int.random(in: .zero..<diceArray.count)
  }

  // MARK: - Method
  func roll() {
    self.currentValue = Int.random(in: .zero..<diceArray.count)
  }
}
