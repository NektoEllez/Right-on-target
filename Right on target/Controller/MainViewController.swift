//
//  MainViewController.swift
//  Right on target
//
//  Created by Иван Марин on 21.06.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var colorGameButton: UIButton!
    @IBOutlet weak var numberGameButton: UIButton!
    var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttons = [numberGameButton, colorGameButton]
        
        for button in buttons {
            button.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            button.titleEdgeInsets.left = 15 // add left padding.
            button.titleEdgeInsets.right = 15 // add right padding.
            button.titleEdgeInsets.top = 15 // add top padding.
            button.titleEdgeInsets.bottom = 15 // add bottom padding.
            button.titleLabel?.font         = UIFont.boldSystemFont(ofSize: 15)
            button.layer.cornerRadius       = button.frame.width / 15
        }
    }
    

    // MARK: - Переходы
    
    @IBAction func previousScreen( unwindSegue: UIStoryboardSegue ) {
        return
    }

}
