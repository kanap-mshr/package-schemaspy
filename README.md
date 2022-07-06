
# schemaspy

---

## 前提

- 以下のjavaがインストールされているマシンで実行する

```bash
> java -version
java version "1.8.0_321"
Java(TM) SE Runtime Environment (build 1.8.0_321-b07)
Java HotSpot(TM) 64-Bit Server VM (build 25.321-b07, mixed mode)
```

---

## 動作確認Macスペック

- M1

  ```bash
  sysctl -a machdep.cpu
  # machdep.cpu.cores_per_package: 8
  # machdep.cpu.core_count: 8
  # machdep.cpu.logical_per_package: 8
  # machdep.cpu.thread_count: 8
  # machdep.cpu.brand_string: Apple M1
  ```

- OSバージョン

  ```bash
  > sw_vers
  # ProductName:	macOS
  # ProductVersion:	12.4
  # BuildVersion:	21F79
  ```

---

## DB接続情報

- schemaspy.properties をER図生成したい環境に向けて修正する

  ```bash
  vim ./schemaspy.properties
  ```

---

## コマンド

- ER図生成 (すでに `./output` が存在している場合は削除される)

  ```bash
  ./create.sh
  ```


