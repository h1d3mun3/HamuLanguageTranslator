import XCTest
@testable import HamuLanguageTranslator

final class HamuLanguageTranslatorTests: XCTestCase {
    func testExample() throws {
        let sources = "あいさつ"
        let expected = "はむはー"


        let result = HamuLanguageTranslator.translate(from: sources)


        XCTAssertEqual(result, expected)
    }
}
