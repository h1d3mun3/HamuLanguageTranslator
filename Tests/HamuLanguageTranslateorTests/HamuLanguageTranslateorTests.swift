import XCTest
@testable import HamuLanguageTranslateor

final class HamuLanguageTranslateorTests: XCTestCase {
    func testExample() throws {
        let sources = "あいさつ"
        let expected = "はむはー"


        let result = HamuLanguageTranslateor.translate(from: sources)


        XCTAssertEqual(result, expected)
    }
}
