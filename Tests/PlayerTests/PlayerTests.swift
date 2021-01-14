import XCTest

@testable import Player
@testable import HandSign

final class PlayerTests: XCTestCase {
    func testDependencies() {
        XCTAssertEqual(HandSign.rock.rawValue, "rock")
        XCTAssertEqual(HandSign.paper.rawValue, "paper")
        XCTAssertEqual(HandSign.scissors.rawValue, "scissors")
    }

    func testPlayerThrowing() {
        let result = Player(name: "DongHyuk").throwing()
        XCTAssertTrue(HandSign.allCases.contains(result))
    }

    static var allTests = [
        ("testDependencies", testDependencies),
        ("testPlayerThrowing", testPlayerThrowing),
    ]
}
