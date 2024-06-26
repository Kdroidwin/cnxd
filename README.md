# ComittoNxD

[![Build/Debug](https://github.com/8cAyqpVKio/cnxd/actions/workflows/debug.yml/badge.svg)](
https://github.com/8cAyqpVKio/cnxd/actions/workflows/debug.yml)
[![Build/Release](https://github.com/8cAyqpVKio/cnxd/actions/workflows/release-clone-versioning.yml/badge.svg)](
https://github.com/8cAyqpVKio/cnxd/actions/workflows/release-clone-versioning.yml)

<img src="app/src/main/res/drawable-hdpi/icon.png" width="100" align="right" alt="logo">

ComittoNxDはオープンソースの画像ビューワーです. 対応バージョンはAndroid5.0以上です.

このリポジトリは8cAyqpVKioさんのComittoNxDのバックアップです。

## Download

[Releases](https://github.com/kdroidwin/cnxd/releases)よりご利用ください.

#### 注意事項

- イメージ表示画面を開くときに落ちる場合には、画像処理スレッド数と使用メモリサイズを少なめにしてください.
- SMB機能には多くの不具合を確認しています. SMB匿名アクセスを許可する（ログイン不要のモード）、使用中のSMBプロトコルを切り替える（例 SMB1.0 -> SMB2.0）、一度に大量のファイルを読み込まない等、各自対応をお願いします.

#### Major Update from [NxA](https://github.com/ComittoNxA/ComittoNxA/tree/1.65A20)

- 画像形式Webpに対応.
- 64bit形式に対応.
- SMB1からSMB3.1.1まで対応.
- 依存関係およびセキュリティの更新.

#### Minor Update from [NxA](https://github.com/ComittoNxA/ComittoNxA/tree/1.65A20)

- SDカードディレクトリが表示されない不具合の修正.
- SMBライブラリjcifsの設定を最適化.
- 対応できない言語を削除.
- 使用言語が英語の場合に一部の画面でクラッシュする不具合の修正.
- 一部のZip形式のファイルを読み込めない不具合の修正.
- マーク設定にて結果がすぐに表示されない不具合の修正.
- マーク設定にてフィルタONで該当ファイルのみ表示するように変更.
- マーク設定にて「ディレクトリにも適用する」が一部動作しない不具合の修正.

## Build

アプリをビルドするには[Git](https://git-scm.com/)のインストールが必要です.[Android Studio](https://developer.android.com/studio/install)を利用するか、gradlewコマンドでアプリをビルドしてください.

## Issues, Feature Requests and Contributing

大歓迎です. 各ページをご利用ください.

## Licence

This software is available under a public license which can be found in the LICENSE file.

本ソースは、[ComittoNおよびComittoNxN](https://docs.google.com/open?id=0Bzx6UxEo3Pg0SXNIQVdRVnVqemM)、[ComittoNxM](https://www.axfc.net/u/3792235)、[ComittoNxT](https://www.axfc.net/u/3978158)、[ComittoNxA](https://github.com/ComittoNxA/ComittoNxA/tree/1.65A20)、[ComittoNxAC](https://www.axfc.net/u/4059552)のソースを元にしています.
