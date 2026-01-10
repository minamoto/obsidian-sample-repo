# 1. インストール手順

AsciiDocファイルからHTML/PDF/Epubファイルを生成するために、asciidoctorコマンドをインストールする。

[asciidoctor README-jp](https://github.com/asciidoctor/asciidoctor/blob/main/README-jp.adoc)
## Rubyのインストール

asciidoctorはRubyで実装されているため、まずRubyをインストールする。

[Rubyのインストール | Ruby](https://www.ruby-lang.org/ja/documentation/installation/#ruby-install)

LinuxやMacOSの場合はパッケージマネージャでruby、rubygemsをインストールする。

Windowsの場合はRuby Installerを使うのが簡単。
- [Ruby Installer](https://rubyinstaller.org/downloads/)からWith Devkitの推奨バージョン (例: Ruby+Devkit 3.4.8-1 (x64) ) をダウンロード
- MSYS2のセットアップ画面で、インストール対象として **1 と 3** をそれぞれインストール

## asciidoctorのインストール

**Windowsの場合**

```shell
gem install asciidoctor
gem install asciidoctor-pdf
gem install asciidoctor-pdf-cjk
gem install asciidoctor-epub3
```

**Linux/MacOSの場合**

```shell
sudo gem install asciidoctor
sudo gem install asciidoctor-pdf
sudo gem install asciidoctor-pdf-cjk
sudo gem install asciidoctor-epub3
```

## asciidoctorの使い方

```shell
asciidoctor test.adoc        # HTML出力
asciidoctor-pdf test.adoc    # PDF 出力
asciidoctor-epub3 test.adoc  # EPub出力
```

## PDF文字化け対策

asciidoctor-pdfのオプションとして-a pdf-theme=default-with-font-fallbacks -a scripts=cjkをつける。
詳細は[こちら](https://github.com/asciidoctor/asciidoctor-pdf/issues/1472)を参照のこと。

```shell
asciidoctor-pdf -a pdf-theme=default-with-font-fallbacks -a scripts=cjk test.adoc
```

# 2. ビルド方法

**Windowsの場合**
```bash
cd 10_Draft
.\build.bat
```

**Linux/MacOSの場合**
```bash
cd 10_Draft
./build.sh
```