import Foundation

struct Place: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let address: String
}
