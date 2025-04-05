NOME_ENTREGA=$1

if [ -z "$NOME_ENTREGA" ]; then
  echo "Uso: aczginit <nome_entrega>"
  exit 1
fi

git status
git checkout -b feat-$NOME_ENTREGA
git branch -a