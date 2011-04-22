---
post: layout
title: Cloud Foundry を使ってみた
category: PaaS
---


### 環境のセットアップ

$ rvm gemset create vmc
$ rvm 1.9.2-head@vmc
$ gem instal vmc


### ログイン

$ vmc target api.cloudfoundry.com
$ vmc login
Email: username@example.com
Password: ********
Successfully logged into [http://api.cloudfoundry.com]


### デプロイ




### 雑多な設定

以下のファイルを Dropbox へ移動させて家でも共通の設定が使用できるようにする

$HOME/.vmc_target
$HOME/.vmc_token


### References:

- [Welocome to Cloud Foundry](http://www.cloudfoundry.com/)

<iframe title="YouTube video player" width="640" height="390" src="http://www.youtube.com/embed/dqr8xWQlRcM" frameborder="0" allowfullscreen></iframe>

