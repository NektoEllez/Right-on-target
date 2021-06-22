//
//  ViewController.swift
//  Right on target
//
//  Created by Иван Марин on 24.05.2021.
//

import UIKit

class NumberViewController: UIViewController {
    
    // Экземпляр игры с числами
    var gameFactory: Game<SecretNumericValue>!
    
    // Элементы на сцене
    @IBOutlet var slider: UISlider!
    @IBOutlet var secretValueLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var checkButton: UIButton!
    
    // MARK: - Жизненный цикл
    
    override func loadView() {
        super.loadView()
        print("loadView")
        let buttonsDesign = ButtonDesign()
        buttonsDesign.settings(button: backButton, andColor: .black)
        buttonsDesign.settings(button: checkButton, andColor: .black)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        gameFactory = (GameFactory.getNumericGame() as! Game<SecretNumericValue>)
        // Обновляем данные о текущем значении загаданного числа
        updateLabelWithSecretNumber(newText: String(gameFactory.secretValue.value))
    }
    
    // MARK: - Взаимодействие View - Model
    
    // Проверка выбранного пользователем числа
    @IBAction func checkNumber() {
        // Высчитываем очки за раунд
        var userSecretValue = gameFactory.secretValue
        userSecretValue.value = Int(slider.value)
        gameFactory.calculateScore(secretValue: gameFactory.secretValue, userValue: userSecretValue)
        // Проверяем, окончена ли игра
        if gameFactory.isGameEnded {
            // Показываем окно с итогами
            showAlertWith(score: gameFactory.score)
            // Рестартуем игру
            gameFactory.restartGame()
        } else {
            // Начинаем новый раунд игры
            gameFactory.startNewRound()
        }
        // Обновляем данные о текущем значении загаданного числа
        updateLabelWithSecretNumber(newText: String(gameFactory.secretValue.value))
    }
    
    // MARK: - Обновление View
    
    // Обновление текста загаданного числа
    func updateLabelWithSecretNumber(newText: String ) {
        secretValueLabel.text = newText
    }
    
    // Отображение всплывающего окна со счетом
    private func showAlertWith( score: Int ) {
        let alert = UIAlertController(
                        title: "Игра окончена",
                        message: "Вы заработали \(score) очков",
                        preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
