### 3.3.1 Processo 1 – Cadastrar Comunidade



![Exemplo de um Modelo BPMN do PROCESSO 1](../processos/imagens/cadastroComunidade.png)

#### Detalhamento das atividades

_O usuário inicia o processo selecionando a opção “Cadastrar Novo” e escolhe o tipo de registro desejado. Em seguida, ele preenche as informações da nova comunidade e dos dados do representante, concluindo o cadastro._


**Preecher Dados do Grupo**

| **Campo**       | **Tipo**         | **Restrições** | **Valor default** |
| ---             | ---              | ---            | ---               |
| Nome Comunidade | Caixa de Texto | Inserção obrigatória de caracteres obrigatórios |                   |
| Características Geográfica | Caixa de Texto | Inserção obrigatória de caracteres albabéticos |                |
| Estado | Caixa de Seleção  | Obrigatória a Escolha de um dos Campos  |           |
| CIdade | Caixa de Seleção  | Obrigatória a Escolha de um dos Campos |           |
| Tipo de Área | Caixa de Seleção  | Obrigatória a Escolha de um dos Campos  |           |
| Descrição | Caixa de Texto | Inserção obrigatória de caracteres albabéticos |                   |


| **Comandos**         |  **Destino**                   | **Tipo** |
| ---                  | ---                            | ---               |
| Cadastrar comunidade | Direcionamento para o cadastro do representante  | Default |
| Cancelar cadastro | Retorno para página inicial sem usuário logado/cadastrado| Cancel |



**Preencher Dados do Representante Pertencente ao Grupo**

| **Campo**       | **Tipo**         | **Restrições** | **Valor default** |
| ---             | ---              | ---            | ---               |
| Nome Completo | Caixa de Texto | Inserção obrigatória de no máximo 100 caracteres |                   |
| Telefone | Caixa de Texto | Inserção obrigatória de caracteres núméricos/Máximo 9 caracteres |                   |
| Papel Social | Caixa de Texto | Inserção obrigatória de no máximo 100 caracteres |                   |
| Email | Caixa de Texto | Obrigatória inserção de texto no formato email |                   |
| Descrição Vínculo | Caixa de Texto | Inserção obrigatória de no máximo 2000 caracteres |                   |
| Usuário | Caixa de Texto | Inserção obrigatória de no máximo 2000 caracteres; Mínimo 4 letras; Mínimo umm número ou caractere especial |                   |
| Senha | Caixa de Texto | Mínimo 8 caracteres; Mínimo 2 letras, 4 números e um caracter especial |                   |



| **Comandos**         |  **Destino**                   | **Tipo**          |
| ---                  | ---                            | ---               |
| Cadastrar Representante | Direcionamento para página inicial com usuário logado/cadastrado | Default |
| Cancelar Cadastro | Direcionamento para página inicial com usuário não logado/cadastrado | Cancel |



**Inserir novamente as informações**

| **Campo**       | **Tipo**         | **Restrições** | **Valor default** |
| ---             | ---              | ---            | ---               |



**Preencher Dados do Representante Pertencente á uma Organização Representativa**

| **Campo**       | **Tipo**         | **Restrições** | **Valor default** |
| ---             | ---              | ---            | ---               |
| Nome Organização | Caixa de Texto | Inserção obrigatória de no máximo 100 caracteres |                   |
| Telefone | Caixa de Texto | Inserção obrigatória de caracteres núméricos/Máximo 9 caracteres |                   |
| Email | Caixa de Texto | Obrigatória inserção de texto no formato email |                   |
| Estado | Caixa de Texto | Inserção obrigatória de no máximo 100 caracteres |                   |
| Cidade | Caixa de Texto | Inserção obrigatória de no máximo 100 caracteres |                   |
| Logradouro | Caixa de Texto | Inserção obrigatória de no máximo 255 caracteres |                   |
| Bairro | Caixa de Texto | Inserção obrigatória de no máximo 100 caracteres |                   |
| CEP | Caixa de Texto | Inserção obrigatória de 8 dígitos |                   |
| Complemento | Caixa de Texto | Inserção obrigatória de no máximo 100 caracteres |                   |
| CNPJ | Caixa de Texto | Inserção obrigatória de 14 dígitos |                   |
| Usuário | Caixa de Texto | Inserção obrigatória de no máximo 2000 caracteres; Mínimo 4 letras; Mínimo umm número ou caractere especial |                   |
| Senha | Caixa de Texto | Mínimo 8 caracteres; Mínimo 2 letras, 4 números e um caracter especial |                   |



| **Comandos**         |  **Destino**                   | **Tipo**          |
| ---                  | ---                            | ---               |
| Cadastrar Representante | Direcionamento para página inicial com usuário logado/cadastrado | Default |
| Cancelar Cadastro | Direcionamento para página inicial com usuário não logado/cadastrado | Cancel |



**Inserir novamente as informações**

| **Campo**       | **Tipo**         | **Restrições** | **Valor default** |
| ---             | ---              | ---            | ---               |
