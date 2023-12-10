// Zadanie 8.4
// Polecenie 1. Zdefiniuj typ wyliczeniowy Miesiac, który zawiera 12 miesięcy.
enum Miesiac: String, CaseIterable {
    case styczen, luty, marzec, kwiecien, maj, czerwiec, lipiec, sierpien, wrzesien, pazdziernik, listopad, grudzien
}

// Polecenie 2. Dopasuj porę roku dla danego miesiąca za pomocą instrukcji switch. Załóż, że dany miesiąc jest przyporządkowany do jednej pory roku.
for miesiac in Miesiac.allCases {
    switch miesiac {
    case .grudzien, .styczen, .luty:
        print("\(miesiac.rawValue) należy do pory zimowej.")
    case .marzec, .kwiecien, .maj:
        print("\(miesiac.rawValue) należy do pory wiosennej.")
    case .czerwiec, .lipiec, .sierpien:
        print("\(miesiac.rawValue) należy do pory letniej.")
    case .wrzesien, .pazdziernik, .listopad:
        print("\(miesiac.rawValue) należy do pory jesiennej.")
    }
}
