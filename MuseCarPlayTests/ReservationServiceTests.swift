import XCTest
@testable import MuseCarPlay

final class ReservationServiceTests: XCTestCase {
    func testDefaultReservationsAreEmpty() { XCTAssertTrue(ReservationService().upcomingReservations().isEmpty) }
}
