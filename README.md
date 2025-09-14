# 現在のステータス
## LineageOS本体
- 起動しません。

## LineageOS Recovery
- 長らくの間動作不能でしたがようやく復旧しました。
- adb sideloadで内部ストレージから選択してLineageOSのOTAの.zipファイルがインストール可能です。(MagiskやStockROMはフラッシュ不可)
- タッチ操作には対応していません。
- ずっと音量-ボタンを押してスクロールし続けると表示されるテキストがレインボーになるバグがあります。

# ビルド方法
- LineageOS14.1ではビルド時に[jack](https://xdaforums.com/t/discussion-how-to-fix-jack-server-failing-to-build-with-error-try-jack-diagnose.3575179/)と[OpenJDK8のセキュリティ](https://plaza.rakuten.co.jp/solarisintel/diary/202110120000/)に関するエラーが出ます。
