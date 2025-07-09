# Ecommerce Database Project

Este projeto consiste no desenvolvimento completo de um banco de dados relacional para um sistema de e-commerce, incluindo o modelo lógico, criação de tabelas, inserção de dados reais, e estruturação de relacionamentos complexos como fornecedores, vendedores terceiros e pagamentos.
 Estrutura do Projeto

---

O banco de dados simula o funcionamento de uma loja virtual completa, incluindo:

  - Cadastro de clientes

  - Catálogo de produtos

 - Registro de pedidos e itens por pedido

- Processamento de pagamentos

- Gerenciamento de entregas

- Controle de vendedores terceiros e seus fornecedores

---

🗃️ Modelo de Dados
Tabelas Criadas:

  -  client — Armazena dados dos clientes (CPF único).

 -   product — Contém os produtos ofertados, categorizados por tipo.

-    orders — Representa os pedidos realizados pelos clientes.

-   payments — Controla os pagamentos feitos por cada cliente.

-    product_order — Tabela de relacionamento entre produtos e pedidos.

-    thirdpartyseller — Representa vendedores parceiros que ofertam produtos na plataforma.

-    supplier — Armazena os fornecedores dos vendedores.

-    ThirdPartySeller_Supplier — Relacionamento entre vendedores terceiros e seus fornecedores.

-    delivery — Informa o status e rastreio das entregas.

---

🛠️ Tecnologias Utilizadas

 -   MySQL — Sistema de gerenciamento de banco de dados relacional.

 -   SQL — Linguagem para definição e manipulação dos dados.

 -   Workbench ou DBeaver — (sugestão para visualização e execução).


---

🔗 Relacionamentos Importantes

-    Um cliente pode fazer múltiplos pedidos.

-    Cada pedido pode ter múltiplos produtos.

-    Produtos podem ser vendidos por vendedores terceiros.

-    Vendedores terceiros estão ligados a seus fornecedores.

-    Cada pedido possui um pagamento e uma entrega associada.


---

📦 Inserção de Dados

Foram inseridos dados simulados para testes e demonstração do funcionamento:

 -   5 clientes

 -   6 produtos

-    5 pedidos

-    5 pagamentos

-    5 vendedores terceiros

-    5 fornecedores

-    5 entregas

---

✅ Exemplos de Uso

O banco de dados pode ser utilizado para:

 -   Consultas SQL complexas (JOINs, agregações, filtros)

-    Relatórios gerenciais de vendas, estoque e entregas

-    Simulação de ambiente para testes de sistemas de ecommerce

-    Ensino e aprendizado de modelagem de dados


  ---

📄 Licença

Este projeto está licenciado sob a Licença MIT. Sinta-se livre para usar, estudar e contribuir!

---
  
## ✨ Autor

- Isabela Veronese 
- [LinkedIn](https://www.linkedin.com/in/isabela-veronese-11058a260)
