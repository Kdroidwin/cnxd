# ComittoNxD

[![Build/Debug](https://github.com/8cAyqpVKio/cnxd/actions/workflows/debug.yml/badge.svg)](
https://github.com/8cAyqpVKio/cnxd/actions/workflows/debug.yml)
[![Build/Release](https://github.com/8cAyqpVKio/cnxd/actions/workflows/release-clone-versioning.yml/badge.svg)](
https://github.com/8cAyqpVKio/cnxd/actions/workflows/release-clone-versioning.yml)

<img src="app/src/main/res/drawable-hdpi/icon.png" width="100" align="right" alt="logo">

ComittoNxDはオープンソースの画像ビューワーです. 対応バージョンはAndroid5.0以上です.

## Download

[Releases](https://github.com/8cAyqpVKio/cnxd/releases)よりご利用ください.

#### 注意事項

- イメージ表示画面を開くときに落ちる場合には、画像処理スレッド数と使用メモリサイズを少なめにしてください.
- SMB機能には多くの不具合を確認しています. 設定/共通の操作設定からSMB接続ライブラリを変更する、SMB匿名アクセスを許可する（ログイン不要のモード）、使用中のSMBのバージョンを切り替える（例 SMB1.0 -> SMB2.0）、一度に大量のファイルを読み込まない等、各自対応をお願いします.

#### Major Update from [NxA](https://github.com/ComittoNxA/ComittoNxA/tree/1.65A20)

- 画像形式Webpに対応.
- 64bit形式に対応.

#### Minor Update from [NxA](https://github.com/ComittoNxA/ComittoNxA/tree/1.65A20)

- SDカードディレクトリが表示されない不具合の修正.
- SMBライブラリjcifs-ngを最適化.
- 対応できない言語を削除.
- 使用言語が英語の場合に一部の画面でクラッシュする不具合の修正.
- 一部のZip形式のファイルを読み込めない不具合の修正.
- マーク設定にて結果がすぐに表示されない不具合の修正.
- マーク設定にてフィルタONで該当ファイルのみ表示するように変更.
- マーク設定にて「ディレクトリにも適用する」が一部動作しない不具合の修正.

## Issues, Feature Requests and Contributing

大歓迎です. 各ページをご自由ください.

## Licence

This software is available under a public license which can be found in the LICENSE file.

本ソースは、[ComittoNおよびComittoNxN](https://docs.google.com/open?id=0Bzx6UxEo3Pg0SXNIQVdRVnVqemM)、[ComittoNxM](https://www.axfc.net/u/3792235)、[ComittoNxT](https://www.axfc.net/u/3978158)、[ComittoNxA](https://github.com/ComittoNxA/ComittoNxA/tree/1.65A20)、[ComittoNxAC](https://www.axfc.net/u/4059552)のソースを元にしています.
