# create-favicon-shellscript-MacOSX
MacOSXのシェルスクリプトだけで、ファビコン（Favicon）セット一式を生成します。

Create a favicon set by only Shell Script on MacOSX


# Summary

ファビコン（Favicon）ってなに？という方は、コチラから。    
<a href="http://ja.wikipedia.org/wiki/Favicon" target="_blank">http://ja.wikipedia.org/wiki/Favicon</a>

Favicon といっても、最近では種類が増えました。ブラウザの各所で使われるのはもちろんのこと、
たとえばスマートフォンのデスクトップにあたるところに、ウェブページへのショートカットの形で、Favicon を使われたりもします。

どういったサイズのものを用意しなくてはならないかを知るには、以下のページが役立ちます。

ファビコン・カンニング・ペーパー    
http://hail2u.net/documents/favicon-cheat-sheet-ja.html

---

What is Favicon? See this page.    
<a href="http://en.wikipedia.org/wiki/Favicon" target="_blank">http://ja.wikipedia.org/wiki/Favicon</a>

Even though the Favicon, it has be used everywhere recently. It is sure to use in the browser everywhere,
What's more, it has been used a shortcut to the web pages in the smartphone desktop.

You must know and prepare what the kind of size, the following pages will help you.

favicon-cheat-sheet    
https://github.com/audreyr/favicon-cheat-sheet


# Necessary as Favicon

前項のファビコン・カンニング・ペーパーでは、最低限これだけあれば大丈夫という「スタンダード」なものと、
「偏執狂」的に必要なものをすべてを用意するという２つのセットが紹介されています。

そこで、上の二つの方法にならって、二つのスクリプトを用意しました。

In the previous section of 'favicon-cheat-sheet', it has been introduced two different ways, 

- 'Standard' - I called arbitrarily that, a minimum set of files as Favicon.
- 'obsessive' - They called that, a set of files necessary as Favicon everything.

Therefore, I provide to the two script in the following the two above.
- create-favicon-standard.command
- create-favicon-obsessive.command


# How to

それらすべてに対応しようと思うと、手作業では大変です。

しかし、MacOSXで、もともとWindowsのファイル仕様でもあったICOファイルを生成するのは難しく、ツールも少ないのが現状です。

そこで、MacOSXに初めから備わっている画像縮小コマンドと、オープンソースのPNGファイルからICOファイルへ変換するツールを組み合わせて、ファビコンとして必要なファイル一式を出力する流れのシェルスクリプトを書いてみました。

---

It is difficult works what you continue to provide a one by one all. 

However, on MacOSX, it is difficult to generate ICO files in the Windows file specification basically. The tool is also very few.

Therefore, I tried to combine the image reduction Shell Script command of MacOSX - 'sips', with the tool of converting from PNG file to ICO files - open source software. And finnaly, I tried to make flow to output a set of files necessary as Favicon.


# png2ico

The source code of "png2ico"       
http://www.winterdrache.de/freeware/png2ico/

MacOSX binary    
http://harvey.nu/installers/png2ico.html

These two uses the following libraries.

libpng Home Page      
http://www.libpng.org/pub/png/libpng.html


# When that does not work...

スクリプトがうまく実行されない場合は、シェルスクリプトが実行されるディレクトリの権限を確認してください。
スクリプトは、自身のいるディレクトリ内に「出力」ディレクトリを新たに作成するので、
書き込み権限が必要です。また、自身のスクリプトとしての実行権限も必要になります。

たとえば、以下のようにコンソールから指定してください。    

---

When that does not work, check the permissions of the directory where the shell script is executed.
This Shell Script creates other output directory in the directory where is own script.
You will need to give write permission there. Also, you will need execute permission of as its own script.

For example, input command from the console as follows.

```sh
$ chmod a+x create_favicon_standard.command
```

