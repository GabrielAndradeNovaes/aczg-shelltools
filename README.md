# ACZG Shell Tools

Este repositório contém um conjunto de ferramentas automatizadas para facilitar o dia a dia no desenvolvimento de projetos do ACZG. Utilizando Shell Script, Alias e Cron Jobs, o projeto permite inicializar projetos, gerenciar branches, configurar pipelines de execução/testes, agendar commits automáticos e visualizar logs — tudo com instalação automática via script.

---

## 🧭 Tabela de Conteúdos

- [Pré-requisitos](#pré-requisitos)  
- [Instalação](#instalação)  
- [Comandos Disponíveis](#comandos-disponíveis)  
- [Scripts](#scripts)  
- [Logs](#logs)  
- [Estrutura de Pastas](#estrutura-de-pastas)  
- [Autor](#autor)  

---

## ✅ Pré-requisitos

- Sistema Operacional: **Linux**
- `git` instalado
- `cron` habilitado
- `notify-send` instalado (para alertas visuais)

---

## ⚙️ Instalação

Clone este repositório e execute o script de configuração:

```bash
git clone https://github.com/GabrielAndradeNovaes/aczg-shelltools.git
cd aczg-shell-tools
chmod +x scripts/configurarAmbiente.sh
./scripts/configurarAmbiente.sh
```

---

## 🚀 Comandos Disponíveis

- `aczgstart <caminho> <nome_projeto>`  
  Cria uma nova pasta com projeto Git inicializado

- `aczginit <nome_entrega>`  
  Cria uma nova branch no formato `feat-nome` e exibe o status do repositório

- `aczgfinish`  
  Faz merge da branch atual com a master e deleta a branch local e remota

- `aczglog`  
  Exibe os logs do pipeline de execução/CI

- `aczgpipe <caminho_projeto>`  
  Agenda um cron job para executar o projeto periodicamente e registrar logs

---

## 🧪 Scripts

- `init_project.sh`  
  Cria uma nova pasta com nome do projeto, gera um `README.md`, inicia o Git e faz o primeiro commit.

- `aczginit.sh`  
  Verifica o status do repositório e cria uma nova branch `feat-nomeEntrega`.

- `aczgfinish.sh`  
  Faz merge da branch atual com a master e remove branches locais e remotas.

- `run_pipeline.sh`  
  Agenda uma cron job que executa o projeto no caminho especificado e registra a saída em log.

- `auto_commit.sh`  
  Agenda uma cron job diária que executa `git add .`, `git commit` e `git push`.

- `show_logs.sh`  
  Exibe todos os logs do pipeline armazenados no arquivo de log.

- `configurarAmbiente.sh`  
  Copia os scripts para o diretório `~/shelltools/scripts`, configura permissões e adiciona aliases automaticamente ao `.bashrc`.

---

## 🪵 Logs

Os logs do sistema são armazenados em:

```bash
~/shelltools/logs/pipeline.log
```

---

## 📁 Estrutura de Pastas

```
shelltools/
├── scripts/
│   ├── init_project.sh
│   ├── aczginit.sh
│   ├── aczgfinish.sh
│   ├── run_pipeline.sh
│   ├── auto_commit.sh
│   ├── show_logs.sh
│   └── configurarAmbiente.sh
├── logs/
│   └── pipeline.log
└── README.md
```

---

## 👨‍💻 Autor

Gabriel Andrade — ZG-Hero Project
