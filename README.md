最終更新　202011/21 いいね機能の実装

# Berries

普段食べている食品の栄養素を管理することができるアプリです。<br>
任意で食品と数値を入力できるのでオリジナル性の高さが特徴となります。<br>

**製作背景**<br>

私の父親が糖尿病のため、自分も今のうちから栄養管理をしっかりしなければ行けないと感じたことがきっかけでした。<br>
様々な栄養管理アプリは世の中にたくさんありますが、よりその人に合ったカスタマイズできるようなシステムにしようと心がけました。

**意識したところ**<br>

**READMEが無くても直感的に操作できるUI**にすることを強く意識しながら作成しました。<br>
様々なサービス、アプリがある中で、「理解するのに時間がかかる」「説明書を読まないと使えない」等のアプリは早々に離脱されてしまうと思い、apple製品のように説明書がなくても使えるようにデザインしました。

<br>
【トップページ】<br>

![f78065fe19b626ddaf89c8c56dd23176](https://user-images.githubusercontent.com/70525516/98930946-b45b5e00-2520-11eb-9bfe-a8a4dc4970e3.jpg)

<br>
【食品登録画面】ここから好きな食材の栄養素を登録することができます<br>

![21c7539dc78c575b24c346d177aa7455](https://user-images.githubusercontent.com/70525516/98890610-b94bed80-24df-11eb-8fbc-eb4339ab2b15.png)

<br>

【お気に入り食材登録機能】よく食べる食材などあればお気に入り登録することでマイページにて一覧を表示することが出来ます<br>

![6ee1b594281748a989c0793d368b51ab](https://user-images.githubusercontent.com/70525516/99025365-faa9cf00-25ab-11eb-8704-25aa028d24af.png)

<br>

# URL

http://54.248.141.122/ <br>

**テストユーザー**<br>
簡単ログインをご利用下さい

# 使用技術

**使用言語**<br>
Ruby on Rails<br>
&ensp;devise<br>
&ensp;Rspec<br>
&ensp;Rubocop<br>

JavaScript<br>
HTML/CSS<br>
JQuery<br>

**デプロイ方法**<br>
EC2<br>
Capistrano<br>

**開発環境**<br>

![6d7c0d80f6d11a34cd3e42d72e44eaf3](https://user-images.githubusercontent.com/70525516/99160742-767f5500-272d-11eb-93ec-9636fc0dc3fc.png)

Docker<br>
Vsual Studio code<br>
GitHub<br>
AWS<br>
&ensp;セキュリティ対策<br>
&ensp;&ensp;・Authyを用いた２段階認証<br>
&ensp;&ensp;・IAMユーザー<br>
&ensp;&ensp;・git-secretsの利用（全てのリポジトリで適用）<br>

- 作成者 細田翔太郎<br>
- E-mail shotaro.hosoda.1921@gmail.com<br>
