//
//  DiceViewController.swift
//  Dice
//
//  Created by Julieta Fernandez Irujo on 31/03/2021.
//  Copyright © 2021 Julieta Fernandez Irujo. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {

  // MARK: - Outlets
  @IBOutlet private var greenBackground: UIImageView!
  @IBOutlet private var firstDiceImage: UIImageView!
  @IBOutlet private var secondDiceImage: UIImageView!
  @IBOutlet private var rollButton: UIButton!

  // MARK: - Properties
  private var firstDice: DiceModel = DiceModel()
  private var secondDice: DiceModel = DiceModel()

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

  private func configureRollButton() {
    rollButton.backgroundColor = .customRed
    rollButton.tintColor = .white
    rollButton.layer.cornerRadius = Constants.buttonCornerRadius
  }

  private func configureDiceImage(
    diceImage: UIImage,
    alphaValue: CGFloat,
    targetImageView imageView: UIImageView
  ) {
    imageView.image = diceImage
    imageView.alpha = alphaValue
    imageView.layer.cornerRadius = Constants.imageConrnerRadius
  }

  private func configureFirstDiceImages(with alpha: CGFloat = Constants.alpha) {
    configureDiceImage(
      diceImage: firstDice.image,
      alphaValue: alpha,
      targetImageView: firstDiceImage
    )
  }

  private func configureSecondDiceImages(with alpha: CGFloat = Constants.alpha) {
    configureDiceImage(
      diceImage: secondDice.image,
      alphaValue: alpha,
      targetImageView: secondDiceImage
    )
  }

  // MARK: - Action
  @IBAction private func rollDices() {
    firstDice.roll()
    secondDice.roll()

    UIView.transition(
      with: firstDiceImage,
      duration: Constants.animationDuration,
      options: .transitionCrossDissolve,
      animations: {
        self.configureFirstDiceImages(with: Constants.alphaOne)
        self.configureSecondDiceImages(with: Constants.alphaOne)
      }, completion: nil)
  }
}
