class Utwor {
  private var tytul: String
  private var czasTrwania: Int

  init(tytul: String, czasTrwania: Int) {
      self.tytul = tytul
      self.czasTrwania = czasTrwania
  }

  func info() {
      print("Utwór: \(tytul), Czas trwania: \(czasTrwania) sekund")
  }

  // Getter i setter dla pola 'tytul'
  var nazwaUtworu: String {
      get {
          return tytul
      }
      set {
          tytul = newValue
      }
  }

  // Getter i setter dla pola 'czasTrwania'
  var dlugoscUtworu: Int {
      get {
          return czasTrwania
      }
      set {
          czasTrwania = newValue
      }
  }
}

class Wykonawca {
  private var imie: String
  private var nazwisko: String

  init(imie: String, nazwisko: String) {
      self.imie = imie
      self.nazwisko = nazwisko
  }

  func info() {
      print("Wykonawca: \(imie) \(nazwisko)")
  }

  // Getter i setter dla pola 'imie'
  var artystaImie: String {
      get {
          return imie
      }
      set {
          imie = newValue
      }
  }

  // Getter i setter dla pola 'nazwisko'
  var artystaNazwisko: String {
      get {
          return nazwisko
      }
      set {
          nazwisko = newValue
      }
  }
}

class Album: Wykonawca {
  private var rokWydania: Int
  private var utwory: [Utwor]

  init(imie: String, nazwisko: String, rokWydania: Int) {
      self.rokWydania = rokWydania
      self.utwory = []
      super.init(imie: imie, nazwisko: nazwisko)
  }

  func dodajUtwor(utwor: Utwor) {
      utwory.append(utwor)
  }

  // Funkcja zewnętrzna
  func sredniCzasAlbumu() -> Double {
      let sumaCzasow = utwory.reduce(0) { $0 + $1.dlugoscUtworu }
      return Double(sumaCzasow) / Double(utwory.count)
  }

  func czasy() -> (najkrotszy: Int, najdluzszy: Int)? {
      guard let minCzas = utwory.min(by: { $0.dlugoscUtworu < $1.dlugoscUtworu })?.dlugoscUtworu,
            let maxCzas = utwory.max(by: { $0.dlugoscUtworu < $1.dlugoscUtworu })?.dlugoscUtworu else {
          return nil
      }
      return (minCzas, maxCzas)
  }

  override func info() {
      super.info()
      print("Rok wydania: \(rokWydania)")
      print("Utwory na albumie:")
      utwory.forEach { $0.info() }
  }

  // Getter i setter dla pola 'rokWydania'
  var albumRokWydania: Int {
      get {
          return rokWydania
      }
      set {
          rokWydania = newValue
      }
  }
}

// Przykład użycia funkcji zewnętrznej
let album = Album(imie: "Artysta", nazwisko: "Zespół", rokWydania: 2022)
album.dodajUtwor(utwor: Utwor(tytul: "Piosenka 1", czasTrwania: 180))
album.dodajUtwor(utwor: Utwor(tytul: "Piosenka 2", czasTrwania: 210))

let sredniCzas = album.sredniCzasAlbumu()
print("Średni czas trwania albumu: \(sredniCzas) sekund")
