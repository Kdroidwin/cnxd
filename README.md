# ComittoNxD

本ソースは、[ComittoNおよびComittoNxN](https://docs.google.com/open?id=0Bzx6UxEo3Pg0SXNIQVdRVnVqemM)、[ComittoNxM](https://www.axfc.net/u/3792235)、[ComittoNxT](https://www.axfc.net/u/3978158)、[ComittoNxA](https://github.com/ComittoNxA/ComittoNxA/tree/1.65A20)、ComittoNxACのソースを元にしています.

対応バージョンはAndroid5.0以上です.

#### 注意事項

  - イメージ表示画面を開くときに落ちる場合には、画像処理スレッド数と使用メモリサイズを少なめにしてください.


#### Major Update

  - 画像形式Webpに対応([76a86f0](https://github.com/8cAyqpVKio/ComittoNxA/commit/76a86f007bb409b92f5d4061abd788e0cb83d31a)).


#### Minor Update

  - SDカードディレクトリが表示されない不具合の修正([7bba469](https://github.com/8cAyqpVKio/ComittoNxA/commit/7bba4694585c1f4d91cccd36a8a4f2096bcfc0c4)).
  - SMBライブラリjcifs-ngを最適化([a13cf48](https://github.com/8cAyqpVKio/ComittoNxA/commit/a13cf4834b4770dd25e89e98ad4361c63164b336)).
  - アプリクローンを作成するWorkflowを追加([8f72e2b](https://github.com/8cAyqpVKio/ComittoNxA/commit/8f72e2bc3df48e1e82b551248b6338291da6fce2))([7445613](https://github.com/8cAyqpVKio/ComittoNxA/commit/7445613e1f80475e534e74185d186b3cd5ea9bbe)).
  - 対応できない言語を削除([8f72e2b](https://github.com/8cAyqpVKio/ComittoNxA/commit/8f72e2bc3df48e1e82b551248b6338291da6fce2)).
  - 使用言語が英語の場合に一部の画面でクラッシュする不具合の修正([8f72e2b](https://github.com/8cAyqpVKio/ComittoNxA/commit/8f72e2bc3df48e1e82b551248b6338291da6fce2)).
  - 一部のZip形式のファイルを読み込めない不具合の修正([0e070ae](https://github.com/8cAyqpVKio/ComittoNxA/commit/0e070aea59747f392e2308c89aba95564475b6ca)).
  - マーク設定にて結果がすぐに表示されない不具合の修正([b9adae7](https://github.com/8cAyqpVKio/ComittoNxA/commit/b9adae75088f8d4ac5463fa1bd47ca32b8ada53b)).
  - マーク設定にてフィルタONで該当ファイルのみ表示するように変更([b9adae7](https://github.com/8cAyqpVKio/ComittoNxA/commit/b9adae75088f8d4ac5463fa1bd47ca32b8ada53b)).
  - マーク設定にて「ディレクトリにも適用する」が一部動作しない不具合の修正([b9adae7](https://github.com/8cAyqpVKio/ComittoNxA/commit/b9adae75088f8d4ac5463fa1bd47ca32b8ada53b)).


#### Licence

  - Public Licence(app/src/main/java/src/comitton/\*\*, app/src/main/jni/comitton/\*\*, app/src/main/res/\*\*).
  - LGPL-2.1 License([jcifs-ng](https://github.com/AgNO3/jcifs-ng/tree/jcifs-ng-2.1.8)).
  - UnRAR License([unrar](https://www.rarlab.com/rar/unrarsrc-5.6.4.tar.gz), app/src/main/jni/unrar5/\*\*)
  - [libjpeg-turbo](https://github.com/libjpeg-turbo/libjpeg-turbo/tree/2.1.4)
  - [libpng](https://github.com/glennrp/libpng/tree/v1.6.38)
  - [libwebp](https://github.com/webmproject/libwebp/tree/v1.2.4)
  - [SMBJ](https://github.com/hierynomus/smbj/tree/v0.10.0)
  - [Dcerpc](https://mvnrepository.com/artifact/com.rapid7.client/dcerpc/0.10.0)
  - and some Android and Java SDK libraries
