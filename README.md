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

## usersテーブル
| Column             |Type    | Options                  |
| -----------        |--------| -------------------------|
| nickname           | string | null: false              |
| email              | string | null: false ,unique: true|
| encrypted_password | string | null: false              |
| familyname         | string | null: false              |
| firstname          | string | null: false              |
| familyname_kana    | string | null: false              |
| firstname_kana     | string | null: false              |
| birthday           | date   | null: false              |

### Association
- has_many :items
- has_many :purchases

## itemsテーブル
| Column              |Type      | Options     |
| -----------       |--------    | ------------|
| discription       | text       | null: false |
| category_id       | integer    | null: false |
| status_id         | integer    | null: false |
| shipping_date_id  | integer    | null: false |
| prefectures_id    | integer    | null: false |
| delivery_day_id   | integer    | null: false |
| price             | integer    | null: false |
| user              | references | null: false ,foreign_key: true|

### Association
- belongs_to :user
- has_one :purchase

## purchasesテーブル
| Column     |Type        | Options                       |
| -----------|------------| ------------------------------|
| users      | references | null: false,foreign_key: true |
| items      | references | null: false ,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item
- has_one :shipping_adress

## shipping_adressesテーブル
| Column           |Type    | Options     |
| -----------      |--------| ------------|
| postal_code      | string | null: false |
| prefectures_id   | integer| null: false |
| municipalities   | string | null: false |
| house_number     | string | null: false |
| building_name    | string |             |
| phone_number     | string | null: false |
| purchase         | references | null: false ,foreign_key: true|
### Association
- belongs_to :purchase
