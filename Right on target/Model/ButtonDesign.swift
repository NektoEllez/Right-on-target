//
//  ButtonDesign.swift
//  Right on target
//
//  Created by Иван Марин on 22.06.2021.
//

import UIKit

struct ButtonDesign {
    func settings(button: UIButton!, andColor color: UIColor){
        
        let size = CGFloat(15)
        
        button.titleEdgeInsets.left = size // add left padding.
        button.titleEdgeInsets.right = size // add right padding.
        button.titleEdgeInsets.top = size // add top padding.
        button.titleEdgeInsets.bottom = size // add bottom padding.
        
        button.titleLabel?.font         = UIFont.boldSystemFont(ofSize: size)
        button.layer.cornerRadius       = button.frame.width / size
        button.setTitleColor(color, for: .normal)
        
        button.layer.borderWidth = 1
        button.layer.borderColor = color.cgColor
        button.layer.cornerRadius = button.frame.width / size
    }
}
