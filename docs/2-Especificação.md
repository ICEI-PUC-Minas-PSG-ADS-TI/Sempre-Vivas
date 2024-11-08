# Especificações do Projeto

<span style="color:red">Pré-requisitos: <a href="01-Documentação de Contexto.md"> Documentação de Contexto</a></span>

Definição do problema e ideia de solução a partir da perspectiva do usuário. É composta pela definição do  diagrama de personas, histórias de usuários, requisitos funcionais e não funcionais além das restrições do projeto.

Apresente uma visão geral do que será abordado nesta parte do documento, enumerando as técnicas e/ou ferramentas utilizadas para realizar a especificações do projeto

## Personas

Maria Fernanes, 50 anos, possui um amor profundo pelas flores e trabalha como florista há 20 anos. Busca por fornecedores confiáveis e com uma grande variedade de produtos para criar arranjos personalizados. Possui uma pequena floricultura de bairro e busca por flores de alta qualidade para atender seus clientes mais exigentes.

Pedro Santos 38 anos. É um produtor de flores orgânicas e busca por um canal de venda direto ao consumidor para valorizar seus produtos. Especializado em cultivo de rosas raras e busca por clientes que valorizam a sustentabilidade e a exclusividade.

João Almeida 45 anos. Acredita que as flores podem melhorar o ambiente de trabalho, aumentar a produtividade e transmitir uma imagem positiva da empresa. João trabalha em uma empresa que valoriza a sustentabilidade e busca por fornecedores de flores orgânicas e locais.


## Histórias de Usuários

|EU COMO             | Negócio                            |
|--------------------|------------------------------------|
|Maria Fernandes - Florista amadora      | Pequena floricultura de bairro em busca de fornecedores confiaveis|

|EU COMO             | Negócio                            |
|--------------------|------------------------------------|
|Pedro Santos - Produtor       | Especialista em cultivo em busca de novos clientes|

|EU COMO             | Negócio                            |
|--------------------|------------------------------------|
|João Almeida - Corporativo       | Trabalha em uma empresa e valoriza a sustentabilidade|

## Requisitos

As tabelas que se seguem apresentam os requisitos funcionais e não funcionais que detalham o escopo do projeto. Para determinar a prioridade de requisitos, aplicar uma técnica de priorização de requisitos e detalhar como a técnica foi aplicada.

### Requisitos Funcionais

|ID    | Descrição do Requisito  | Prioridade |
|------|-----------------------------------------|----|
|RF-001| Permitir que o usuário cadastre tarefas | ALTA | 
|RF-002| Emitir um relatório de tarefas no mês   | MÉDIA |

### Requisitos não Funcionais

|ID     | Descrição do Requisito  |Prioridade |
|-------|-------------------------|----|
|RNF-001| O sistema deve ser responsivo para rodar em um dispositivos móvel | MÉDIA | 
|RNF-002| Deve processar requisições do usuário em no máximo 3s |  BAIXA | 

Com base nas Histórias de Usuário, enumere os requisitos da sua solução. Classifique esses requisitos em dois grupos:

- [Requisitos Funcionais
 (RF)](https://pt.wikipedia.org/wiki/Requisito_funcional):
 correspondem a uma funcionalidade que deve estar presente na
  plataforma (ex: cadastro de usuário).
- [Requisitos Não Funcionais
  (RNF)](https://pt.wikipedia.org/wiki/Requisito_n%C3%A3o_funcional):
  correspondem a uma característica técnica, seja de usabilidade,
  desempenho, confiabilidade, segurança ou outro (ex: suporte a
  dispositivos iOS e Android).
Lembre-se que cada requisito deve corresponder à uma e somente uma
característica alvo da sua solução. Além disso, certifique-se de que
todos os aspectos capturados nas Histórias de Usuário foram cobertos.

## Restrições

O projeto está restrito pelos itens apresentados na tabela a seguir.

|ID| Restrição                                             |
|--|-------------------------------------------------------|
|01| O projeto deverá ser entregue até o final do semestre |
|02| Não pode ser desenvolvido um módulo de backend        |

Enumere as restrições à sua solução. Lembre-se de que as restrições geralmente limitam a solução candidata.

> **Links Úteis**:
> - [O que são Requisitos Funcionais e Requisitos Não Funcionais?](https://codificar.com.br/requisitos-funcionais-nao-funcionais/)
> - [O que são requisitos funcionais e requisitos não funcionais?](https://analisederequisitos.com.br/requisitos-funcionais-e-requisitos-nao-funcionais-o-que-sao/)
