# アプリ名
sports-tweet-app
 
# 概要
 
このアプリケーションは、スポーツチームと、部活動や趣味でスポーツをしている個人を結びつけることを目標に作成しました。具体的には、知名度が低いチームが情報発信することによって知名度の向上を目指す為のツイート機能、興味を持ったチームに気軽に、コミュニケーションを取れるコメント機能、興味を持ったチームとアプリ上で繋がり、詳細な情報を聞き、参加意思を伝えることができる繋がり機能など、チームと個人が繋がりを持つきっかけを提供する為のサービスを開発しています。
 
(現在、開発中のアプリケーションの為、実装が完了していない機能もございます。)
 
# 本番環境
 
https://sports-tweet-app.herokuapp.com/

Basic認証
 
・ID→tatsuya
 
・pass→1217

ログイン情報

ユーザー１（前川達也）
 
・メールアドレス→a@a
 
・パスワード→aaa111


ユーザー２（前川哲也）
 
・メールアドレス→b@b
 
・パスワード→bbb111
 
# 制作背景（意図）

①知名度が低いスポーツチームの知名度を向上する為
 
私が、地方の複数のスポーツチームに所属していて感じたのが、知名度の低さによるメンバー不足が深刻な問題だということです。実際に私自身が所属していたチームにも、知名度が低い事が原因でメンバーを十分に確保できず、試合に出場することができないという問題を抱えているチームが存在しました。このような問題を解決する為には、まずはチーム側が主体的に活動の内容などを発信する事が必要だと考えました。そこで気軽に情報発信できるツイート機能を実装し、知名度の問題を解決しようと考えました。
 
②個人とチームのミスマッチを無くす為
 
私がチーム選択の際に、課題だと感じた事の一つに、個人とチームの目標のミスマッチがあります。具体的には、個人が実力を向上する為にチームに所属しようとしていても、チーム側が楽しむことを目標に活動をしている場合、個人の目標の達成を目指すことは難しいです。このような事から、それぞれの目的を知った上でチームの一員になる事が大切です。そこで各チームが主体的に、そして簡単に、情報発信をできるアプリを作成することで、雰囲気などを知る事ができ、自分の目標に適したチーム選択ができると考えました。
 
## トップページ
 
![トップページ](https://i.gyazo.com/eb7c5eb731b338d2e3d3d02f6619118d.gif)
 
トップページは、初めてこのアプリを知る方が訪問するページです。その為、アプリの概要や機能などの詳細を記載しました。
 
新規ユーザーに、アプリに興味を持ってもらうために、アニメーションを多めに実装しました。
アニメーションでは、jsを利用し、現場で求められる技術力の向上を目指しました。
 
また白、黒、薄紫の3色に統一することによって、ユーザーが見やすいページを目指しました。
 
ユーザーが一番下の部分までスクロールした時に、トップに戻りやすいようにjsを使用し、「トップへ」ボタンを実装しました。
 
## ツイート記事一覧表示画面

![ツイート記事一覧画面](https://i.gyazo.com/8c0a2d562867aa81bb1e4e86d5411fac.gif)
 
ツイート記事の一覧を見た時に、スポーツのジャンルを一眼で区別できるようにジャンル分けをしました。
(これによって自分が知りたいスポーツの、ツイートを見つけやすくなると考えた為。)
 
検索機能はJSの条件分岐を用いて、使用する時のみ表示されるようにしました。
(検索機能が常時、表示されている状態ですと、画面上にボタンなどが多くなってしまい、ユーザーが見にくい考えた為。)
 
## 繋がり機能

![繋がり機能画面](https://i.gyazo.com/e5ac2adc372df8ad100a96c489360137.gif)
 
個人が気になるチームの投稿を、確認しやすいように実装しました。
 
自分から繋がる事によって、相手からも繋がってもらう事ができ、個人とチームの繋がりの場を提供します。
(フォローとフォローバックのような関係性を示しています。)
 
# 工夫したポイント
 
①自分自身が過去に体験した事を元に、ニーズを考える事で、エンジニアに必要なユーザー目線で物事を見る力を身につけようと努力したこと。
 
②自分の意見だけでなく、周囲のチームに所属している方々にも話を聞き、設計を行ったこと。
(自分の意見を重視してしまうと、意見が偏ってしまうと考えた為。)
 
③今までに実装の経験が浅い、JSの技術を取り入れ、積極的に技術力の向上を目指したこと。
 
④プッシュする際に、その内容に誤りがないかをよく確認することによって、修正に時間をかけず効率的に開発できるように心掛けたこと。
 
# 課題や今後実装したい機能
 
①個人とチームが繋がりを持つ事ができる、繋がり機能。
 
②個人とチームが簡単にコミュニケーションを取る事ができるチャット機能。
(コロナ禍ですので話し合いはアプリ上で行えた方が、便利だと考えた為。)
 
# 使用技術（開発環境）

# バックエンド

Ruby,Ruby on Rails

# フロントエンド

HTML5/CSS3,javascript,Ajax

# データベース

MySQL

# インフラ

Heroku

# Webサーバ（本番環境）

Heroku

# アプリケーションサーバ（本番環境）

Heroku

# ソース管理

GitHub,GitHubDesktop

# テスト

Rspec

# エディタ

VSCode
 

## user

| Column         | Type   | Options  |
| -------------- | ------ | -------- |
| email          | string | NOT NULL |
| password       | string | NOT NULL |
| name           | string | NOT NULL |
| favorite_sport | text   | NOT NULL |

 - has_many :tweets
 - has_many :comments
 - has_many :room_users
 - has_many :rooms, through: :room_users
 - has_many :messages

 ## tweets

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | NOT NULL                       |
| catch_copy  | string     | NOT NULL                       |
| article     | text       | NOT NULL                       |
| category_id | integer    | NOT NULL                       |
| user        | references | null: false, foreign_key: true |

- belongs_to :user
- has_many :comments


## comments

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | NOT NULL                       |
| user      | references | null: false, foreign_key: true |
| tweet     | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :tweet


## rooms

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages


## room_users

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

- belongs_to :room
- belongs_to :user


## messages

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

- belongs_to :room
- belongs_to :user