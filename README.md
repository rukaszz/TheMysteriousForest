# The Mysterious Forest

## 概要(Abstract)

The Mysterious Forest は C++/SDL2 で制作した，2D横スクロールアクションゲームです．
プレイヤーは森の中へ進みながら，敵や罠を突破して待ち構えるボスを倒して全ステージクリアを目指します．

The Mysterious Forest is a 2D side-scrolling action game developed using C++ and SDL2.
Players must make their way through the forest, overcoming enemies and traps to defeat the boss that lies in wait, with the aim of clearing every stage.

## 内容(Content)

この配布パッケージには，Linux用の実行ファイルおよびゲーム実行に必要なアセット一式を格納しています．

This distribution package contains the executable file for Linux and all the assets required to run the game.

```text
.
├── ATTRIBUTION.md
├── LICENSE.md
├── README.md
├── assets
│   ├── font
│   ├── image
│   │   ├── BG
│   │   ├── Object
│   │   ├── Tiles
│   │   └── Character
│   ├── level
│   ├── music
│   ├── sound
│   └── stage
├── bin
│   ├── gtest_result.txt
│   └── TheMysteriousForest
├── docs
│   └── play_test_report.md
├── log
└── run.sh
```

## 環境(Environment)

### 動作確認環境(Run Verified Environment)

- OS: Ubuntu 24.04 LTS
- Compiler: g++
- Libraries:
  - SDL2
  - SDL2_image
  - SDL2_ttf
  - SDL2_mixer

### 必要なライブラリ(Required Libraries)

上記の動作確認環境のセクションを参考にしつつ，下記のパッケージのインストールを実施してください．利用するディストリビューションによって使用するパッケージ管理コマンドが異なります．

Please refer to the “Supported Environments” section above and install the packages listed below. The package management command you use will vary depending on your distribution.

```bash
sudo apt update
sudo apt install libsdl2-2.0-0 libsdl2-image-2.0-0 libsdl2-ttf-2.0-0 libsdl2-mixer-2.0-0
```

### 起動方法(How To Run)

配布ディレクトリ内で次のシェルスクリプトを実行するか，あるいは直接実行ファイルを呼び出してください．

Please run the following shell script within the distribution directory, or run the executable file directly in directory.

```bash
./run.sh
# or
./bin/TheMysteriousForest
```

場合によっては実行権限を付与する必要があるので，chmodコマンド等を使用してください．

In some cases, you may need to grant execution permissions, then please use the chmod command or similar.

```bash
chmod +x run.sh ./bin/TheMysteriousForest 
```

## ゲームについて(About The Game)

## 操作方法(How To Operate)

操作方法は次のとおりです．

| 操作(Action) | キー(Key) |
| :---: | :---: |
| 移動(Move) | 矢印キー(Arrows) |
| ジャンプ(Jump) | Space |
| ダッシュ(Dash) | Shift |
| ファイアボール(Fireball) | B |
| ポーズ(Pause) | Esc |
| ポーズ中にタイトルへ戻る(Return to Title while on Pause) | Backspace |
| タイトル画面でゲーム終了(Exit the game from Title) | Esc |

### どんな要素があるか(The Elements In Game)

次のような内容を実装しております:

The following features have been implemented:

- プレイヤー移動/ジャンプ(Player movement/jumping)
- コヨーテタイム/ジャンプバッファ(Coyote Time/jump buffer)
- Small/Super/Fireの形態変化(Form changes: Small/Super/Fire)
- 形態ごとのスプライト/当たり判定変更(Sprite and collision changes for each form)
- アイテム取得(Item collection)
- 敵AI(Enemy AI)
- ボス戦(Boss Battle)
- SE/BGM
- 背景レイヤ/視差効果(パララックス)(Background layers/parallax effects)
- 画面シェイク(Screen shake)
- パーティクル(Particle)
- 死亡演出(Death Animation)
- ポーズ(Pause)
- GameOver/Clear/Resultシーン(ゲームのシーン管理)(Game Over/Clear/Result scenes (game scene management))

### テスト(Test)

GoogleTestによる単体テストを実施し，71のテストがPASSすることを確認しています．
また，手動通しプレイによりTitleからResultまで，つまりゲームの開始から最後のシーンまで到達できることを確認しています．

I have performed unit tests using GoogleTest and confirmed that all 71 tests passed.
I have also verified through manual playtesting that the game can be played from the title to the result scene—that is, from the start of the game to the final scene.

## 既知の制約(Known constraints)

- Linux/Ubuntu 24.04 LTS環境で動作確認をしています(Compatibility has been verified on Linux/Ubuntu 24.04 LTS)
- Windows/macOS版の対応は未定です(Support for Windows and macOS versions is currently undecided)
- 本作品はあくまでゲーム制作に重きを置いたデモ版です(This is a demo version designed primarily for game development)
- 配布パッケージに含まれる各種の素材はそれぞれが持つライセンスに従います．同梱しているATTRIBUTION.mdを参照してください(The various assets included in the distribution package are subject to their respective licenses. Please refer to the included ATTRIBUTION.md file)

## クレジット(Credit)

- ゲーム作者(Game developer): rukaszz
- 各種アセット: SE/BGM/画像/ライブラリの出典・ライセンスはATTRIBUTION.mdに記載しています(Sources and licenses for various assets (sound effects, background music, images, and libraries) are listed in ATTRIBUTION.md)
