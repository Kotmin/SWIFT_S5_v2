enum Ozdoba {
  case bombka, cukierek, pierniczek, zabawka
}

enum RodzajDrzewa {
  case lisciaste, iglaste
}

class Drzewo {
  var wysokosc: Double
  var rodzaj: RodzajDrzewa
  var rokZasadzenia: Int

  init(wysokosc: Double, rodzaj: RodzajDrzewa, rokZasadzenia: Int) {
      self.wysokosc = wysokosc
      self.rodzaj = rodzaj
      self.rokZasadzenia = rokZasadzenia
  }

  func wyswietlDane() {
      print("Wysokość drzewa: \(wysokosc) m")
      print("Rodzaj drzewa: \(rodzaj)")
      print("Rok zasadzenia: \(rokZasadzenia)")
  }
}

class Choinka: Drzewo {
  var liczbaPoziomow: Int
  var wysokoscPnia: Double // poniżej gałęzi
  var liczbaOzdob: Int
  var rodzajOzdoby: Ozdoba

  init(wysokosc: Double, rodzaj: RodzajDrzewa, rokZasadzenia: Int, liczbaPoziomow: Int, wysokoscPnia: Double, liczbaOzdob: Int, rodzajOzdoby: Ozdoba) {
      self.liczbaPoziomow = liczbaPoziomow
      self.wysokoscPnia = wysokoscPnia
      self.liczbaOzdob = liczbaOzdob
      self.rodzajOzdoby = rodzajOzdoby
      super.init(wysokosc: wysokosc, rodzaj: rodzaj, rokZasadzenia: rokZasadzenia)
  }

  override func wyswietlDane() {
      super.wyswietlDane()
      print("Liczba poziomów: \(liczbaPoziomow)")
      print("Wysokość pnia poniżej gałęzi: \(wysokoscPnia) m")
      print("Liczba ozdób: \(liczbaOzdob)")
      print("Rodzaj ozdoby: \(rodzajOzdoby)")
  }

  // func rysujChoinke() {
  //     var length = liczbaPoziomow * 2
  //     var starcount = 1
  //     var spacecount = length

  //     for _ in 1...liczbaPoziomow {
  //         for _ in 1...spacecount {
  //             print(" ", terminator: "")
  //         }

  //         for _ in 1...starcount {
  //             print("*", terminator: "")
  //         }

  //         print()
  //         starcount += 2
  //         spacecount -= 1
  //     }

  //     spacecount = length
  //     for _ in 1...3 { // 3 to wysokość pnia
  //         for _ in 1...spacecount-1 {
  //             print(" ", terminator: "")
  //         }

  //         for _ in 1...3 {
  //             print("#", terminator: "")
  //         }

  //         print()
  //     }
  // }
func rysujChoinke(layercount:Int, levelcount:Int) {
  var length = layercount * levelcount
  var starcount = 1
  var spacecount = length
  for _ in 1...layercount {
    for _ in 1...levelcount {
      for _ in 1...spacecount{
        print(" ",terminator: "")
      }
      for _ in 1...starcount {
          print("*",terminator: "")
      }
      print()
      starcount += 2
      spacecount -= 1
    }
    starcount = starcount - 2
    spacecount = spacecount + 1
    if levelcount <= 3 {
      starcount -= 2
      spacecount += 1
    } 
    else {
      starcount -= 4
      spacecount += 2
    }
  }
  spacecount = length;
  for _ in 1...3 { //3 to wysokość pnia
  for _ in 1...spacecount-1 {
  print(" ",terminator: "")
  }
  for _ in 1...3 {
  print("#",terminator: "")
  }
  print()
  }
}

  
  // https://emojidb.org/christmas-emojis

