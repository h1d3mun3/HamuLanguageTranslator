// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct HamuLanguageTranslator {
    public static func translate(from source: String) -> String {
        var result = source
        var containedWords = [HamuWord]()
        for word in HamuWord.allCases {
            if source.contains(word.getNaturalWord()) {
                containedWords.append(word)
            }
        }
        
        containedWords.forEach({result.replace($0.getNaturalWord(), with: $0.getHamuWord()) })

        return result
    }
}
