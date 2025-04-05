INSTALL_DIR=~/shelltools/scripts
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_DIR=~/shelltools/logs
LOG_PATH="$LOG_DIR/pipeline.log"

# Criar diretório de logs
mkdir -p "$LOG_DIR"

# Copiar scripts para o diretório de instalação
cp "$SCRIPT_DIR"/*.sh "$INSTALL_DIR"
chmod +x "$INSTALL_DIR"/*.sh

# Evita duplicar aliases no .bashrc
if ! grep -q "aczgstart=" ~/.bashrc; then
cat <<EOL >> ~/.bashrc

# Alias ACZG
alias aczgstart='$INSTALL_DIR/init_project.sh'
alias aczginit='$INSTALL_DIR/aczginit.sh'
alias aczgfinish='$INSTALL_DIR/aczgfinish.sh'
alias aczglog='$INSTALL_DIR/show_logs.sh'
alias aczgpipe='$INSTALL_DIR/run_pipeline.sh'
alias aczgpipe='$INSTALL_DIR/run_pipeline.sh'
EOL
fi 

source ~/.bashrc

echo "Ambiente ACZG configurado com sucesso."
echo "Use o comando 'aczgstart <caminho> <nome>' para iniciar um novo projeto."