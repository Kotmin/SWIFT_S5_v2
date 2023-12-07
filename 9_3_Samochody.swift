// Definicja zbioru samochody
var samochody: Set<String> = []

// Polecenie 2: Wprowadź nazwy dla 6 samochodów
for i in 1...6 {
    print("Podaj nazwę samochodu \(i):")
    let model = readLine()!
    samochody.insert(model)
}

// Polecenie 3: Wyświetlenie wszystkich elementów zbioru
print("Wszystkie samochody:")
for model in samochody {
    print(model)
}

// Polecenie 4: Wczytaj model samochodu od użytkownika i usuń go ze zbioru
print("Podaj model samochodu do usunięcia:")
if let modelDoUsuniecia = readLine(), samochody.contains(modelDoUsuniecia) {
    samochody.remove(modelDoUsuniecia)
    print("Usunięto samochód: \(modelDoUsuniecia)")
} else {
    print("Podany model nie istnieje w zbiorze.")
}
