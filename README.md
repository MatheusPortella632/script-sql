### Desafio de Banco de Dados SQL 🚀

Este repositório contém um script SQL básico para criação de tabelas, estabelecimento de relacionamentos por chaves estrangeiras (Foreign Keys) e inserção de dados fictícios para simulação de um sistema de publicações científicas e artigos. 

O projeto foi configurado e validado utilizando a extensão de ambiente **SQLite** no Visual Studio Code. 

### 📊 Estrutura do Banco de Dados

O banco simula o relacionamento entre as seguintes entidades: 

* **Publicacao**: Armazena os dados das revistas/editoras através do issn.
* **Artigos**: Contém as informações dos artigos publicados, vinculados a uma publicação.
* **PalavraChave**: Cadastro de termos e palavras-chave.
* **Artigos_PalavraChave**: Tabela associativa (N para N) para ligar artigos às suas palavras-chave.
* **Area**: Cadastro das áreas de conhecimento (ex: Inteligência Artificial, Computação).
* **Artigos_Area**: Tabela associativa (N para N) para ligar artigos às suas respectivas áreas.

### 🛠️ Tecnologias Utilizadas

* **SQL (Structured Query Language)**
* **SQLite** (via plugins do VS Code)

💡 **Nota de Compatibilidade:** O script original utilizava o tipo de dado VARCHAR2 (específico do Oracle). Para garantir o funcionamento correto e leve no ecossistema SQLite do VS Code, os campos de texto foram padronizados para VARCHAR. 

### 🚀 Como Executar o Script

1. Instale a extensão do SQLite de sua preferência no **VS Code**.
2. Abra o arquivo Sql Desafio.sql.
3. (Opcional) Certifique-se de habilitar o suporte a chaves estrangeiras caso seu interpretador exija, executando: 

sql

PRAGMA foreign_keys = ON;

Use o código com cuidado.
4. Execute o script completo para criar a estrutura e popular as tabelas.
5. Utilize os comandos SELECT ao final do arquivo para validar a inserção dos dados.

### 🗺️ Esquema Relacional
<img src="https://github.com/user-attachments/assets/b920b2ad-a598-4da2-b139-512647a30320" alt="Esquema Relacional" width="851" height="333" />


### 🧠 Esquema Lógico

<img src="https://github.com/user-attachments/assets/4f921860-8683-4ce9-8da7-53f2b434f5b0" alt="Esquema Lógico" width="837" height="464" />
