struct LiczbaZespolona {
    var czescRzeczywista: Double
    var czescUrojona: Double
}


func dodaj(_ a: LiczbaZespolona, _ b: LiczbaZespolona) -> LiczbaZespolona {
  return LiczbaZespolona(czescRzeczywista: a.czescRzeczywista + b.czescRzeczywista,
                         czescUrojona: a.czescUrojona + b.czescUrojona)
}

func odejmij(_ a: LiczbaZespolona, _ b: LiczbaZespolona) -> LiczbaZespolona {
  return LiczbaZespolona(czescRzeczywista: a.czescRzeczywista - b.czescRzeczywista,
                         czescUrojona: a.czescUrojona - b.czescUrojona)
}

func pomnoz(_ a: LiczbaZespolona, _ b: LiczbaZespolona) -> LiczbaZespolona {
  let czescRzeczywista = a.czescRzeczywista * b.czescRzeczywista - a.czescUrojona * b.czescUrojona
  let czescUrojona = a.czescRzeczywista * b.czescUrojona + a.czescUrojona * b.czescRzeczywista
  return LiczbaZespolona(czescRzeczywista: czescRzeczywista, czescUrojona: czescUrojona)
}

func menu() {
  print("Menu:")
  print("1. Dodawanie")
  print("2. Odejmowanie")
  print("3. Mnożenie")
  print("0. Wyjście")

  guard let wybor = Int(readLine() ?? ""), wybor != 0 else {
      return
  }

  switch wybor {
  case 1:
      // Dodawanie
      print("Podaj pierwszą liczbę zespoloną:")
      let liczba1 = wczytajLiczbeZespolona()
      print("Podaj drugą liczbę zespoloną:")
      let liczba2 = wczytajLiczbeZespolona()
      let wynik = dodaj(liczba1, liczba2)
      print("Wynik dodawania: \(wynik.czescRzeczywista) + \(wynik.czescUrojona)i")
  case 2:
      // Odejmowanie
      print("Podaj pierwszą liczbę zespoloną:")
      let liczba1 = wczytajLiczbeZespolona()
      print("Podaj drugą liczbę zespoloną:")
      let liczba2 = wczytajLiczbeZespolona()
      let wynik = odejmij(liczba1, liczba2)
      print("Wynik odejmowania: \(wynik.czescRzeczywista) + \(wynik.czescUrojona)i")
  case 3:
      // Mnożenie
      print("Podaj pierwszą liczbę zespoloną:")
      let liczba1 = wczytajLiczbeZespolona()
      print("Podaj drugą liczbę zespoloną:")
      let liczba2 = wczytajLiczbeZespolona()
      let wynik = pomnoz(liczba1, liczba2)
      print("Wynik mnożenia: \(wynik.czescRzeczywista) + \(wynik.czescUrojona)i")
  default:
      print("Niepoprawny wybór.")
  }

  menu()
}

func wczytajLiczbeZespolona() -> LiczbaZespolona {
  print("Podaj część rzeczywistą liczby zespolonej:")
  guard let rzeczywista = Double(readLine() ?? "") else {
      print("Błędna wartość dla części rzeczywistej. Ustawiono domyślną wartość 0.")
      return LiczbaZespolona(czescRzeczywista: 0, czescUrojona: 0)
  }

  print("Podaj część urojoną liczby zespolonej:")
  guard let urojona = Double(readLine() ?? "") else {
      print("Błędna wartość dla części urojonej. Ustawiono domyślną wartość 0.")
      return LiczbaZespolona(czescRzeczywista: rzeczywista, czescUrojona: 0)
  }

  return LiczbaZespolona(czescRzeczywista: rzeczywista, czescUrojona: urojona)
}

// Uruchomienie programu
menu()
