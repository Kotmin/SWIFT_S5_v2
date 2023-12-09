
// Polecenie 2 - Funkcja wczytująca elementy do tablicy
func wczytajTablice(iloscElementow: Int) -> [Int] {
    var tablica: [Int] = []

    guard iloscElementow > 0 else {
        print("Błędna ilość elementów!")
        return tablica
    }

    for _ in 1...iloscElementow {
        print("Podaj element:")
        do {
            if let element = try wczytajLiczbe() {
                tablica.append(element)
            }
        } catch {
            print("Błąd podczas wczytywania elementu: \(error)")
        }
    }

    return tablica
}

// Polecenie 3 - Funkcja wyświetlająca elementy tablicy
func wyswietlTablice(_ tablica: [Int]) {
    print("Elementy tablicy: \(tablica)")
}

// Polecenie 4 - Funkcja znajdująca najmniejszy element i jego indeks
func znajdzNajmniejszy(_ tablica: [Int]) -> (element: Int, indeks: Int)? {
    guard !tablica.isEmpty else { return nil }

    var najmniejszy = tablica[0]
    var indeksNajmniejszego = 0

    for (indeks, element) in tablica.enumerated() {
        if element < najmniejszy {
            najmniejszy = element
            indeksNajmniejszego = indeks
        }
    }

    return (najmniejszy, indeksNajmniejszego)
}

// Polecenie 5 - Funkcja znajdująca największy element i jego indeks
func znajdzNajwiekszy(_ tablica: [Int]) -> (element: Int, indeks: Int)? {
    guard !tablica.isEmpty else { return nil }

    var najwiekszy = tablica[0]
    var indeksNajwiekszego = 0

    for (indeks, element) in tablica.enumerated() {
        if element > najwiekszy {
            najwiekszy = element
            indeksNajwiekszego = indeks
        }
    }

    return (najwiekszy, indeksNajwiekszego)
}

// Polecenie 6 - Funkcja zamieniająca miejscami największy z najmniejszym
func zamienNajwiekszyNajmniejszy(_ tablica: inout [Int]) {
    if let (najmniejszy, indeksNajmniejszego) = znajdzNajmniejszy(tablica),
       let (najwiekszy, indeksNajwiekszego) = znajdzNajwiekszy(tablica) {
        tablica[indeksNajmniejszego] = najwiekszy
        tablica[indeksNajwiekszego] = najmniejszy
    }
}

// Polecenie 7 - Funkcja obliczająca średnią arytmetyczną
func sredniaArytmetyczna(_ tablica: [Int]) -> Double {
    guard !tablica.isEmpty else { return 0 }

    let suma = tablica.reduce(0, +)
    return Double(suma) / Double(tablica.count)
}
// Polecenie 8 - Testowanie funkcji z obsługą błędów
do {
    print("Podaj liczbę elementów tablicy:")
    if let iloscElementow = try wczytajLiczbe() {
        var mojaTablica = wczytajTablice(iloscElementow: iloscElementow)
        wyswietlTablice(mojaTablica)

        if let najmniejszy = znajdzNajmniejszy(mojaTablica) {
            print("Najmniejszy element: \(najmniejszy.element), indeks: \(najmniejszy.indeks)")
        }

        if let najwiekszy = znajdzNajwiekszy(mojaTablica) {
            print("Największy element: \(najwiekszy.element), indeks: \(najwiekszy.indeks)")
        }

        zamienNajwiekszyNajmniejszy(&mojaTablica)
        print("Tablica po zamianie miejscami największego z najmniejszym: \(mojaTablica)")

        print("Średnia arytmetyczna: \(sredniaArytmetyczna(mojaTablica))")
    }
} catch {
    print("Błąd: \(error)")
}

// Funkcja wczytująca liczbę z obsługą błędów
func wczytajLiczbe() throws -> Int? {
    guard let input = readLine() else {
        throw WczytywanieBledu.brakDanych
    }

    guard let liczba = Int(input) else {
        throw WczytywanieBledu.nieprawidlowyFormat
    }

    return liczba
}

// Enum do obsługi błędów wczytywania
enum WczytywanieBledu: Error {
    case brakDanych
    case nieprawidlowyFormat
}