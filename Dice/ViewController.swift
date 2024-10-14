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
  private var diceArray: [UIImage?] = DiceImageHelper.shared.getDiceImages()
  
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
    greenBackground.image = UIImage(named: Constants.backgroundString)
    greenBackground.contentMode = .scaleAspectFill
  }
  
  private func configureDiceImage(imageIndex: Int,
                                  alpha: CGFloat,
                                  for imageView: UIImageView) {
    imageView.image = diceArray[imageIndex]
    imageView.alpha = alpha
    imageView.layer.cornerRadius = Constants.imageConrnerRadius
  }

  private func configureFirstDiceImages() {
    configureDiceImage(imageIndex: Constants.one,
                       alpha: Constants.alpha,
                       for: firstDiceImage)
  }

  private func configureSecondDiceImages() {
    configureDiceImage(imageIndex: Constants.four,
                       alpha: Constants.alpha,
                       for: secondDiceImage)
  }

  private func configureRollButton() {
    rollButton.backgroundColor = .customRed
    rollButton.tintColor = .white
    rollButton.layer.cornerRadius = Constants.buttonCornerRadius
  }

  // MARK: - Action
  @IBAction private func rollDices() {
    let firstRandomIndex: Int = Int.random(in: .zero..<diceArray.count)
    let secondRandomIndex: Int = Int.random(in: .zero..<diceArray.count)

    UIView.transition(
      with: firstDiceImage,
      duration: Constants.animationDuration,
      options: .transitionCrossDissolve,
      animations: {
        self.configureDiceImage(
          imageIndex: firstRandomIndex,
          alpha: Constants.alphaOne,
          for: self.firstDiceImage
        )
        self.configureDiceImage(
          imageIndex: secondRandomIndex,
          alpha: Constants.alphaOne,
          for: self.secondDiceImage
        )
      }, completion: nil)
  }
}
