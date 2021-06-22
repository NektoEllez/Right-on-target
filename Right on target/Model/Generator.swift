//
//  Generator.swift
//  Right on target
//
//  Created by Иван Марин on 25.05.2021.
//

import Foundation

/**
 Сущность "Генератор случайных чисел"
 */

protocol GeneratorProtocol
{
    func getRandomValue() -> Int
}

class NumberGenerator           :   GeneratorProtocol
{
    private let startRangeValue :   Int
    private let endRangeValue   :   Int
    init?(startValue            :   Int, endValue: Int) {
        guard startValue        <=  endValue else {
            return nil
        }
        startRangeValue         =   startValue
        endRangeValue           =   endValue
    }
    func getRandomValue() -> Int {
        (startRangeValue...endRangeValue).randomElement()!
    }
}
