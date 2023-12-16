
// where to look

  // l3 string operations
  //

//user input





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



// ----------------------------------------------------------------



// for


for i in 1...10{
    print(czyPierwsza(liczba: i))
}

// if



// function 
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


// 1d array

// 2d array


let mac: [[Int]] = [[10, 20, 30], [40, 50, 60]]

func showMatrix(_ matrix: [[Int]]) {
    for row in matrix {
        for element in row {
            print(element, terminator: " ")
        }
        print()
    }
}

showMatrix(mac)



// try catch errors



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
