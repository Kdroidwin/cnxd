# ComittoNxA

個人で楽しむために作成しています.  
ソースの再利用は自由です.  
利用しているライブラリはそれぞれのライセンスに従ってください.  

本ソースは、[ComittoNおよびComittoNxN](https://docs.google.com/open?id=0Bzx6UxEo3Pg0SXNIQVdRVnVqemM)、[ComittoNxM](https://www.axfc.net/u/3792235)、[ComittoNxT](https://www.axfc.net/u/3978158)のソースを元にしています。

対応バージョンはAndroid2.3以上です.  
動作確認は1台でしか行っていません.(Android10.0)  

## 変更履歴

### Ver1.65A1 (2020/08/04)

  - SMB2の共有フォルダアクセスに対応.
  - SDカードのファイルの名前の変更・削除に対応.
  - ツールバーの順番やアイコンを変更.
  - フォルダのサムネイル作成時にフォルダ内のファイルから作成できなければサブフォルダを対象にする.
  - サムネイル作成時に余白を削除。背表紙と折り返しをなるべく避ける.
  - 表示モードがサムネイル表示のときタイトルを()や[]で分解して表示.
  - ソートで「前」「後」や漢数字「一、二、三…」(壱、弐、参…)に対応.
  - ソートの数字の比較でカンマ、小数点に対応.(マイナスは違う意味で多用されるため対応しない)
  - 初期フォルダより上のフォルダに移動した場合に、フォルダ内が参照できなくても初期フォルダまでの途中のフォルダを表示するよう変更.
  - 3回連続で起動してタッチするまでに異常終了した場合には、リスト表示(サムネイルOFF)にして初期フォルダから起動するよう変更.
  - ページ結合と余白カット方法をより画面にフィットするように変更.
  - イメージ表示画面の先頭・末尾移動ボタンの長押し判定する範囲を変更.
  - イメージ表示画面で縦フリックするとメニューを表示.

#### 注意事項

  - Android10ではSDカードや内部ドライブのファイルの操作ができているが、Android7～9でできるかは不明

#### 既知の不具合

  - ファイル一覧画面で下部のボタンによる選択時に特定の条件で表示が乱れる
  - ファイル一覧画面で左右スクロールで特定の箇所で異常終了する
