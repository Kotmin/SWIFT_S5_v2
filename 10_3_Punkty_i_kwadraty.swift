// Polecenie 1 - Funkcja wczytująca współrzędne punktu
func wczytajPunkt() -> (Double, Double) {
    print("Podaj współrzędną x:")
    if let x = Double(readLine() ?? "") {
        print("Podaj współrzędną y:")
        if let y = Double(readLine() ?? "") {
            return (x, y)
        }
    }
    return (0, 0)
}

// Polecenie 2 - Funkcja obliczająca odległość między punktami
func obliczOdleglosc(_ punkt1: (Double, Double), _ punkt2: (Double, Double)) -> Double {
    let deltaX = punkt2.0 - punkt1.0
    let deltaY = punkt2.1 - punkt1.1
    return (deltaX * deltaX + deltaY * deltaY).squareRoot()
}

// Polecenie 3 - Funkcja zwracająca numer ćwiartki
func numerCwiartki(_ punkt: (Double, Double)) -> Int {
    switch (punkt.0, punkt.1) {
    case let (x, y) where x > 0 && y > 0:
        return 1
    case let (x, y) where x < 0 && y > 0:
        return 2
    case let (x, y) where x < 0 && y < 0:
        return 3
    case let (x, y) where x > 0 && y < 0:
        return 4
    default:
        return 0
    }
}

// Polecenie 4 - Funkcja sprawdzająca położenie punktu względem kwadratu
func polozenieWzgledemKwadratu(_ punkt: (Double, Double), _ wierzcholek: Double) -> String {
    let polowaBoku = wierzcholek / 2

    switch (punkt.0, punkt.1) {
    case let (x, y) where abs(x) <= polowaBoku && abs(y) <= polowaBoku:
        return "Punkt leży wewnątrz kwadratu."
    case let (x, y) where abs(x) == polowaBoku || abs(y) == polowaBoku:
        return "Punkt leży na obwodzie kwadratu."
    default:
        return "Punkt leży poza kwadratem."
    }
}

// Polecenie 5 - Testowanie funkcji
let punkt1 = wczytajPunkt()
let punkt2 = wczytajPunkt()

print("Odległość między punktami: \(obliczOdleglosc(punkt1, punkt2))")
print("Numer ćwiartki, w której leży punkt1: \(numerCwiartki(punkt1))")
print("Położenie punktu2 względem kwadratu: \(polozenieWzgledemKwadratu(punkt2, 10.0))")
