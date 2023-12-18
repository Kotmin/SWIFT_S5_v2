//
//  main.swift
//  zad_3_1_PJT
//
//  Created by student on 24/10/2022.
//  Copyright © 2022 dB0rtsv0v. All rights reserved.
//

import Foundation

print("Hello, World!")


let str = "Napis oneline\n"
let mstr = """
Fist line

Second line
"""


print(str
    + mstr)

//zad 3_2

let zdanie = ["Nauka kodowania to nie tylko nauka języka technologii.","To odkrywanie nowych sposobów myślenia","i urzeczywistnianie rozmaitych koncepcji."]


for i in 0...2 {
    print("\t \(zdanie[i])\n")
}


//zad 3_3

var s: String

var obecny_rok:Int = 2022

print(" Podaj dane w formacie imię, drugie imię, nazwisko i rok urodzenia.")

s = String(readLine()!)

var separated_s = s.components(separatedBy: ",")


//separated_s = str.trimmingCharacters(in: .whitespacesAndNewlines)

separated_s.remove(at: 2)




separated_s[2] = String( obecny_rok -  (separated_s[2] as NSString).integerValue )

print((obecny_rok -  (separated_s[2] as NSString).integerValue ))



if (separated_s[0].hasPrefix("D"))
{
    print("\nImie \(separated_s[0]) zaczyna sie na literke 'D'")
}
else
{
print("\nImie \(separated_s[0]) nie zaczyna sie na literke 'D'")
}


var new_s = separated_s.joined(separator:" ")

print(s)

print(separated_s)


print(new_s)


//zad 3_4

func zad_3_4(ciag:String,znak:Character,liczba:Int) -> Void
{
    if ciag.hasPrefix(String(znak)) {
        print("Wcztany znak znajduje sie na poczatku lancucha")
    }
    
    if ciag.hasSuffix(String(znak)) {
        print("Wcztany znak znajduje sie na koncu lancucha")
    }
    if ciag[ciag.index(ciag.startIndex, offsetBy: liczba)] == znak {
        print("Wcztany znak znajduje sie na pozycji \(liczba) od poczatku lancucha")
    }
    
    if ciag[ciag.index(ciag.endIndex, offsetBy: (liczba * -1) - 1) ] == znak {
        print("Wcztany znak znajduje sie na pozycji \(liczba) od koncu lancucha")
    }
    
    
    
    
}


zad_3_4(ciag: "alb ma kota", znak:"o", liczba: 2)
