# trial-my-terminal

fish, neovim with deinを人に勧めるために作られたレポジトリです.

installすると良い感じに設定されたfishとneovimが使用できます.

## install

```sh
make install
```

## uninstall

```sh
make uninstall
```

### make help

```sh
make help
```

## fish

ほとんど素のfishです.

右プロンプトに現在のブランチ名がでるようになっているのと
ちょっと便利な関数を使うことができます.

### 便利な関数たち

#### gitコマンドたち

##### github

cloneしているレポジトリを曖昧検索して良い感じに移動できます.
移動する際にREADME.mdを確認できます

```sh
github
```

ghq rootというものを設定する必要があります.

~/.gitconfigに
```
[ghq]
  root = ~/go/src/
```

検索したいレポジトリのrootディレクトリを設定しましょう.
詳しくはググってください.

##### gch

曖昧検索をしながらgit checkoutができます

![gch](https://user-images.githubusercontent.com/12538942/45256223-6beb0780-b3ce-11e8-9cb6-cd95ae0522e5.gif)

```sh
gch
```

ctrl-j :下.
ctrl-k :上.
enter: 決定

##### ga

レポジトリの*root*で叩くと
diffを確認しながらgit addができるコマンドです.

![ga](https://user-images.githubusercontent.com/12538942/45256274-588c6c00-b3cf-11e8-844e-35ca86969317.gif)

```sh
ga
```

ctrl-j :下.
ctrl-k :上.

ctrl-i :選択.
enter: 決定.

ctrl-d :preview windowを下にスクロール.
ctrl-u :preview windowを上にスクロール.

##### gl

git logを確認することができます.
2つ選択して決定すると,
選択したcommitの差分を確認することができます.

![gl](https://user-images.githubusercontent.com/12538942/45256345-1ca5d680-b3d0-11e8-83be-2f76160903a2.gif)

```sh
gl
```

##### gp

> git push origin [今いるbranch]

してくれるだけのコマンドと思いきや,
masterにpushしようとすると本当にpushして良いか聞いてくれます

```
gp
```

##### hi

historyをfzfによって曖昧検索できるだけです

```sh
hi
```

##### copy & paste

cpコマンドのようにコピー先を指定する必要のないcopyコマンドです.
clipboardにコピーするようなイメージです.

```sh
copy [file or dir]
```

カレントディレクトリにコピーしたファイル, ディレクトリをpasteします
```sh
paste
```

## neovim

自分の気に入った設定が最初から入っているneovimです

最初に

> :call dein#install()

と打つことでdeinを使ったpluginのインストールが始まります.

### わかりにくいコマンドの説明

以下はnormalモードで入力してください.


> ,a

neovimを開いたrootから曖昧検索ができます.
grep的なやつです.

> ;

最近開いたファイルをfzfを用いて検索できます.

> '

neovimを開いたrootからfile検索ができます.
findコマンド的なものです.

> e .

nerdtreeというpluginを使って
ディレクトリの階層を確認できます.

> :T

新しいtabをひらきます

##### golangを書く時のコマンド

vim-go, gocode, godefというpluginを使用しています.

保存時にimportとformatを自動で行います.

> gd

と打つことでカーソル上の定義にjumpできます.

> ctrl-t

で戻ることができます.
