REPO_PATH=$1
LOG_PATH=~/aczg-shell-tools/logs/pipeline.log

if [ -z "$REPO_PATH" ]; then
  echo "Uso: auto_commit.sh <caminho_repositorio>"
  exit 1
fi

(crontab -l 2>/dev/null; echo "0 18 * * * cd $REPO_PATH && git add . && git commit -m 'Commit automático diário' && git push >> $LOG_PATH 2>&1") | crontab -
echo "[$(date)] Commit automático configurado para $REPO_PATH" >> $LOG_PATH