# アプリ名
## コミュサル

# アプリケーションの概要
## フットサルの対戦マッチング、チーム間のコミュニケーション、チーム内のコミュニケーションをできるもの

# URL
## 

# テスト用アカウント
## 

# 利用方法
## アプリケーションにチームの登録及び、チームメンバーを登録。その後対戦相手の募集や対戦相手の検索し対戦へ

# 目指した課題解決
## 現状チームのレベルを区別した、対戦相手とのマッチングが難しく、他チームとの交流が少ない。

# 洗い出した要件
## 

# 実装した機能についての画像やGIFおよびその説明
## 

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


## joinテーブル
| colum    | type       | options                        |
| -------- | ---------- | ------------------------------ |
| team     | references | null: false, foreign_key: true |
| calender | references | null: false, foreign_key: true |

### association
- belongs_to :team
- belongs_to :calender


## chatテーブル
| colum   | type | options    |
| ------- | ---- | ---------- |
| message | text | nul: false |

### association
- belong_to :team

## userテーブル
| colum              | type   | options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### association
- has_many :team


