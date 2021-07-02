# [MyMedium](https://whispering-citadel-92558.herokuapp.com/)
<!-- ###### tags: `github`  -->
<font size="4">**アプリケーション概要：**</font>

```markdown
余計なものを省いて、使いやすくしたブログです。

有名なブログ「medium」を参考して、写真付きの記事を投稿できる、
お気に入りる記事の下にコメントやいいね！付くことができます。

就職活動用のポートフォリオとして制作致しました。
```

<font size="4">**作成した目的：**</font>
```markdown
透過Ruby on Rsils來建立部落格過程中、初步了解..........................。

在使用現有的CSS/HTML框架還有gem與來製作頁面設計、。

* 頁面設計
* 會員系統建置
* 架設／編輯／分享文章、留言
* 設定首頁

```
---

<font size="4">**URL：**</font><font size="4">**https://whispering-citadel-92558.herokuapp.com/**</font>


![](https://i.imgur.com/3Ovd1lX.png)

---

## テスト用アカウント　＆　関連リンク

| テスト用     | アカウント          |
| ------------ | ------------------- |
| メール       | sample@gmail.com    |
| パスワード   | 11111111            |

| **テスト用** | **カード**          |
| ------------ | ------------------- |
| カード番号   | 4111 1111 1111 1111 |
| 有効期限     | 02 / 25             |

| タイトル　　　　　　　　　　　　| リンク　　　　　　　　　　　|
| --------------------------|:------------------------ |
| 私のブログ（中国語）　　　　　　|　[:link:][blog]　　　　　　|
| 受講したオンライン講座（中国語）|　[:link:][オンライン講座]　　|

[blog]: http://translate.google.com/translate?hl=en&sl=zh-CN&tl=ja&u=https%3A%2F%2Fhackmd.io%2F%407beedhBrQk2FjyAtSY5wxQ&sandbox=1
[オンライン講座]: http://translate.google.com/translate?hl=en&sl=zh-CN&tl=ja&u=https%3A%2F%2Fcampus.5xruby.tw%2Fp%2Fcoding

---

## 使用技術
* Ruby 2.6.7
* ruby on rails 6.1.3
* ubuntu 20.04
* postgreSQL 13.2
* Heroku
* GitHub
* Sourcetree
* Stimulus
* bulma
* AWS
    * S3
    * IAM 

---
## 機能一覧、使用したgemなど
* ユーザー登録機能、ログイン機能（[devise](https://hackmd.io/nYCmlVBYTgGy4vYKYyr-Gw)）
    * アカウント管理機能（devise）
        * パスワードの変更、ユーザー名を設定する、プロフィール画像をアップロード（[Active Storage](https://hackmd.io/@7beedhBrQk2FjyAtSY5wxQ/SyHnoXCwd)）
    * 記事一覧機能
        * 記事を再編集．公開をキャンセル（[AASM](https://github.com/aasm/aasm)）、記事を削除（[paranoia](https://github.com/rubysherpas/paranoia)）
        * ページネーション機能（[Kaminari](https://qiita.com/residenti/items/1ae1e5ceb59c0729c0b9)）
    * 会員登録機能（**決済するのみです**）（[braintree-sandbox](https://developers.braintreepayments.com/start/overview)）
* 記事を投稿する機能（AASM）
    * 記事画像をアップロード（Active Storage）
* 記事にコメントを付ける機能（Ajax）
    * いいね機能（Ajax）
        * 人気記事ランキング機能（ホームページ）
  
        