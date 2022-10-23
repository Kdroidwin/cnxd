From https://docs.google.com/open?id=0Bzx6UxEo3Pg0SXNIQVdRVnVqemM

ComittoNのソースについて


GPL3.0であるmupdfのソースを改造（Javaで作り直し）又は流用しているためGPLのライセンスに従いソースを公開します。
V1.31からはGPLの自動着色のアルゴリズムも使用しています。
また、SAMBAアクセスに使用しているjcifsはLGPLであり、ライブラリを使用するだけであればソース公開の必要はありませんが、APKに組み込んだ場合にソース公開が必要かどうかはグレーのようですのでご注意ください。

以下のファイルを使用する場合はGPL3.0に感染します。
その他の私の作成したソースについてはPublic DomainとしてGPLの適用なしに利用可能とします。

* GPL3.0
mupdfのcソースを元に作成したjavaソース
・src\jp\dip\muracoro\comitton\stream\PDFLib.java
・src\jp\dip\muracoro\comitton\stream\PDFManager.java

mupdfのソースを流用
・jni\comitton\PdfAes.cpp
・jni\comitton\PdfArc4.cpp
・jni\comitton\PdfCommon.cpp
・jni\comitton\PdfCrypt.cpp
・jni\comitton\PdfCrypt.h
・jni\comitton\PdfFlate.cpp
・jni\comitton\PdfMd5.cpp
・jni\comitton\PdfPredict.cpp
・jni\comitton\PdfSha256.cpp
・jni\comitton\ImagePDF.cpp


自動着色のアルゴリズムを含むソース
・jni\comitton\ImageColoring.cpp


* その他使用しているライブラリ
・jni\libjpeg\*
・jni\libpng\*
・jni\unrar\*
・jni\zlib\*