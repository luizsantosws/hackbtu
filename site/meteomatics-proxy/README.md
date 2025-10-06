# Meteomatics Proxy (exemplo)

Proxy simples para encaminhar requisições à API Meteomatics a partir do navegador local, evitando problemas de CORS e expondo as credenciais apenas no servidor local.

1. Copie o arquivo de exemplo e preencha suas credenciais:

```bash
cd meteomatics-proxy
cp .env.example .env
# edite .env e coloque METEOMATICS_USER e METEOMATICS_PASS
```

2. Instale dependências e rode:

```bash
# usando npm
npm install express node-fetch dotenv cors
# ou, se preferir, yarn
# yarn add express node-fetch dotenv cors

npm start
```

3. Abra o `index.html` via um servidor local (ex.: `python3 -m http.server 8000`) e acesse `http://localhost:8000`.

O `index.html` detecta automaticamente `localhost` e passa a usar `http://localhost:3000/meteomatics` como base para chamadas Meteomatics.

Atenção: este proxy é um exemplo para desenvolvimento. Não exponha credenciais em produção — use um backend seguro e controles de acesso apropriados.
