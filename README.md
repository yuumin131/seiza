# 誕生日を入力すると星座がわかるコマンド
[![test](https://github.com/yuumin131/seiza/actions/workflows/test.yml/badge.svg)](https://github.com/yuumin131/seiza/actions/workflows/test.yml)
## 概要
- このリポジトリは、自分の星座がわかるコマンドです。
- 自分の誕生日を入力するとその数字に応じて星座が出力されます。

## 必要なソフトウェア
- Python
  - テスト済みバージョン：3.7~3.10

## クローン方法
ターミナルで以下のコマンドを入力し、クローンしてください
```bash
git clone https://github.com/yuumin131/seiza.git
```

## 実行方法
コマンドを入力してディレクトリを移動してください
```bash
cd seiza
```
その次にコマンドと誕生日の数字を入力してください

- 実行例
  - 例1

  ```bash
  ./seiza 101
  ```
  - 例2
  ```bash
  ./seiza 1001
  ```
- 実行結果
  - 例1
  ```
    山羊座です
  ```
  - 例2
  ```
  天秤座です
  ```
    - 誕生日以外を入力した場合
    ```bash
    ./seiza 10111
    ```
    - 結果
    ```
    そんな誕生日はない
    ```




