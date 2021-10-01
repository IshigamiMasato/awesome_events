# awsome events
これは、パーフェクトRuby on Rails第2版の第6章以降で作成されたサンプルアプリケーションです。

イベント情報を登録／編集したり、イベントに参加登録したりできます。

## 環境
- Ruby 2.6.7
- Rails 6.1.4.1
- libvips
- Elasticsearch
    - Japanese(kuromoj) Analysis Plugin

## テストツール
- minitest

## テストの実行方法
### システムテストの実行方法
elasticsearchを起動します  
`% elasticsearch`  
システムテストを起動させます  
`% bin/rails test:system`