  func rysujOzdobionaChoinke(layercount:Int, levelcount:Int,decorationAmount:Int) {
    var length = layercount * levelcount
    var starcount = 1
    var spacecount = length
    var decorationCounter = 0
    
    for layer in 1...layercount {
      var decorationsOnLayer = 0
      for _ in 1...levelcount {
        for _ in 1...spacecount{
          print(" ",terminator: "")
        }
        for _ in 1...starcount {
          var rand = Int.random(in: 1...10)
          if (rand <= 2) {
              if (decorationCounter <= decorationAmount && decorationsOnLayer < layer ){
              print("o",terminator: "")
              decorationsOnLayer+=1
              decorationCounter+=1
              }
              else{print("*",terminator: "")}} 
          
          else {print("*",terminator: "")}
          
            
        }
        print()
        starcount += 2
        spacecount -= 1
      }
      starcount = starcount - 2
      spacecount = spacecount + 1
      if levelcount <= 3 {
        starcount -= 2
        spacecount += 1
      } 
      else {
        starcount -= 4
        spacecount += 2
      }
    }
    spacecount = length;
    for _ in 1...3 { //3 to wysokość pnia
    for _ in 1...spacecount-1 {
    print(" ",terminator: "")
    }
    for _ in 1...3 {
    print("#",terminator: "")
    }
    print()
    }
  }


  
//   func rysujOzdobionaChoinke() {
//     let layercount = liczbaPoziomow
//     let levelcount = Int(super.wysokosc - wysokoscPnia)
//     print(levelcount)
//     let length = layercount * levelcount
//     var starcount = 1
//     var spacecount = length
//     for _ in 1...layercount {
//         for _ in 1...levelcount {
//             for _ in 1...(Int)((Double)(spacecount)*1.5){
//                 print(" ",terminator: "")
//             }
//             for _ in 1...starcount {
//                 let rand = Int.random(in: 1...10)
//                 if (rand <= 2) {
//                     if(rand % 2 == 0) {
//                         print("🍬", terminator: "")
//                     }else{
//                         print("⛄", terminator: "")
//                     }
//                 }
//                 else {
//                     // print("🍪",terminator: "")🟩
//                   print("🟩",terminator: "")
//                 }
//             }
//             print()
//             starcount += 2
//             spacecount -= 1
//             }
//         starcount = starcount - 2
//         spacecount = spacecount + 1
//         if levelcount <= 3 {
//             starcount -= 2
//             spacecount += 1
//         } else {
//             starcount -= 4
//             spacecount += 2
//         }
//     }
//     spacecount = length;
//     for _ in 1...3 { //3 to wysokość pnia
//         for _ in 1...spacecount-1 {
//             print(" ",terminator: "")
//         }
//         for _ in 1...3 {
//             print("#",terminator: "")
//         }
//         print()

// }
// }

  


  func ozdobyDoKupienia() -> Int {
      let liczbaOzdobDoKupienia = (1...liczbaPoziomow).reduce(0) { $0 + $1 }
      return max(0, liczbaOzdobDoKupienia - liczbaOzdob)
  }
}

// Stworzenie obiektu choinka
let mojaChoinka = Choinka(wysokosc: 5, rodzaj: .iglaste, rokZasadzenia: 2020, liczbaPoziomow: 5, wysokoscPnia: 2.0, liczbaOzdob: 5, rodzajOzdoby: .bombka)

// Wywołanie funkcji wyswietl()
mojaChoinka.wyswietlDane()

// Wywołanie funkcji rysujChoinke()
// mojaChoinka.rysujChoinke()
mojaChoinka.rysujChoinke(layercount:mojaChoinka.liczbaPoziomow,levelcount:mojaChoinka.liczbaPoziomow)

// Wywołanie funkcji rysujOzdobionaChoinke()
// mojaChoinka.rysujOzdobionaChoinke()
mojaChoinka.rysujOzdobionaChoinke(layercount:mojaChoinka.liczbaPoziomow,levelcount:mojaChoinka.liczbaPoziomow,decorationAmount:mojaChoinka.liczbaOzdob)
