//
//  main.swift
//  FunctionsPrctice
//
//  Created by Gaston Seneza on 5/2/16.
//  Copyright © 2016 Gaston Seneza. All rights reserved.
//

import Foundation

func calculateArea(width: Int, length: Int) -> Int{
    let area = width * length
}

func carpetCostCalculator(width width: Int, length length:Int, carpetColor: String = "tan") -> ( Int, carpetColor){
    var price: Int
    let area = calculateArea(width, length: length)
    switch carpetColor{
        case "tan": price = area * 4
        case "gray": price = area * 5
        case "blue": price = area * 2
        
    default: price = 0
    }
    
    return (price, carpetColor)
}

let result = carpetCostCalculator(width: 20, length: 30)

print(result.price,", ", result.carpetColor)
