# AI カレンダー・TODO 管理アプリ

AI エージェントを活用したスマートなカレンダー・TODO 管理アプリケーションです。自然言語での対話を通じて、効率的なスケジュール管理を実現します。

## 概要

このアプリは、AI エージェントとのチャット機能を中心とした革新的なカレンダー・TODO 管理システムです。ユーザーは自然な会話でタスクやイベントを管理でき、外部カレンダーサービスとの連携により統合的なスケジュール管理体験を提供します。

## 主な機能

### 🤖 AI エージェントチャット

-   自然言語でのタスク・イベント作成
-   スマートな提案とレコメンデーション
-   既存スケジュールに関する質問応答

### 📋 タスク管理

-   優先度別タスク管理
-   期限設定とリマインダー
-   完了状況の追跡
-   カテゴリ別整理

### 📅 カレンダー機能

-   月別・週別・日別ビュー
-   ドラッグ&ドロップでのイベント移動
-   繰り返しイベントの設定
-   視覚的なスケジュール管理

### 🔗 外部カレンダー連携

-   Google Calendar 同期
-   Apple Calendar 連携（iOS）
-   リアルタイム双方向同期

### 📱 オフライン対応

-   ローカルデータキャッシュ
-   オフライン時の基本機能利用
-   自動同期機能

## 技術スタック

### フロントエンド

-   **Flutter** - クロスプラットフォーム開発
-   **Dart** - プログラミング言語
-   **Provider/Riverpod** - 状態管理

### バックエンド

-   **Firebase Firestore** - NoSQL データベース
-   **Firebase Auth** - 認証システム
-   **Firebase Cloud Functions** - サーバーレス関数

### AI 統合

-   **OpenAI API** - 自然言語処理
-   **Google AI** - 代替 AI サービス

### アーキテクチャ

-   **Clean Architecture** - レイヤー分離設計
-   **MVVM Pattern** - プレゼンテーション層設計
-   **TDD** - テスト駆動開発
-   **SOLID 原則** - オブジェクト指向設計

## プロジェクト構造

```
lib/
├── core/                   # 共通コンポーネント
│   ├── constants/          # 定数定義
│   ├── errors/             # カスタム例外
│   ├── network/            # ネットワークユーティリティ
│   └── utils/              # 共通ユーティリティ
├── data/                   # データレイヤー
│   ├── datasources/        # データソース実装
│   │   ├── local/          # ローカルデータベース
│   │   └── remote/         # リモートAPI
│   ├── models/             # データ転送オブジェクト
│   └── repositories/       # リポジトリ実装
├── domain/                 # ビジネスロジックレイヤー
│   ├── entities/           # ビジネスエンティティ
│   ├── repositories/       # リポジトリインターフェース
│   └── usecases/           # ユースケース実装
├── presentation/           # UIレイヤー
│   ├── pages/              # 画面コンポーネント
│   ├── widgets/            # 再利用可能ウィジェット
│   └── viewmodels/         # ViewModel（状態管理）
└── main.dart               # アプリエントリーポイント
```

## セットアップ

### 前提条件

-   Flutter SDK (3.0.0 以上)
-   Dart SDK (2.17.0 以上)
-   Firebase プロジェクト
-   OpenAI API キー

### インストール手順

1. **リポジトリのクローン**

    ```bash
    git clone https://github.com/your-username/ai_calendar_todo_app.git
    cd ai_calendar_todo_app
    ```

2. **依存関係のインストール**

    ```bash
    flutter pub get
    ```

3. **Firebase 設定**

    ```bash
    # Firebase CLIのインストール
    npm install -g firebase-tools

    # Firebaseプロジェクトの初期化
    firebase login
    flutterfire configure
    ```

4. **環境変数の設定**

    ```bash
    # .envファイルを作成
    cp .env.example .env

    # 必要なAPIキーを設定
    OPENAI_API_KEY=your_openai_api_key
    ```

5. **アプリの実行**
    ```bash
    flutter run
    ```

## 開発

### テスト実行

```bash
# 単体テスト
flutter test

# ウィジェットテスト
flutter test test/widget/

# 統合テスト
flutter test integration_test/
```

### コード生成

```bash
# モックオブジェクト生成
flutter packages pub run build_runner build

# Hiveアダプター生成
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### ビルド

```bash
# Android APK
flutter build apk --release

# iOS IPA
flutter build ios --release

# Web
flutter build web --release
```

## 貢献

1. このリポジトリをフォーク
2. 機能ブランチを作成 (`git checkout -b feature/amazing-feature`)
3. 変更をコミット (`git commit -m 'Add some amazing feature'`)
4. ブランチにプッシュ (`git push origin feature/amazing-feature`)
5. プルリクエストを作成

## ライセンス

このプロジェクトは MIT ライセンスの下で公開されています。詳細は[LICENSE](LICENSE)ファイルを参照してください。

## 作者

-   **開発者名** - [GitHub](https://github.com/your-username)

## 謝辞

-   Flutter チーム
-   Firebase チーム
-   OpenAI チーム
-   オープンソースコミュニティの皆様

---

**注意**: このアプリは開発中です。本番環境での使用前に十分なテストを行ってください。
