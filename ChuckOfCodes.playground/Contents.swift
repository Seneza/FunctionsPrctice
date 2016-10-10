//: Playground - noun: a place where people can play

import UIKit

func calculateArea(length: Int, width:Int) -> Int{
    return width * length
}

func carpetColorCalculator(length length: Int, width:Int, carpetColor: String = "tan") -> (price: Int, carpetColor: String){
    
    let area = calculateArea(length, width: width)
    var price:Int
    
    switch carpetColor{
        case "tan": price = area * 5
        case "blue": price = area * 4
        case "gray": price = area * 2
    default: price = 0
        
    }
    
    return (price, carpetColor)
}

let result = carpetColorCalculator(length: 40, width: 20)
print(result.price)
print(result.carpetColor)

let 😡 = "jacques"
let 🤗 = " Smiles a lot!"
let concat = 😡 + 🤗
print(concat)

var counter = 0
var password = "Meet me in St. Louis"
for character in password.characters {
    if character == "e" {
        counter += 1
        print("Found an 'e'")
    }
}
print("found an 'e' \(counter) times")

var personalizedEncouragement = " You can do it, Solange!"
personalizedEncouragement = personalizedEncouragement.stringByReplacingOccurrencesOfString("Solange", withString: "Thierry")
print(personalizedEncouragement)

let birthYear = 2000
var currentYear = 2016
let age = currentYear - birthYear
print("Your age is \(age) ")

var c: UIColor
c = UIColor.redColor()
print(c)

var zee:Int?
if let zee = zee {
    zee * 2
}
print(zee)

var imageView = UIImageView()
imageView.image = UIImage(named:"jpgs")

if let image = imageView.image{
    let size = image.size
} else {
    print("This image hasn't been set")
}

imageView.image

//Optional chaining
let imageSize = imageView.image?.size
imageSize.dynamicType

//DownCasting optionals in swift

//downcast = cast such an object as an instance of its subclass

class Beverage{
    var category: String
    init(category: String){
        self.category = category
    }
}

class HotDrink: Beverage{
    var pairing: String
    init(category:String, pairing:String){
        self.pairing = pairing
        super.init(category: category)
    }
}

class ColdDrink: Beverage{
    var vessel:String
    init(category:String, vessel: String){
        self.vessel = vessel
        super.init(category: category)
    }
}

var drinkChoices = [HotDrink(category: "Coffee", pairing: "biscott"),
                    HotDrink(category: "tea", pairing: "crumps"),
                    ColdDrink(category: "lemonade", vessel: "glass"),
                    ColdDrink(category: "beer", vessel: "frosty mug")
    
]

//Generic drink offer
for beverage in drinkChoices{
    print("Can I get you a \(beverage.category) ")
}

//Specific drink offer

for beverage in drinkChoices{
    if let coldDrink = beverage as? ColdDrink{
        print("Can I offer You a \(coldDrnk.category) of \(ColdDrink.category ")
    }
    }
