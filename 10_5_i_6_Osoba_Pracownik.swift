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




// Polecenie 5 - Testowanie funkcji
let osoba1 = Osoba(imie: "Jan", nazwisko: "Kowalski", rokUrodzenia: 1990)
let osoba2 = Osoba(imie: "Anna", nazwisko: "Nowak", rokUrodzenia: 1995)

osoba1.wyswietlDane()
osoba2.wyswietlDane()

let wiekOsoba1 = osoba1.obliczWiek()
let wiekOsoba2 = osoba2.obliczWiek()

if wiekOsoba1 < wiekOsoba2 {
    print("Osoba \(osoba1.imie) jest młodsza od \(osoba2.imie) o \(wiekOsoba2 - wiekOsoba1) lat.")
} else if wiekOsoba1 > wiekOsoba2 {
    print("Osoba \(osoba1.imie) jest starsza od \(osoba2.imie) o \(wiekOsoba1 - wiekOsoba2) lat.")
} else {
    print("Obie osoby mają taki sam wiek: \(wiekOsoba1) lat.")
}


enum Stanowisko: String {
  case programista
  case projektant
  case tester
  case manager
}

class Pracownik: Osoba {
  var rokZatrudnienia: Int
  var stanowisko: Stanowisko
  var stawkaZaGodzine: Double
  var liczbaGodzin: Int
  var nazwaFirmy: String

  init(imie: String, nazwisko: String, rokUrodzenia: Int, rokZatrudnienia: Int, stanowisko: Stanowisko, stawkaZaGodzine: Double, liczbaGodzin: Int, nazwaFirmy: String) {
      self.rokZatrudnienia = rokZatrudnienia
      self.stanowisko = stanowisko
      self.stawkaZaGodzine = stawkaZaGodzine
      self.liczbaGodzin = liczbaGodzin
      self.nazwaFirmy = nazwaFirmy

      super.init(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia)
  }

  func lataPracyWFirmie() -> Int {
      // let aktualnyRok = Calendar.current.component(.year, from: Date())
      return aktualnyRok - rokZatrudnienia
  }

  func obliczPensje() -> Double {
      return stawkaZaGodzine * Double(liczbaGodzin)
  }

  override func wyswietlDane() {
      super.wyswietlDane()
      print("Rok zatrudnienia: \(rokZatrudnienia)")
      print("Stanowisko: \(stanowisko.rawValue)")
      print("Stawka za godzinę: \(stawkaZaGodzine)")
      print("Liczba zrealizowanych godzin: \(liczbaGodzin)")
      print("Nazwa firmy: \(nazwaFirmy)")
      print("Lata pracy w firmie: \(lataPracyWFirmie())")
      print("Wysokość pensji: \(obliczPensje())")
  }
}

// Polecenie 6 - Testowanie funkcji
let pracownik1 = Pracownik(imie: "Adam", nazwisko: "Nowak", rokUrodzenia: 1985, rokZatrudnienia: 2010, stanowisko: .programista, stawkaZaGodzine: 50.0, liczbaGodzin: 160, nazwaFirmy: "ABC Inc.")
let pracownik2 = Pracownik(imie: "Ewa", nazwisko: "Kowalska", rokUrodzenia: 1990, rokZatrudnienia: 2015, stanowisko: .tester, stawkaZaGodzine: 40.0, liczbaGodzin: 150, nazwaFirmy: "XYZ Ltd.")

pracownik1.wyswietlDane()
pracownik2.wyswietlDane()


