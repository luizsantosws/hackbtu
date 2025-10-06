#!/usr/bin/env bash
set -euo pipefail

# install.sh — instala dependências mínimas para este projeto (macOS / Linux)
# O script faz:
#  - checa se node/npm estão disponíveis
#  - instala dependências em ./meteomatics-proxy (se existir)
#  - cria ./meteomatics-proxy/.env a partir de .env.example (se não existir)
#  - opcionalmente instala pm2 global e inicia o proxy

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Project root: $ROOT_DIR"

# Verifica Node
if ! command -v node >/dev/null 2>&1; then
  echo "\nNode.js não encontrado. Instale Node.js (recomendado via nvm ou Homebrew). Veja https://nodejs.org/"
  exit 1
fi

# Verifica npm
if ! command -v npm >/dev/null 2>&1; then
  echo "\nnpm não encontrado. Instale o Node.js que inclui o npm."
  exit 1
fi

# Instala dependências do proxy (se existir)
if [ -d "$ROOT_DIR/meteomatics-proxy" ]; then
  echo "\nInstalando dependências do meteomatics-proxy..."
  cd "$ROOT_DIR/meteomatics-proxy"
  npm install

  # Cria .env a partir de .env.example se não existir
  if [ ! -f .env ] && [ -f .env.example ]; then
    cp .env.example .env
    echo "\nArquivo .env criado a partir de .env.example. Edite '$ROOT_DIR/meteomatics-proxy/.env' e preencha METEOMATICS_USER e METEOMATICS_PASS"
  else
    echo "\nArquivo .env já existe ou .env.example ausente. Verifique '$ROOT_DIR/meteomatics-proxy'"
  fi
else
  echo "\nPasta 'meteomatics-proxy' não encontrada — pulando instalação do proxy."
fi

# Pergunta ao usuário se deseja instalar pm2 e iniciar o proxy
read -r -p "\nDeseja instalar pm2 globalmente e iniciar o proxy em background? (recomendado para produção/local) [y/N]: " REPLY
if [[ "$REPLY" =~ ^[Yy]$ ]]; then
  echo "Instalando pm2 globalmente..."
  npm install -g pm2
  if [ -d "$ROOT_DIR/meteomatics-proxy" ]; then
    cd "$ROOT_DIR/meteomatics-proxy"
    echo "Iniciando server.js com pm2..."
    pm2 start server.js --name meteomatics-proxy --interpreter node || pm2 restart meteomatics-proxy || true
    pm2 save
    echo "Proxy iniciado via pm2 (nome: meteomatics-proxy). Use 'pm2 status' para verificar." 
  else
    echo "meteomatics-proxy não disponível para iniciar."
  fi
fi

echo "\nPronto. Para rodar manualmente o proxy (sem pm2):"
echo "  cd $ROOT_DIR/meteomatics-proxy"
echo "  npm start"

echo "\nPara servir a aplicação web (index.html) localmente, rode a partir da raiz do projeto:"
echo "  python3 -m http.server 8000"

echo "\nFim."
