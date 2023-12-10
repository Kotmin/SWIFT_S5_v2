// Zadanie 8.3
// Polecenie 1. Wprowadź od użytkownika liczbę mieszkań, a następnie wczytaj dane mieszkań do tablicy.
// Każde mieszkanie składa się z elementów takich jak: lokalizacja, powierzchnia oraz cena za metr.
var liczbaMieszan: Int = 0

print("Podaj liczbę mieszkań:")
if let input = readLine(), let liczbaMieszanInput = Int(input) {
    liczbaMieszan = liczbaMieszanInput
}

struct Mieszkanie {
    var lokalizacja: String
    var powierzchnia: Double
    var cenaZaMetr: Double
}

var mieszkania: [Mieszkanie] = []

for _ in 1...liczbaMieszan {
    print("Podaj lokalizację mieszkania:")
    guard let lokalizacja = readLine() else { continue }

    print("Podaj powierzchnię mieszkania:")
    guard let powierzchniaInput = readLine(), let powierzchnia = Double(powierzchniaInput) else { continue }

    print("Podaj cenę za metr mieszkania:")
    guard let cenaZaMetrInput = readLine(), let cenaZaMetr = Double(cenaZaMetrInput) else { continue }

  print("\n")

    let noweMieszkanie = Mieszkanie(lokalizacja: lokalizacja, powierzchnia: powierzchnia, cenaZaMetr: cenaZaMetr)
    mieszkania.append(noweMieszkanie)
}

// Polecenie 2. Wyświetl mieszkanie najdroższe oraz najtańsze.
if let najdrozsze = mieszkania.max(by: { $0.cenaZaMetr < $1.cenaZaMetr }),
   let najtansze = mieszkania.min(by: { $0.cenaZaMetr < $1.cenaZaMetr }) {
    print("Najdroższe mieszkanie:")
    print("Lokalizacja: \(najdrozsze.lokalizacja), Powierzchnia: \(najdrozsze.powierzchnia), Cena za metr: \(najdrozsze.cenaZaMetr)")

    print("Najtańsze mieszkanie:")
    print("Lokalizacja: \(najtansze.lokalizacja), Powierzchnia: \(najtansze.powierzchnia), Cena za metr: \(najtansze.cenaZaMetr)")
}

// Polecenie 3. Wyświetl mieszkanie o podanej lokalizacji. Lokalizację podaje użytkownik.
print("Podaj lokalizację mieszkania do wyszukania:")
if let szukanaLokalizacja = readLine() {
    let znalezioneMieszkanie = mieszkania.first { $0.lokalizacja == szukanaLokalizacja }
    if let znalezioneMieszkanie = znalezioneMieszkanie {
        print("Znalezione mieszkanie:")
        print("Lokalizacja: \(znalezioneMieszkanie.lokalizacja), Powierzchnia: \(znalezioneMieszkanie.powierzchnia), Cena za metr: \(znalezioneMieszkanie.cenaZaMetr)")
    } else {
        print("Brak mieszkania o podanej lokalizacji.")
    }
}

// Zadanie 8.5
// Polecenie 1. Zdefiniuj typ wyliczeniowy Standard dla mieszkania (wysoki, średni, niski).
enum Standard: String, CaseIterable {
    case wysoki, sredni, niski
}

// Polecenie 2. Zmodyfikuj zad. 8.3 uzupełniając dane o standard mieszkania.
struct MieszkanieZStandardem {
    var lokalizacja: String
    var powierzchnia: Double
    var cenaZaMetr: Double
    var standard: Standard
}

var mieszkaniaZStandardem: [MieszkanieZStandardem] = []

for _ in 1...liczbaMieszan {
    print("Podaj lokalizację mieszkania:")
    guard let lokalizacja = readLine() else { continue }

    print("Podaj powierzchnię mieszkania:")
    guard let powierzchniaInput = readLine(), let powierzchnia = Double(powierzchniaInput) else { continue }

    print("Podaj cenę za metr mieszkania:")
    guard let cenaZaMetrInput = readLine(), let cenaZaMetr = Double(cenaZaMetrInput) else { continue }

    print("Podaj standard mieszkania (wysoki, średni, niski):")
    guard let standardRawValue = readLine(), let standard = Standard(rawValue: standardRawValue) else { continue }
  print("\n")
    let noweMieszkanieZStandardem = MieszkanieZStandardem(lokalizacja: lokalizacja, powierzchnia: powierzchnia, cenaZaMetr: cenaZaMetr, standard: standard)
    mieszkaniaZStandardem.append(noweMieszkanieZStandardem)
}

// Polecenie 3. Wyświetl posortowane mieszkania według standardów w kolejności niski, średni oraz wysoki.
let posortowaneMieszkania = mieszkaniaZStandardem.sorted { $0.standard.rawValue < $1.standard.rawValue }

print("Posortowane mieszkania według standardów:")
for mieszkanie in posortowaneMieszkania {
    print("Lokalizacja: \(mieszkanie.lokalizacja), Powierzchnia: \(mieszkanie.powierzchnia), Cena za metr: \(mieszkanie.cenaZaMetr), Standard: \(mieszkanie.standard.rawValue)")
}
