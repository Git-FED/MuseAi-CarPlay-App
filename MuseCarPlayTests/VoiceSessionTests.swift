import XCTest
@testable import MuseCarPlay

final class VoiceSessionTests: XCTestCase {
    func testSessionStartsInactive() { XCTAssertFalse(VoiceSession.shared.isActive) }
}
