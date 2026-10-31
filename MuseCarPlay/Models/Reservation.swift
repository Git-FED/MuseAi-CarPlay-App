import Foundation

struct Reservation: Identifiable, Equatable {
    let id = UUID()
    let placeName: String
    let date: Date
    var displayDate: String { date.formatted(date: .abbreviated, time: .shortened) }
}
