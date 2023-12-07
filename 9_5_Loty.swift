// Kod do polecenia 1
struct Flight {
    var departure: (airportCode: String, airportName: String)
    var destination: (airportCode: String, airportName: String)
    var travelTime: Int
}

var flights = [Flight]()
// Kod do polecenia 2
print("Podaj liczbę lotów:")
if let n = Int(readLine()!) {
    // var flights = [Flight]()

    for _ in 1...n {
        print("Podaj numer lotniska wylotu:")
        let departureCode = readLine()!
        print("Podaj nazwę lotniska wylotu:")
        let departureName = readLine()!
        print("Podaj numer lotniska docelowego:")
        let destinationCode = readLine()!
        print("Podaj nazwę lotniska docelowego:")
        let destinationName = readLine()!
        print("Podaj czas podróży w minutach:")
         
        if let travelTime = Int(readLine()!) {
            let flight = Flight(departure: (departureCode, departureName), destination: (destinationCode, destinationName), travelTime: travelTime)
            flights.append(flight)
          print("// KONIEC FORMULARZA //") 
        } else {
            print("Błędny format czasu podróży. Podaj liczbę całkowitą.")
        }
    }
} else {
    print("Błędny format liczby lotów. Podaj liczbę całkowitą.")
}

// Kod do polecenia 3
print("Lista lotów:")
for (index, flight) in flights.enumerated() {
    print("Lot \(index + 1):")
    print("Wylot z \(flight.departure.airportName) (\(flight.departure.airportCode))")
    print("Przylot do \(flight.destination.airportName) (\(flight.destination.airportCode))")
    print("Czas podróży: \(flight.travelTime) minut\n")
}


// Kod do polecenia 4
let averageTime = flights.reduce(0) { $0 + $1.travelTime } / flights.count
print("Loty trwające dłużej niż średnia:")
for (index, flight) in flights.enumerated() {
    if flight.travelTime > averageTime {
        print("Lot \(index + 1): \(flight.travelTime) minut")
    }
}

// Kod do polecenia 5
flights = flights.filter { $0.travelTime > averageTime }
print("Usunięto loty krótsze niż średnia.")

// Kod do polecenia 6
print("Aktualna lista lotów:")
for (index, flight) in flights.enumerated() {
    print("Lot \(index + 1):")
    print("Wylot z \(flight.departure.airportName) (\(flight.departure.airportCode))")
    print("Przylot do \(flight.destination.airportName) (\(flight.destination.airportCode))")
    print("Czas podróży: \(flight.travelTime) minut\n")
}


