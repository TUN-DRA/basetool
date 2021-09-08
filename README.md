# アプリ名
basetool

# 概要
野球道具専用の画像投稿アプリです。一覧画面にて、投稿された野球道具の画像などを見ることができます。気になった投稿の詳細ボタンにて、詳細表示できます。気に入った投稿にはいいね！をつけることができます。ユーザー登録を行うことで、画像の投稿、こだわりの説明、評価などの情報を投稿できます。ユーザー情報詳細では、プレーヤーとしての情報と道具一覧を見ることができます。

# 本番環境
ID：admin　PASS：8888

# 制作背景


# DEMO


# 工夫したポイント

# 使用技術
HTML・CSS・Ruby・Ruby on Rails・JavaScript・GitHub

# 課題や今後実装したい機能







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
