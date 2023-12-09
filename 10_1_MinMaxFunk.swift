// Polecenie 1: Funkcja generująca 3 losowe liczby z zakresu 1-250
func generujLiczby() -> (Int, Int, Int) {
    let liczba1 = Int.random(in: 1...250)
    let liczba2 = Int.random(in: 1...250)
    let liczba3 = Int.random(in: 1...250)
    return (liczba1, liczba2, liczba3)
}

// Polecenie 2: Funkcja zwracająca największą liczbę
func najwieksza(liczby: (Int, Int, Int)) -> Int {
    return max(liczby.0, liczby.1, liczby.2)
}

// Polecenie 3: Funkcja zwracająca najmniejszą liczbę
func najmniejsza(liczby: (Int, Int, Int)) -> Int {
    return min(liczby.0, liczby.1, liczby.2)
}

// Polecenie 4: Funkcja zwracająca jednocześnie najmniejszą i największą liczbę
func minMax(liczby: (Int, Int, Int)) -> (min: Int, max: Int) {
    let minVal = najmniejsza(liczby: liczby)
    let maxVal = najwieksza(liczby: liczby)
    return (minVal, maxVal)
}

// Wygeneruj liczby
let wygenerowaneLiczby = generujLiczby()

// Wyświetl wyniki
print("Wygenerowane liczby: \(wygenerowaneLiczby)")
print("Największa liczba: \(najwieksza(liczby: wygenerowaneLiczby))")
print("Najmniejsza liczba: \(najmniejsza(liczby: wygenerowaneLiczby))")

let minMaxValues = minMax(liczby: wygenerowaneLiczby)
print("Najmniejsza liczba: \(minMaxValues.min), Największa liczba: \(minMaxValues.max)")
