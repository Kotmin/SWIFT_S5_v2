// Kod do polecenia 1
var studentDict = [String: String]()

// Kod do polecenia 2
for _ in 1...5 {
    print("Podaj identyfikator studenta:")
    let studentID = readLine()!
    print("Podaj nazwisko studenta:")
    let studentName = readLine()!
    studentDict[studentID] = studentName
}

// Kod do polecenia 3
print("Lista studentów:")
for (id, name) in studentDict {
    print("Identyfikator: \(id), Nazwisko: \(name)")
}

// Kod do polecenia 4
print("Podaj identyfikator studenta do wyszukania:")
if let searchID = readLine(), let studentName = studentDict[searchID] {
    print("Znaleziono studenta o identyfikatorze \(searchID): \(studentName)")
} else {
    print("Nie znaleziono studenta o podanym identyfikatorze.")
}

// Kod do polecenia 5
print("Podaj identyfikator studenta do usunięcia:")
if let deleteID = readLine(), let _ = studentDict.removeValue(forKey: deleteID) {
    print("Usunięto studenta o identyfikatorze \(deleteID).")
} else {
    print("Nie znaleziono studenta o podanym identyfikatorze.")
}
