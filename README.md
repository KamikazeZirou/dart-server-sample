A simple command-line application.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Overview

Dartサーバのサンプル。
通信にはgRPCを使い、DBの永続化にはMySQLを使っている。

## Setup

Flutter使っている前提。

```
# 2.12以上のDartを入れる(Beta版)
flutter channel beta
flutter upgrade
export PATH="$PATH:<Flutter SDKのパス>/bin"

# grpc用の設定
# (protoファイルからコード生成しないなら設定不要)
```

## Run Server

Docker必要。

```
docker-compose up -d db

# DB起動から10秒くらい待ってから実行。
# DBが立ち上がる前にサーバを起動すると、DB接続失敗でサーバが停止する。
docker-compose up -d todo_server
```

## Run Client

```
dart bin/client.dart
```

## Generate gRPC Code

```
# 初回だけ
flutter pub global activate protoc_plugin
pub global activate protoc_plugin
export PATH="$PATH:<Flutter SDKのパス>/.pub-cache/bin"

protoc --dart_out=grpc:lib/src/generated -Iprotos protos/todo.proto
```
