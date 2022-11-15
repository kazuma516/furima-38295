# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#　テーブル設計

## users テーブル

| Colum           | Type   | Options     |
| --------------- | -----  | ----------- |
| name            | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| last_name       | string | null: false |
| first_name      | string | null: false |
| last_name_kana  | string | null: false |
| first_name_kana | string | null: false |
| birthday        | string | null: false |

### Association

- has_many :item
- has_many :orders

## items テーブル

| Colum           | Type       | Options                       |
| --------------- | ---------- | ----------------------------- |
| user            | references | null: false, foreign_key:true |
| name            | string     | null: false                   |
| introduction    | text       | null: false                   |
| price           | integer    | null: false                   |
| category        | integer    | null: false                   |
| item_condition  | integer    | null: false                   |
| postage_payer   | integer    | null: false                   |
| preparation_day | integer    | null: false                   |
| postage_type    | integer    | null: false                   |
| seller          | integer    | null: false                   |

### Association

- belongs_to :user
- has_one:order

## orders テーブル

| Colum  | Type   | Options                       |
| ------ | -----  | ----------------------------- |
| user   | string | null: false, foreign_key:true |
| item   | string | null: false, foreign_key:true |

### Association

- belongs_to :user
- has_one:payment

## payments テーブル

| Colum         | Type       | Options                       |
| ------------- | ---------- | ----------------------------- |
| orders        | references | null: false, foreign_key:true |
| postcode      | string     | null: false,                  |
| prefecture_id | integer    | null: false,                  |
| city          | string     | null: false,                  |
| block         | string     | null: false,                  |
| building      | string     |                               |
| phone_number  | string     | null: false,                  |

### Association

- belongs_to :order
- 