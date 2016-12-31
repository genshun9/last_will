# last_will

## カード紹介

```
《遺言状/Last Will》

通常魔法（禁止カード）
このターンに自分フィールド上のモンスターが自分の墓地へ送られた時、
デッキから攻撃力１５００以下のモンスター１体を特殊召喚する事ができる。
```

## 機能紹介
Twitter嬢で特定のキーワードを含むツイートを、Slackに出力する監視bot

## 使い方
1. ライブラリをインストール
```
npm install
```
以下ローカルで動かす場合と、herokuで動かす場合で別れる

### ローカルでHubotを動かす場合

1. `.config`の中身の環境変数を編集する（HUBOT_HEROKU_WAKEUP_TIMEやTZは、heroku用なので必要ない）
1. `heroku config:set`を使って環境変数を追加するシェルを実行する
```
sh run_heroku_config.sh
```

### heroku上でHubotを動かす場合

1. 以下`Heroku toolbelt`をインストールし、herokuコマンドが使えることを前提とする
1. herokuのログインを行うための認証を行う
```
heroku auth:login
```
1. heroku上にアプリを作成する
```
heroku apps:create <APP NAME>
```
1. `Hubot`は`Redis`を使うので、addonを追加する
```
heroku addons:add redistogo
```
1. `.config`の中身の環境変数を編集する（注：無料プランは6時間はSleep状態にする必要があるので、開始・終了時刻を追加している）
1. `heroku config:set`を使って環境変数を追加するシェルを実行する
```
sh run_heroku_config.sh
```
1. Heroku Schedulerを追加する
```
heroku addons:create scheduler:standard
```
1. 具体的なSchedulerの設定はWebで行うので、以下のコマンドを叩いて設定画面をブラウザで開く
```
heroku addons:open scheduler
```
1. herokuにpushする
```
git push heroku master
```


## 詳細
- [heroku](http://www.heroku.com)
- [hubot](http://hubot.github.com)
- [generator-hubot](https://github.com/github/generator-hubot)
