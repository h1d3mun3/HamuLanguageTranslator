# HamuLanguageTranslator

## 🐹About

HamuLanguageTranslatorは、世界で最初の日本語とハム語の変換ライブラリです🐹

日本語の自然言語を入力することで、それらを適切にハム語に変換し返却することができます👍

## 🖥Requirements

HamuLanguageTranslatorは下記環境をサポートしています。

- iOS 17以降
- macOS 14 以降

## 👨‍💻How to use

日本語テキストをハム語に変換する場合は下記のようにします🐹

```swift
import HamuLanguagetranslator

let sources = "あいさつ！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君の素敵なアプリと協力するしてくれると嬉しい！イケてな～いなところもあるかもしれないけどうるさいいわずに盛り上がるしてくれると嬉しい！"


let result = HamuLanguageTranslator.translate(from: sources, mode: .toHamu)

// you will get this. "はむはー！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君のワンダちゅなアプリとあわせっちしてくれるとうれぴっプル！うにに～なところもあるかもしれないけどがちゃちゃいわずにドンチャカしてくれるとうれぴっプル！"
```

もちろん、ハム語からの日本語翻訳にも対応しています🙆

```swift
import HamuLanguagetranslator

let sources = "はむはー！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君のワンダちゅなアプリとあわせっちしてくれるとうれぴっプル！うにに～なところもあるかもしれないけどがちゃちゃいわずにドンチャカしてくれるとうれぴっプル！"

let result = HamuLanguageTranslator.translate(from: sources, mode: .fromHamu)

// you will get this. "あいさつ！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君の素敵なアプリと協力するしてくれると嬉しい！イケてな～いなところもあるかもしれないけどうるさいいわずに盛り上がるしてくれると嬉しい！"
```
