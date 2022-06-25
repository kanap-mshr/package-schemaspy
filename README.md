
# package-schemaspy

## このリポジトリは何か

### 概要

- schemaspy を汎用的にどんなプロジェクトでも使いやすいように整備を行ったもの

### schemaspy について

- schemaspy とは何か
  - 既存のDBからER図などのデータベースドキュメントの自動生成を行うツール
- schemaspy を使う利点
  - ドキュメントの手動メンテナンスが不要になるため
    - ドキュメントと実装が違う..！という状況を避けやすい
    - ドキュメント作成工数が大幅に削減できる
    - 常に最新のDBの状態を視覚的に確認できる
    - 想定したスキーマ設計に実際なっているかの確認になる
- schemaspy の懸念
  - 実装ファーストになりがち?

## 使い方

```bash
cd package-schemaspy/

# .env-sample を参考に、対象のDBに合わせて .env を修正
cp .env-sample .env
vi .env

# schemaspy.properties を、対象のDBに合わせて修正
vi ./schemaspy/schemaspy.properties

# データベースドキュメントを生成
./scripts/create-er.sh
```


