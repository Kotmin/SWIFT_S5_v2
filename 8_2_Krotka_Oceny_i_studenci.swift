// Zadanie 8.2
// Polecenie 1: Napisz program konsolowy, który zdefiniuje krotkę "student" składającą się z elementów takich jak: nazwisko oraz trzy oceny jako typu wyliczeniowego.

// https://www.codecademy.com/learn/learn-swift-enumerations/modules/learn-swift-enumerations/cheatsheet

// https://www.hackingwithswift.com/read/pl/0/14/typy-wyliczeniowe-z-ang-enumerations

// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations/

enum Oceny: Double {
    case dwa = 2.0
    case trzy = 3.0
    case trzy_i_pol = 3.5
    case cztery = 4.0
    case cztery_i_pol = 4.5
    case piec = 5.0
}

typealias Student = (nazwisko: String, oceny: (Oceny, Oceny, Oceny))

// Polecenie 2: Wczytaj dane trzech studentów. Wyświetl dane studentów w kolejności malejącej według uzyskanej średniej.
let student1: Student = ("Kowalski", (Oceny.dwa, Oceny.trzy, Oceny.piec))
let student2: Student = ("Nowak", (Oceny.trzy_i_pol, Oceny.cztery, Oceny.cztery_i_pol))
let student3: Student = ("Wiśniewski", (Oceny.piec, Oceny.cztery_i_pol, Oceny.trzy))

let studenci = [student1, student2, student3]

func obliczSrednia(student: Student) -> Double {
    let suma = student.oceny.0.rawValue + student.oceny.1.rawValue + student.oceny.2.rawValue
    return suma / 3.0
}

let posortowaniStudenci = studenci.sorted { obliczSrednia(student: $0) > obliczSrednia(student: $1) }

for student in posortowaniStudenci {
    print("Student: \(student.nazwisko), Średnia: \(obliczSrednia(student: student))")
}


