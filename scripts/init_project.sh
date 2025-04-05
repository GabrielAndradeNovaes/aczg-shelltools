CAMINHO=$1
NOME_PROJETO=$2

if [ -z "$CAMINHO" ] || [ -z "$NOME_PROJETO" ]; then
  echo "Uso: aczgstart <caminho> <nome_projeto>"
  exit 1
fi

mkdir -p "$CAMINHO/$NOME_PROJETO"
cd "$CAMINHO/$NOME_PROJETO"
echo "projeto $NOME_PROJETO inicializado...." > README.md
git init > /dev/null
git add README.md
git commit -m "first commit - repositório configurado"