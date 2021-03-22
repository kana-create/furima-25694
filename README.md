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
| nickname           | string | null: false ,unique: true|
| email              | string | null: false              |
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
| Column              |Type    | Options     |
| -----------         |--------| ------------|
| name                | string | null: false |
| discription         | text   | null: false |
| category_id         | references | null: false |
| status_id           | references | null: false |
| shipping_date_id    | references | null: false |
| shipment_source_id  | references | null: false |
| delivery_day_id     | references | null: false |
| price               | integer    | null: false |
### Association
- belongs_to :users
- has_one :purchases

## purchaseテーブル
| Column     |Type        | Options     |
| -----------|------------| ------------|
| users_id    | references| null: false |
| items_id   | references | null: false |

### Association
- belongs_to :users
- belongs_to :items
- has_one :shipping_adress
- references : shipping_adress

## shipping_adressテーブル
| Column           |Type    | Options     |
| -----------      |--------| ------------|
| postal_code      | string | null: false |
| prefectures_id   | integer| null: false |
| municipalities   | string | null: false |
| house_number     | string | null: false |
| building_name    | string |             |
| phone_number     | string | null: false |
### Association
- has_one :purchases
