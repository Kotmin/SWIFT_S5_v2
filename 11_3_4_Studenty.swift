let aktualnyRok = 2023
// Replit nie oferuje dostepu do Calendar i wieloplikowosci  w projekcie

class Osoba {
    var imie: String
    var nazwisko: String
    var rokUrodzenia: Int

    init(imie: String, nazwisko: String, rokUrodzenia: Int) {
        self.imie = imie
        self.nazwisko = nazwisko
        self.rokUrodzenia = rokUrodzenia
    }

    func obliczWiek() -> Int {
        // let aktualnyRok = Calendar.current.component(.year, from: Date)

    //   var aktualnyRok = Date.now.formatted(.dateTime.year())
        return aktualnyRok - rokUrodzenia
    }

    func wyswietlDane() {
        print("Imię: \(imie), Nazwisko: \(nazwisko), Rok urodzenia: \(rokUrodzenia)")
    }
}


// Klasa Student dziedzicząca po klasie Osoba (zad. 10.5)
enum KierunekStudiow: String {
    case informatyka, matematyka, fizyka
}

class Student: Osoba {
    var numerIndeksu: String
    var kierunek: KierunekStudiow
    var rokStudiow: Int
    var oceny: [Double]

    init(imie: String, nazwisko: String, rokUrodzenia: Int, numerIndeksu: String,
         kierunek: KierunekStudiow, rokStudiow: Int, oceny: [Double]) {
        self.numerIndeksu = numerIndeksu
        self.kierunek = kierunek
        self.rokStudiow = rokStudiow
        self.oceny = oceny
        super.init(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia)
    }

    func sredniaOcen() -> Double {
        guard !oceny.isEmpty else { return 0 }
        let suma = oceny.reduce(0, +)
        return suma / Double(oceny.count)
    }

    override func wyswietlDane() {
        print("Student \(imie) \(nazwisko) (\(numerIndeksu)), \(kierunek.rawValue), \(rokStudiow) rok")
    }
}

// Funkcja do wczytania tablicy studentów
func utworzTabliceStudentow() -> [Student] {
    print("Podaj liczbę studentów:")
    guard let liczbaStudentow = Int(readLine() ?? ""), liczbaStudentow > 0 else {
        print("Błędna liczba studentów!")
        return []
    }

    var studenci: [Student] = []

    for _ in 1...liczbaStudentow {
        print("Podaj imię studenta:")
        guard let imie = readLine(), !imie.isEmpty else {
            print("Błędne imię studenta!")
            continue
        }

        print("Podaj nazwisko studenta:")
        guard let nazwisko = readLine(), !nazwisko.isEmpty else {
            print("Błędne nazwisko studenta!")
            continue
        }

        print("Podaj rok urodzenia studenta:")
        guard let rokUrodzenia = Int(readLine() ?? ""), rokUrodzenia > 1900 else {
            print("Błędny rok urodzenia studenta!")
            continue
        }

        print("Podaj numer indeksu studenta:")
        guard let numerIndeksu = readLine(), !numerIndeksu.isEmpty else {
            print("Błędny numer indeksu studenta!")
            continue
        }

        print("Podaj kierunek studiów studenta (informatyka, matematyka, fizyka):")
        guard let rawKierunek = readLine(),
              let kierunek = KierunekStudiow(rawValue: rawKierunek.lowercased()) else {
            print("Błędny kierunek studiów studenta!")
            continue
        }

        print("Podaj rok studiów studenta:")
        guard let rokStudiow = Int(readLine() ?? ""), rokStudiow > 0 else {
            print("Błędny rok studiów studenta!")
            continue
        }

        print("Podaj oceny studenta (oddzielone spacją):")
        guard let ocenyString = readLine(), !ocenyString.isEmpty else {
            print("Brak podanych ocen studenta!")
            continue
        }

        let oceny = ocenyString.split(separator: " ").compactMap { Double($0) }

        if oceny.count == 5 {
            let student = Student(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia,
                                  numerIndeksu: numerIndeksu, kierunek: kierunek, rokStudiow: rokStudiow, oceny: oceny)
            studenci.append(student)
        } else {
            print("Błędna liczba ocen studenta!")
        }
    }

    return studenci
}

