// Definicja funkcji dla poszczególnych operacji
func dodawanie(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func odejmowanie(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func mnozenie(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func dzielenie(_ a: Double, _ b: Double) -> Double {
    guard b != 0 else {
        print("Błąd: Nie można dzielić przez zero!")
        return 0
    }
    return a / b
}

func pierwiastkowanie(_ a: Double) -> Double {
    guard a >= 0 else {
        print("Błąd: Nie można pierwiastkować liczby ujemnej!")
        return 0
    }
    return a.squareRoot()
}

// Wyświetlanie menu
print("Menu:")
print("1 – dodanie")
print("2 – odejmowanie")
print("3 – mnożenie")
print("4 – dzielenie")
print("5 – pierwiastkowanie")

// Wczytywanie opcji
if let wybor = readLine(), let opcja = Int(wybor) {
    switch opcja {
    case 1...4:
        // Wczytaj dwie liczby dla działań 1-4
        print("Podaj pierwszą liczbę:")
        if let liczba1 = Double(readLine() ?? "") {
            print("Podaj drugą liczbę:")
            if let liczba2 = Double(readLine() ?? "") {
                // Wykonaj odpowiednią operację
                switch opcja {
                case 1:
                    print("Wynik: \(dodawanie(liczba1, liczba2))")
                case 2:
                    print("Wynik: \(odejmowanie(liczba1, liczba2))")
                case 3:
                    print("Wynik: \(mnozenie(liczba1, liczba2))")
                case 4:
                    print("Wynik: \(dzielenie(liczba1, liczba2))")
                default:
                    break
                }
            } else {
                print("Błąd: Nieprawidłowe dane.")
            }
        } else {
            print("Błąd: Nieprawidłowe dane.")
        }
    case 5:
        // Wczytaj jedną liczbę dla pierwiastkowania
        print("Podaj liczbę:")
        if let liczba = Double(readLine() ?? "") {
            print("Wynik: \(pierwiastkowanie(liczba))")
        } else {
            print("Błąd: Nieprawidłowe dane.")
        }
    default:
        print("Błąd: Nieprawidłowy wybór opcji.")
    }
} else {
    print("Błąd: Nieprawidłowy wybór opcji.")
}
