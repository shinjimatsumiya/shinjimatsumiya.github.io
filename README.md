# 個人サイト（Quarto + GitHub Pages）

## ファイル
- `index.qmd` — 英語のトップページ（自己紹介・研究テーマ・プロジェクト・経歴）
- `publications.qmd` — 業績一覧
- `ja.qmd` — 日本語の短い紹介
- `cv/cv.qmd` — CV（Typstで `Matsumiya_CV.pdf` を生成）
- `styles.scss` — 色・フォント
- `.github/workflows/publish.yml` — push すると自動でCVとサイトを生成・公開

## 最初にやること
1. `TODO` を全部埋める（`grep -rn TODO .` で一覧）。業績・年・学位は実際の内容に。
2. 写真を `files/profile.jpg` に置く（不要なら index.qmd の `image:` 行を削除）。
3. 手元で確認：`quarto preview`（CVは `quarto render cv/cv.qmd`）。

## 公開
1. GitHubで新しいリポジトリ（例：`matsumiya.github.io` か任意名）を作り、このフォルダを push。
2. 初回だけ手元で `quarto publish gh-pages` を実行して `gh-pages` ブランチを作る。
3. リポジトリの Settings → Pages で Source を `gh-pages` ブランチに。
4. 以後は main に push するだけで自動更新。
5. 独自ドメインを使う場合は Settings → Pages の Custom domain に入力し、`_quarto.yml` の `site-url` も変更。

## 更新のタイミング
- 論文の採択・刊行時：`publications.qmd` と `cv/cv.qmd` を更新
- 学期ごと：Current projects と フッターの Last updated を見直す
