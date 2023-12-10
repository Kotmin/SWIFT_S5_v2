// Zadanie 8.1
// Polecenie 1: Napisz program konsolowy, który zdefiniuje krotkę osoba składającą się z elementów takich jak: imię, nazwisko, rok urodzenia.
let osoba1 = ("Anna", "Kowalska", 1990)
let osoba2 = ("Jan", "Nowak", 1985)

// Polecenie 2: Utwórz dwie krotki. Wyświetl, która osoba jest starsza, a która młodsza, lub obie, jeśli są w takim samym wieku.
func porownajWiek(osobaA: (String, String, Int), osobaB: (String, String, Int)) {
    if osobaA.2 < osobaB.2 {
        print("\(osobaA.0) \(osobaA.1) jest młodsza niż \(osobaB.0) \(osobaB.1)")
    } else if osobaA.2 > osobaB.2 {
        print("\(osobaA.0) \(osobaA.1) jest starsza niż \(osobaB.0) \(osobaB.1)")
    } else {
        print("\(osobaA.0) \(osobaA.1) i \(osobaB.0) \(osobaB.1) mają ten sam wiek.")
    }
}

porownajWiek(osobaA: osoba1, osobaB: osoba2)
