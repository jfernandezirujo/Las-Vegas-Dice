//
//  ViewController.swift
//  Dice
//
//  Created by Julieta Fernandez Irujo on 31/03/2021.
//  Copyright © 2021 Julieta Fernandez Irujo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Properties
  @IBOutlet private var greenBackground: UIImageView!
  @IBOutlet private var firstDiceImage: UIImageView!
  @IBOutlet private var secondDiceImage: UIImageView!
  @IBOutlet private var rollButton: UIButton!
  
  private var constants: Constants = Constants.shared
  
  // MARK: - viewDidLoad
  override func viewDidLoad() {
    super.viewDidLoad()
    configureUI()
  }
  
  // MARK: - Methods
  private func configureUI() {
    configureBackground()
    configureFirstDiceImages()
    configureSecondDiceImages()
    configureRollButton()
  }
  
  private func configureBackground() {
    greenBackground.image = UIImage(named: constants.backgroundString)
    greenBackground.contentMode = .scaleAspectFill
  }
  
  private func configureDiceImage(imageIndex: Int,
                                  imageView: UIImageView) {
      imageView.image = constants.diceArray[imageIndex]
      imageView.alpha = constants.alpha
      imageView.layer.cornerRadius = constants.imageConrnerRadius
  }

  private func configureFirstDiceImages() {
      configureDiceImage(imageIndex: constants.one,
                         imageView: firstDiceImage)
  }

  private func configureSecondDiceImages() {
      configureDiceImage(imageIndex: constants.four,
                         imageView: secondDiceImage)
  }
  
  private func configureRollButton() {
    rollButton.backgroundColor = .customRed
    rollButton.tintColor = .white
    rollButton.layer.cornerRadius = constants.buttonConrnerRadius
  }
  
  private func configureDiceImage(imageIndex: Int,
                                  alpha: CGFloat,
                                  for imageView: UIImageView) {
      imageView.image = constants.diceArray[imageIndex]
      imageView.alpha = alpha
  }
  
  // MARK: - Action
  @IBAction private func rollDices() {
    let firstRandomIndex: Int = Int.random(in: .zero..<constants.diceArray.count)
    let secondRandomIndex: Int = Int.random(in: .zero..<constants.diceArray.count)
    
      configureDiceImage(imageIndex: firstRandomIndex,
                         alpha: constants.alphaOne,
                         for: firstDiceImage)
      configureDiceImage(imageIndex: secondRandomIndex,
                         alpha: constants.alphaOne,
                         for: secondDiceImage)
  }
}
