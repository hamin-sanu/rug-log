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

# RugLog DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|encrypted_password|string|null: false|
### Association
- has_many :logs

## logsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|matchData|data|null: false|
|how|integer|null: false|
|location|string|null: false|
|team_a|string|null: false|
|team_b|string|null: false|
|score_a|integer|null: false|
|score_b|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
### Association
- has_one :user
- has_one :category

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- belongs_to :log