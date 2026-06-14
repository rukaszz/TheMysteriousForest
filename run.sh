#!/usr/bin/env bash
set -o errexit  # set -e コマンド非ゼロ終了で即スクリプト終了
set -o nounset  # set -u 未定義変数への参照はエラー
set -o pipefail # パイプ内のどれかが失敗したら全体を失敗扱い

# スクリプト自身のあるディレクトリへ移動(exit 1はcd失敗用の保険)
cd "$(dirname "$0")" || exit 1

# 変数設定
GAMENAME="TheMysteriousForest"
EXE="./bin/${GAMENAME}"
LOGDIR="./log"
LOGFILE="./log/run.log"

# ログディレクトリ準備
mkdir -p "$LOGDIR"
chmod 755 "$LOGDIR" || { echo "Error: failed to set permissions on $LOGDIR" >&2; exit 4; }

# ファイルの存在チェック
if [[ ! -f "$EXE" ]]; then
  # 実行ファイルがなければ標準エラーで終了
  echo "Error: executable not found: $EXE" >&2
  exit 2
fi

# 実行権限確認
if [[ ! -x "$EXE" ]]; then
  chmod +x "$EXE" || { echo "chmod failed" >&2; exit 3; }
fi

# ログを残して実行(標準出力/エラーはrun.logへ残す)
exec > >(tee -a "$LOGFILE") 2>&1
echo "Starting ${GAMENAME} at $(date)"

# ゲーム実行
exec "$EXE" "$@"
