LOG_PATH=~/shelltools/logs/pipeline.log

echo "== LOG DO PIPELINE =="
if [ -f "$LOG_PATH" ]; then
  grep "Pipeline" "$LOG_PATH"
else
  echo "Arquivo de log não encontrado em $LOG_PATH"
fi