// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct HamuLanguageTranslator {
    public enum Mode {
        case toHamu, fromHamu
    }

    public static func translate(from source: String, mode: HamuLanguageTranslator.Mode) -> String {
        var result = source
        var containedWordSets = [(target: String, to: String)]()
        for word in HamuWord.allCases {
            let wordSet = getWordSet(from: word, with: mode)
            if source.contains(wordSet.target) {
                containedWordSets.append(wordSet)
            }
        }
        
        containedWordSets.forEach({result.replace($0.target, with: $0.to) })

        return result
    }
}

extension HamuLanguageTranslator {
    private static func getWordSet(from word: HamuWord, with mode: Mode) -> (target: String, to: String)  {
        let target = mode == .toHamu ? word.getNaturalWord() : word.getHamuWord()
        let to = mode == .toHamu ? word.getHamuWord() : word.getNaturalWord()

        return (target: target, to: to)
    }
}
