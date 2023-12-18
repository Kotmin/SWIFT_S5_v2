//
//  main.swift
//  lab5PJT
//
//  Created by student on 14/11/2022.
//  Copyright © 2022 dB0rtsv0v. All rights reserved.
//

import Foundation

print("Hello, World!")

func Fibb(n: Int) -> Int{
    if n<2{
        return 1
    }
    return (Fibb(n: (n-1)) + Fibb(n: (n-2)))
}

func ciagFibb(liczba: Int) -> Int{
    var n:Int = 0
    var i:Int = 0
    while liczba > n {
        n = Fibb(n: i)
        i+=1
        
    }
    return n
    
    
}


//To sie troche minelo z poleceniem


//zad 2

func czyPierwsza(liczba: Int) -> Bool{
    if liczba < 2
    {
        return true
    }
    for i in 2..<liczba {
        if liczba%i==0{
            return false
        }
    }
    return true
}

var licz:Int
licz = Int(readLine()!)!

print(ciagFibb(liczba: licz))


for i in 1...10{
    print(czyPierwsza(liczba: i))
}


//zad 3


func srGeometryczna(liczba: Int){
    var temp:Int = liczba
    if liczba<100{
        print("Podaba liczba musi byc co najmniej trzycyfrowa\n")
    }
    else {
        var sr:Double = 1
        var licznik:Int = 0
        while temp>0{
            sr = sr * Double((temp % 10))
            licznik += 1
            temp /= 10
            
        }
        
        print(pow(sr,Double(1.0/Double(licznik))))
    }
}


func isPalindrome(word:String) -> Bool{
    return word == String(word.reversed())
}


func isPalindromeLoop(word:String) -> Bool{
    var rev_word:String = ""
    for char in word.lazy.reversed() {
        rev_word.append(char)
}
    return word == rev_word
}

func zad5(numbers: [Int]){
    var min = 0
    var max = 0
    
    let dl:Int = (numbers.count - 3)
    for i in  0...dl {
        if numbers[i+1] > numbers[i] && numbers[i+1] > numbers[i+2] {
            max += 1
        }
        if numbers[i+1] < numbers[i] && numbers[i+1] < numbers[i+2] {
            min += 1
        }
        
    }
    
    print(" max: \(max) min: \(min)")
}


let test_arr = [1,2,0,3,8,7]



srGeometryczna(liczba: 2257)


print(isPalindrome(word: "madam"))
print(isPalindromeLoop(word: "madwam"))


zad5(numbers: test_arr)


