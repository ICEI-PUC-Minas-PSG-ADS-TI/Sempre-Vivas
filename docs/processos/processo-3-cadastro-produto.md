### 3.3.3 Processo 3 – Cadastrar Produto



![Exemplo de um Modelo BPMN do PROCESSO 3](docs/processos/imagens/CadastrarProdutoS2.png)

#### Detalhamento das atividades

_O usuário, cadastrado como comunidade, consegue acessar a opção Cadastrar Produto com o objetivo de adicionar novos produtos a sua loja dentro do site, e com o preenchimento correto dos dados, permitindo sua venda._


**Preecher Dados do Grupo**

| **Campo**       | **Tipo**         | **Restrições** | **Valor default** |
| ---             | ---              | ---            | ---               |
| Nome Produto | Caixa de Texto | Inserção obrigatória de caracteres obrigatórios |                   |
| Descrição | Caixa de Texto | Inserção de caracteres |                |
| Valor | Caixa de Texto  | Inserção de numerais  |           |
| Imagens | Campo de inserção  | Obrigatória a Escolha de um dos Campos |           |
| Tipo de Área | Caixa de Seleção  | Inserção de imagens  |           |


| **Comandos**         |  **Destino**                   | **Tipo** |
| ---                  | ---                            | ---               |
| Cadastrar Produto | Inserir o produto na loja da comunidade  | Default |
| Cancelar | Retorno para página inicial | Cancel |

![Exemplo de tela para o Processo 3](docs/processos/imagens/CadastroProduto.jpeg)
