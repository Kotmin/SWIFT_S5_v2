// Klasa Prostokąt
class Prostokat {
    var dlugoscBokow: (a: Double, b: Double)

    init(a: Double, b: Double) {
        self.dlugoscBokow = (a, b)
    }

    func pole() -> Double {
        return dlugoscBokow.a * dlugoscBokow.b
    }

    func obwod() -> Double {
        return 2 * (dlugoscBokow.a + dlugoscBokow.b)
    }

    func wyswietlDane() {
        print("Prostokąt o bokach \(dlugoscBokow.a) i \(dlugoscBokow.b)")
    }
}

// Testowanie funkcji
let prostokat = Prostokat(a: 3, b: 4)
print("Pole prostokąta: \(prostokat.pole())")
print("Obwód prostokąta: \(prostokat.obwod())")
prostokat.wyswietlDane()

// 11.2
// Klasa Prostopadłościan dziedzicząca po klasie Prostokąt
class Prostopadloscian: Prostokat {
    var wysokosc: Double

    init(a: Double, b: Double, wysokosc: Double) {
        self.wysokosc = wysokosc
        super.init(a: a, b: b)
    }

    func poleCalkowite() -> Double {
        return 2 * (pole() + dlugoscBokow.a * wysokosc + dlugoscBokow.b * wysokosc)
    }

    func sumaKrawedzi() -> Double {
        return 4 * (dlugoscBokow.a + dlugoscBokow.b + wysokosc)
    }

    func objetosc() -> Double {
        return pole() * wysokosc
    }

    override func wyswietlDane() {
        print("Prostopadłościan o bokach \(dlugoscBokow.a), \(dlugoscBokow.b) i wysokości \(wysokosc)")
    }
}

// Testowanie funkcji
let prostopadloscian = Prostopadloscian(a: 3, b: 4, wysokosc: 5)
print("Pole całkowite prostopadłościanu: \(prostopadloscian.poleCalkowite())")
print("Suma krawędzi prostopadłościanu: \(prostopadloscian.sumaKrawedzi())")
print("Objętość prostopadłościanu: \(prostopadloscian.objetosc())")
prostopadloscian.wyswietlDane()
