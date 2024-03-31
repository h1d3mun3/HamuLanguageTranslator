import XCTest
@testable import HamuLanguageTranslator

final class HamuLanguageTranslatorTests: XCTestCase {
    func testToHamuWord() throws {
        let sources = "あいさつ！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君の素敵なアプリと協力するしてくれると嬉しい！イケてな～いなところもあるかもしれないけどうるさいいわずに盛り上がるしてくれると嬉しい！"
        let expected = "はむはー！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君のワンダちゅなアプリとあわせっちしてくれるとうれぴっプル！うにに～なところもあるかもしれないけどがちゃちゃいわずにドンチャカしてくれるとうれぴっプル！"


        let result = HamuLanguageTranslator.translate(from: sources, mode: .toHamu)


        XCTAssertEqual(result, expected)
    }

    func testFromHamuWord() throws {
        let sources = "はむはー！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君のワンダちゅなアプリとあわせっちしてくれるとうれぴっプル！うにに～なところもあるかもしれないけどがちゃちゃいわずにドンチャカしてくれるとうれぴっプル！"
        let expected = "あいさつ！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君の素敵なアプリと協力するしてくれると嬉しい！イケてな～いなところもあるかもしれないけどうるさいいわずに盛り上がるしてくれると嬉しい！"


        let result = HamuLanguageTranslator.translate(from: sources, mode: .fromHamu)


        XCTAssertEqual(result, expected)
    }
}
