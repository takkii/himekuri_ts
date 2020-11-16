### 日めくりの TypeScript 版

#### 環境

```markdown
nvm (version manager)
node_version: v14.15.0
typescript: 4.0.5

rbenv (version manager)
ruby 2.7.2

動作確認
MacOS Big sur
Ubuntu 20.04.1 LTS
```

デフォルトの出力

> 時刻を表示 : 2020年11月15日 : 10時28分28秒 : 日曜日

#### 実行 [1.0.2]

```markdown
git clone git@github.com:takkii/himekuri_ts.git

cd himekuri_ts

gem install himekuri_ts

himekuri_ts
```

#### 実行 [1.0.2.1 ~ RubyGems regist_version]

```markdown
gem install himekuri_ts

himekuri_ts
```

#### 実行 [1.0.3 ~ GitHub gem version]

```markdown
git clone git@github.com:takkii/himekuri_ts.git

cd himekuri_ts

gem build himekuri_ts.gemspec

gem install himekuri_ts-1.0.3.gem
```

※ Rubyでシェル化しました。

#### 過去の出力 (1.0.2)

```markdown
時刻を表示 : 2020年11月14日 : 14時55分35秒 : 日曜日
来年の1月1日まであと : 46日です
令和2年11月15日 : R02.11.15
日めくり数え番号 : 1.0.2
```

#### RubyGems (1.0.2.2)

```markdown
時刻を表示 : 2020年11月15日 : 18時35分32秒 : 日曜日
来年の1月1日まであと : 46日です
令和2年11月15日 : R02.11.15
日めくり数え番号 : 1.0.2.2
```

#### GitHub HEAD (1.0.3)

```markdown
時刻を表示 : 2020年11月16日 : 15時58分7秒 : 月曜日
来年の1月1日まであと : 45日です
令和2年11月16日 : R02.11.16
日めくり数え番号 : 1.0.3
```

※ MITライセンスです。
