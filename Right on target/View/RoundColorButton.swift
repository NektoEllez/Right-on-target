//
//  RoundColorButton.swift
//  Right on target
//
//  Created by Иван Марин on 21.06.2021.
//

import UIKit

class RoundColorButton: UIButton {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = layer.frame.height
    }
    
}
