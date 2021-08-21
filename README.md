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