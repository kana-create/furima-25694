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
| Column          |Type    | Options     |
| -----------     |--------| ------------|
| nickname        | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| familyname      | string | null: false |
| firstname       | string | null: false |
| familyname_kana | string | null: false |
| firstname_kana  | string | null: false |
| birthday        | date   | null: false |

### Association
- has_many :item
- has_many :purchase

## itemsテーブル
| Column           |Type    | Options     |
| -----------      |--------| ------------|
| image            | string | null: false |
| item_name        | string | null: false |
| item_discription | text   | null: false |
| category         | string | null: false |
| status           | string | null: false |
| shipping         | string | null: false |
| delivery_day     | string | null: false |
| proce            | string | null: false |
### Association
- belongs_to :user
- has_many :purchase

## purchaseテーブル
| Column           |Type    | Options     |
| -----------      |--------| ------------|
|                  | string | null: false |
|                  | string | null: false |

### Association
- belongs_to :user
- belongs_to :item
- has_one :shipping_adress

## shipping_adressテーブル
| Column           |Type    | Options     |
| -----------      |--------| ------------|
| postal_code      | string | null: false |
| prefectures      | string | null: false |
| municipalities   | string | null: false |
| house_number     | string | null: false |
| building_name    | string | null: false |
| phone_number     | string | null: false |
### Association
- has_one :purchase
