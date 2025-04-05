PROJETO_PATH=$1
PERIODICIDADE=$2
LOG_PATH=~/shelltools/logs/pipeline.log
DEFAULT_CRON="0 * * * *"

if [ -z "$PROJETO_PATH" ]; then
  echo "Uso: aczgpipe <caminho_projeto> [periodicidade]"
  exit 1
fi

# Agendamento do pipeline
CRON_TIME=${PERIODICIDADE:-$DEFAULT_CRON}
(crontab -l 2>/dev/null; echo "$CRON_TIME cd $PROJETO_PATH && javac Main.java && java Main >> $LOG_PATH 2>&1 && notify-send 'Pipeline ACZG: Projeto executado com sucesso'") | crontab -

echo "[$(date)] Cron configurado para projeto em $PROJETO_PATH" >> $LOG_PATH