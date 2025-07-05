Quitanda Web

Sistema acadêmico de gestão de pedidos, com controle de clientes, produtos e estoque.  
Implementado em SQL para MySQL, com histórico de commits no Git.

Estrutura

- `esquema.sql` – criação das tabelas.
- `manipulacao.sql` – comandos de inserção, atualização, remoção e consultas.
- `.gitignore` – arquivos ignorados.

Instruções de uso

```sql
CREATE DATABASE quitanda;
USE quitanda;
SOURCE esquema.sql;
SOURCE manipulacao.sql;
```
