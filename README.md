# 現在のステータス
## LineageOS本体
- OS本体は起動しません。

## LineageOS Recovery
- 長らくの間動作不能でしたがようやく復旧しました。今現在動作します。
- ファクトリーリセット、/data,/cacheの完全なフォーマット可能です。
- adb sideloadと本体のみ操作で内部ストレージから選択してLineageOSのOTAの.zipファイルがインストール可能です。(署名チェックの問題によりMagiskやストックROMのOTAは動作しない可能性があります。)
- タッチ操作には対応していません。
- ずっと音量-ボタンを押してスクロールし続けると表示されるテキストがレインボーになるバグがあります。
- おそらく仕様ですが、"Advanced reset"、"Advanced"、"Apply update"を選択すると、backというボタンがないため前の画面に戻れず終了する際は電源ボタン長押しで電源を切る必要があります。

# ビルド方法
- このリポジトリは、LineageOS 14.1専用です。LineageOS 14.0やLineageOS 15.0以降には対応していないので注意してください。
- LineageOS14.1ではビルド時に[jack](https://xdaforums.com/t/discussion-how-to-fix-jack-server-failing-to-build-with-error-try-jack-diagnose.3575179/)と[OpenJDK8のセキュリティ](https://plaza.rakuten.co.jp/solarisintel/diary/202110120000/)に関するエラーが出ます。
