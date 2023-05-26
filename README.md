# 連絡帳アプリを作ってみましょう適当に

## 環境構築

### asdf のインストール

Flutter はバージョンアップの速度が速い。2 週間ペースでパッチバージョンが更新される。(Ex. 3.7.9 -> 3.7.10) みたいな感じ。
SDK を更新するのにその都度手動でやっていたら合わないので、バージョン管理ツールを導入します。それが、`asdf` です。

`homebrew`で `asdf` をインストールしてください。

```bash
$ brew install asdf
$ echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
$ asdf # コマンドが認識できたらOK
```

以上で、asdf のインストールは完了です。

### .tool-versions で flutter install

プロジェクトのルートフォルダに、`.tool-versions` というファイルがあります。これは、`asdf`でインストールする内容をまとめたもので、プロジェクト単位任意のバージョンを指定できます。
`.tool-versions` を使用している場合、 `asdf install` とターミナルで打てば、指定されたバージョンがインストールできます。

Flutter のプロジェクトを VS Code で開いたら、ターミナルを起動して、`asdf install`です。

```bash
$ asdf install
```

以上で、Flutter のセットアップは完了です。

### flutter_sdk シンボリックリンクの追加

VSCode の仕様で、Flutter Sdk のローカルパスを Workspace の settings.json に書かないといけない。
この方法だと settings.json をチームで共有する時に自分の端末のパスが入るとアホなので、Sdk へのローカルパスにシンボリックリンクを貼って、settings.json にはシンボリックリンクを設定する。

```bash
$ ln -s $HOME/.asdf/installs/flutter/3.10.1-stable flutter_sdk
```

詳しいことは以下を参照
https://zenn.dev/k9i/articles/0c169499f15b0c

### 必要な IDE

下記の IDE の最新バージョンをインストールしてください。

- Visual Studio Code
- Android Studio(https://developer.android.com/studio)
- XCode

Android Studio は `Flamingo` というバージョンでないとだめなので、アップグレードお願いします。
