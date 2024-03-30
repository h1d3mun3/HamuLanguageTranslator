# HamuLanguageTranslator

## About

HamuLanguageTranslatorは、世界で最初の日本語とハム語の変換ライブラリです。

日本語の自然言語を入力することで、それらを適切にハム語に変換し、返却することができます。


## Requirements

HamuLanguageTranslatorは下記環境をサポートしています。

- iOS 17以降
- macOS 14 以降

## How to use

```swift
import HamuLanguagetranslator

let sources = "あいさつ！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君の素敵なアプリと協力するしてくれると嬉しい！イケてな～いなところもあるかもしれないけどうるさいいわずに盛り上がるしてくれると嬉しい！"


let result = HamuLanguageTranslator.translate(from: sources)

// you will get this. "はむはー！このライブラリはHamuLanguageTranslatorというんだ！君の入力したテキストをハム語に変換するよ！君のワンダちゅなアプリとあわせっちしてくれるとうれぴっプル！うにに～なところもあるかもしれないけどがちゃちゃいわずにドンチャカしてくれるとうれぴっプル！"
```
