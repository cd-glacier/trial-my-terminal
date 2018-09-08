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

```sh
gch
```

ctrl-j :下.
ctrl-k :上.
enter: 決定

##### ga

レポジトリの*root*で叩くと
diffを確認しながらgit addができるコマンドです.

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


