# アプリ名
## コミュサル

# アプリケーションの概要
## フットサルの対戦マッチング、チーム間のコミュニケーション、チーム内のコミュニケーションをできるもの

# URL
## https://commusal.herokuapp.com/

# テスト用アカウント
## メールアドレス: test1@test
## パスワード: test1@test

# 利用方法
## アプリケーションにチームの登録及び、チームメンバーを登録。その後対戦相手の募集や対戦相手の検索し対戦へ

# 目指した課題解決
## 現状チームのレベルを区別した、対戦相手とのマッチングが難しく、他チームとの交流が少ない。

# 洗い出した要件
## ユーザー管理機能、フットサルチーム登録機能、対戦募集機能、対戦参加機能、チャット機能

# 実装した機能についての画像やGIFおよびその説明
## 対戦募集投稿動画： https://gyazo.com/f7a71ceef334417d1854e4d7af18cab1
## チャット投稿機能動画: https://gyazo.com/c8fe4649e12341f3388850c5a02ae5a9

# 実装予定の機能
## カレンダーに対戦相手募集掲載、チーム間でのチャット機能

# データベース設計
## teamテーブル
| colum     | type       | options           |
| --------- | ---------- | ----------------- |
| team_name | string     | null: false       |
| level_id  | integer    | null: false       |
| comment   | text       |                   |
| user      | references | foreign_key: true |

### association
- has_many :calendar
- has_many :chat
- belongs_to :user
- has_one :join



## calendarテーブル
| colum         | type       | options           |
| ------------- | ---------- | ----------------- |
| date          | datetime   | null: false       |
| place         | string     | null: false       |
| prefecture_id | integer    | null: false       |
| cost          | integer    | null: false       |
| recruitment   | integer    | null: false       |
| deadline      | datetime   | null: false       |
| team          | references | foreign_key: true |

### association
- belongs_to :team
- has_one :join
- has_many :chat


## joinテーブル
| colum    | type       | options                        |
| -------- | ---------- | ------------------------------ |
| team     | references | null: false, foreign_key: true |
| calender | references | null: false, foreign_key: true |

### association
- belongs_to :team
- belongs_to :calender


## chatテーブル
| colum    | type       | options                        |
| -------- | ---------- | ------------------------------ |
| message  | text       | nul: false                     |
| team     | references | null: false, foreign_key: true |
| calendar | references | null: false, foreign_key: true |

### association
- belongs_to :team
- belongs_to :calendar

## userテーブル
| colum              | type   | options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### association
- has_many :team