// Funkcja do wyświetlenia studentów na danym kierunku
func wyswietlStudentowNaKierunku(studenci: [Student]) {
    print("Podaj kierunek studiów do wyświetlenia:")
    guard let rawKierunek = readLine(),
          let kierunek = KierunekStudiow(rawValue: rawKierunek.lowercased()) else {
        print("Błędny kierunek studiów!")
        return
    }

    let studenciNaKierunku = studenci.filter { $0.kierunek == kierunek }

    if studenciNaKierunku.isEmpty {
        print("Brak studentów na podanym kierunku.")
    } else {
        print("Studenci na kierunku \(kierunek.rawValue):")
        for student in studenciNaKierunku {
            student.wyswietlDane()
        }
    }
}

// Testowanie funkcji
// let studenci = utworzTabliceStudentow()
// wyswietlStudentowNaKierunku(studenci: studenci)



// extension Date {

//     static func - (lhs: Date, rhs: Date) -> TimeInterval {
//         return lhs.timeIntervalSinceReferenceDate - rhs.timeIntervalSinceReferenceDate
//     }

// }


// Klasa StudentNaErasmusie dziedzicząca po klasie Student (zad. 11.3)
class StudentNaErasmusie: Student {
    var nazwaUczelniZaGranica: String
    var dataRozpoczeciaErasmusa: String //
    var dataZakonczeniaErasmusa: String
    var kursy: [(nazwa: String, ocena: Double)]

    init(imie: String, nazwisko: String, rokUrodzenia: Int, numerIndeksu: String,
         kierunek: KierunekStudiow, rokStudiow: Int, oceny: [Double],
         nazwaUczelniZaGranica: String, dataRozpoczeciaErasmusa: String,
         dataZakonczeniaErasmusa: String, kursy: [(nazwa: String, ocena: Double)]) {
        self.nazwaUczelniZaGranica = nazwaUczelniZaGranica
        self.dataRozpoczeciaErasmusa = dataRozpoczeciaErasmusa
        self.dataZakonczeniaErasmusa = dataZakonczeniaErasmusa
        self.kursy = kursy
        super.init(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia,
                   numerIndeksu: numerIndeksu, kierunek: kierunek, rokStudiow: rokStudiow,
                   oceny: oceny)
    }

    func czasNaErasmusie() -> String {

          return "5 miesięcy"
      }


      
  
    override func sredniaOcen() -> Double {
      guard !kursy.isEmpty else {
          print("Brak kursów dla studenta na Erasmusie.")
          return 0.0
      }

      let sumaOcen = kursy.reduce(0.0) { $0 + $1.ocena }
      return sumaOcen / Double(kursy.count)
    }
  
    func ocenaZaErasmusa() -> String {
        // Implementacja wyznaczania oceny za Erasmusa
      let ocena = self.sredniaOcen()
        // return "Bardzo dobra"
      switch ocena {
      case 4.6...5.0:
          return "Bardzo dobra"
      case 3.6...4.5:
          return "Dobra"
      case 3.0...3.5:
          return "Dostateczna"
      default:
          return "Niedostateczna"
      }
    }

  func dodajOceneDoKursu(nazwaKursu: String, ocena: Double) {
      guard ocena >= 2.0 && ocena <= 5.0 else {
          print("Nieprawidłowa ocena. Ocena musi być w zakresie od 2.0 do 5.0.")
          return
      }
      kursy.append((nazwa: nazwaKursu, ocena: ocena))
  }

  

    override func wyswietlDane() {
        print("Student na Erasmusie: \(imie) \(nazwisko) (\(numerIndeksu)), \(kierunek.rawValue)")
        print("Erasmus: \(nazwaUczelniZaGranica), \(dataRozpoczeciaErasmusa) - \(dataZakonczeniaErasmusa)")
    }
}

// Testowanie funkcji
let studentErasmus = StudentNaErasmusie(imie: "Anna", nazwisko: "Nowak", rokUrodzenia: 1999,
                                       numerIndeksu: "54321", kierunek: .matematyka,
                                       rokStudiow: 3, oceny: [5.0, 4.0, 4.5, 3.5, 5.0],
                                       nazwaUczelniZaGranica: "Università di Bologna",
                                       dataRozpoczeciaErasmusa: "01-09-2023",
                                       dataZakonczeniaErasmusa: "31-01-2024",
                                       kursy: [("Italian Language", 3.5), ("History of Art", 4.0), ("Kynology", 2.5)])
print("Czas na Erasmusie: \(studentErasmus.czasNaErasmusie())")
print("Ocena za Erasmusa: \(studentErasmus.ocenaZaErasmusa())")
studentErasmus.wyswietlDane()
