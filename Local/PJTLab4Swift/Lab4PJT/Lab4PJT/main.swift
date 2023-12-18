//
//  main.swift
//  Lab4PJT
//
//  Created by student on 07/11/2022.
//  Copyright © 2022 dB0rtsv0v. All rights reserved.
//

import Foundation

print("Hello, World!")

//guard let year = Int(readLine()!) else{
//    fatalError("This is not an integer")
//
//}
//print(year)
let Year = Int(readLine()!)!
//let Year:Int
if( Year is Int )
//if(let Year = Int(readLine()!)!)
{
    if((Year % 400 == 0) || (Year % 100 != 0) && (Year % 4 == 0))
    {
        print(Year,"was a leap year")
    }
    else
    {
        print(Year,"was  not a leap year")
    }
    
}
else{
    print("Not valid input")
}


//tutaj zeby to ladnie zrobic to albo try catch albo podejsice obiektowe

//zad 2

//zad 4.7 Plec


enum CustmError: Error {
    case nonNumericalInput
    
    case wrongLen
    
    case unexpected(code: Int)
}


func isConvertableToInt(pesel: String) ->Bool{
    return pesel.isNumber
        
    
}

//func canBeInt(n: String) -> Bool{
//    let digitsCharacters = CharacterSet(charactersIn: "0123456789")
//    return CharacterSet(charactersIn: self).isSubset(of: digitsCharacters)
//}

extension String {
    var isNumber: Bool {
        let digitsCharacters = CharacterSet(charactersIn: "0123456789")
        return CharacterSet(charactersIn: self).isSubset(of: digitsCharacters)
    }
}
var pesel = readLine()!


do {
    try Int(pesel)!
    guard isConvertableToInt(pesel: pesel) else {
        throw CustmError.nonNumericalInput
    }
    guard pesel.count == 11 else {
        throw CustmError.wrongLen
    }
    var sex = Int(pesel)!
    sex %= 100
    sex = sex/10
    if(sex%2==0)
    {
        print("Jest to pesel kobiety")
    }
    else{
        print("Jest to pesel mezczyzny")
    }
}
    catch CustmError.nonNumericalInput {
        print("To nie jest format PESEL")
    }
    catch CustmError.wrongLen {
        
        print(pesel.count,"Niewlasciwa ilosc znakow")
    }
    
    
//zad 4.6 is vowel

var znak:String

znak = readLine()!

do {
    try 1==1
    guard pesel.count == 1 else {
        throw CustmError.wrongLen
    }
    
    switch(znak){
    case "a":
    default: print("To nie jest samogloska")
    }
}


