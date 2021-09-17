# アプリ名
basetool

# 概要
野球道具専用の画像投稿アプリです。一覧画面にて、投稿された野球道具の画像などを見ることができます。気になった投稿の詳細ボタンにて、詳細表示できます。気に入った投稿にはいいね！をつけることができます。ユーザー登録を行うことで、画像の投稿、こだわりの説明、評価などの情報を投稿できます。ユーザー情報詳細では、プレーヤーとしての情報と道具一覧を見ることができます。

# URL
https://basetool-app.herokuapp.com/

# 本番環境
ID：admin　PASS：8888

# テスト用アカウント
email：aaa@111　PASS：aaa111
email：bbb@222　PASS：bbb222

# 制作背景
野球道具は高価でありながら、試しに使ってみることがほとんどできず、自分に合う道具を見つけにくいという課題を解決したいと思いました。特に学生にこのアプリを使用いただくことで、早い段階で自分に合う道具に出会ってもらい、野球を長く楽しんで欲しいという願いを込めています。

# DEMO


# 工夫したポイント
ransackを用いた検索（絞り込み）機能の実装です。試行錯誤を繰り返し、何とか実装できました。

# 使用技術
HTML・CSS・Ruby・Ruby on Rails・JavaScript・GitHub

# 課題や今後実装したい機能
今後、画像を複数枚投稿できる実装をしたいと思っています。レイアウトを少しずつ改善して見やすいアプリにしたいと思っています。

# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| -------------------| ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association

- has_one :player
- has_many :tools
- has_many :comments

## players テーブル

| Column        | Type       | Options           |
| --------------| ---------- | ----------------- |
| user          | references | foreign_key: true |
| age           |  integer   |                   |
| affiliation   |   string   |                   |
| height        |  integer   |                   |
| weight        |  integer   |                   |
| pitching_id   |  integer   |                   |
| batting_id    |  integer   |                   |
| prefecture_id |  integer   |                   |

### Association

- belongs_to :user

## tools テーブル

| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| user            | references | foreign_key: true |
| tool_name       |   string   | null: false       |
| maker_id        |  integer   | null: false       |
| price           |   integer  |                   |
| purchase_date   |   string   |                   |
| category_id     |   integer  | null: false       |
| detail          |    text    | null: false       |
| size            |   string   |                   |
| weight          |   integer  |                   |
| part_number     |   string   |                   |
| purchase_store  |   string   |                   |
| evaluation_id   |  integer   | null: false       |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| text      |    text    | null: false |
| user      | references |             |
| tool      | references |             |

### Association

- belongs_to :user
- belongs_to :tool

## favorites テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| user      | references |             |
| tool      | references |             |

### Association

- belongs_to :user
- belongs_to :tool
