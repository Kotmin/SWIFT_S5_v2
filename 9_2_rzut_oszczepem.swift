// Definicja struktury rzutOszczepem
struct RzutOszczepem {
    var identyfikatorOsoby: Int
    var probyRzutow: [Double]
}

// Polecenie 2: Wczytanie danych dla czterech zawodników
var zawodnicy: [RzutOszczepem] = []

// Wczytanie danych dla zawodników
for i in 1...4 {
    print("Zawodnik \(i):")

    // Wczytanie identyfikatora osoby
    print("Podaj identyfikator osoby:")
    let identyfikator = Int(readLine()!)!

    // Wczytanie trzech prób rzutów
    var proby: [Double] = []
    for j in 1...3 {
        print("Podaj wynik rzutu \(j):")
        let wynik = Double(readLine()!)!
        proby.append(wynik)
    }

    // Dodanie danych do struktury i umieszczenie jej w tablicy
    let zawodnik = RzutOszczepem(identyfikatorOsoby: identyfikator, probyRzutow: proby)
    zawodnicy.append(zawodnik)
}

// Polecenie 3: Wyświetlenie zawodnika z największą średnią rzutów
if let najlepszyZawodnik = zawodnicy.max(by: { $0.probyRzutow.reduce(0, +) / Double($0.probyRzutow.count) < $1.probyRzutow.reduce(0, +) / Double($1.probyRzutow.count) }) {
    print("Zawodnik z największą średnią rzutów:")
    print("Identyfikator osoby: \(najlepszyZawodnik.identyfikatorOsoby)")
    print("Średnia rzutów: \(najlepszyZawodnik.probyRzutow.reduce(0, +) / Double(najlepszyZawodnik.probyRzutow.count))")
}

// Polecenie 4: Usunięcie zawodnika z najmniejszą średnią rzutów
if let najgorszyZawodnikIndex = zawodnicy.firstIndex(where: { $0.probyRzutow.reduce(0, +) / Double($0.probyRzutow.count) == zawodnicy.map({ $0.probyRzutow.reduce(0, +) / Double($0.probyRzutow.count) }).min() }) {
    let usunietyZawodnik = zawodnicy.remove(at: najgorszyZawodnikIndex)
    print("Usunięto zawodnika z najmniejszą średnią rzutów:")
    print("Identyfikator osoby: \(usunietyZawodnik.identyfikatorOsoby)")
    print("Średnia rzutów: \(usunietyZawodnik.probyRzutow.reduce(0, +) / Double(usunietyZawodnik.probyRzutow.count))")
}
