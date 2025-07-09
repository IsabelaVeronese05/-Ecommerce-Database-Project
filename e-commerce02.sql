use ecommerce;


              -- tabela cliente 
              
insert into client(Fname, Lname, CPF, Phone, Email, Address)
values('Carlos', 'Silva', '12345665218', '11999998888', 'carlos.silva@email.com', 'Rua das Flores, 123'),
('Maria', 'Souza', '23456789024', '11888887777', 'maria.souza@email.com', 'Av. Brasil, 456'),
('Ana', 'Costa', '45678901259', '11966665555', 'ana.costa@email.com', 'Travessa das Oliveiras, 101'),
('Lucas', 'Moraes', '56789012342', '11755554444', 'lucas.moraes@email.com', 'Rua Santo Amaro, 202'),
('Fernanda', 'Almeida', '67890123495', '11644443333', 'fernanda.almeida@email.com', 'Av. Paulista, 303');



       		-- tabela produto

insert into product(Name, Description, Price, Stock)
values('Camisa Polo', 'Vestimenta', 68.64, 34),
('Fone Bluetooth', 'Eletronico', 78.84, 39),
('Smartphone Android', 'Eletronico', 920.06, 56),
('Boneca', 'Brinquedos', 45.57, 41),
('Arroz 5Kg', 'Alimentos', 31.76, 49),
('Bolacha Recheada', 'Alimentos', 5.52, 83);


             -- tabela pedido 

insert into orders(idOrdersClient, ordersDate, ordersStatus, total)
values(1, '2025-07-01', 'Pendente', 150.75),
(2, '2025-07-02', 'Processando', 89.90),
(3, '2025-07-03', 'Enviado', 320.40),
(4, '2025-07-03', 'Entregue', 59.99),
(5, '2025-07-04', 'Cancelado', 45.00);


                -- tabela pagamentos 

insert into payments(idClient, total_amount, typePayment, datePayment, status_payment, limitAvailable)
values(1, 150.75, 'PIX', '2025-07-01', 'Pago', NULL),
(2, 89.90, 'Boleto', '2025-07-02', 'Pendente', NULL),
(3, 320.40, 'CartaoDeCredito', '2025-07-03', 'Pago', 1200.00),
(4, 59.99, 'Transferencia', '2025-07-03', 'Cancelado', NULL),
(5, 45.00, 'CartaoDeCredito', '2025-07-04', 'Reembolsado', 800.00);



          -- tabela pedido_produto

insert into product_order(idProduct, idOrders, idcustomer, quantity)
values(1, 1, 1, 2),
(2, 1, 1, 2),
(3, 2, 2, 1),
(4, 3, 3, 3);


        -- tabela terceiro_vendedor 

insert into thirdpartyseller(product_id, order_id, customer_id, company_name, location, phone)
values(1, 1, 1, 'EletroTech', 'São Paulo - SP', '11987654321'),
(2, 2, 2, 'GameWorld', 'Rio de Janeiro - RJ', '21988776655'),
(4, 3, 3, 'Brinquedos Ltda', 'Belo Horizonte - MG', '31999887766'),
(5, 4, 4, 'ModaFácil', 'Curitiba - PR', '41991234567'),
(3, 5, 5, 'alimentos Ltda', 'Salvador - BA', '71999887711');

     -- tabela fornecedor
     
insert into supplier(socialname, CNPJ, phone, address)
values('EletroBrasil Ltda', '12345678000195', '11987654321', 'Av. Paulista, 1000 - São Paulo - SP'),
('TechImport SA', '98765432000101', '21999887766', 'Rua das Laranjeiras, 50 - Rio de Janeiro - RJ'),
('Comercial Norte Ltda', '45678912000177', '31991234567', 'Av. Afonso Pena, 300 - Belo Horizonte - MG'),
('Global Suprimentos', '74185296000144', '41987654321', 'Rua XV de Novembro, 200 - Curitiba - PR'),
('Nordeste Fornecimentos', '85296374000122', '71999887711', 'Av. Sete de Setembro, 700 - Salvador - BA');


      -- tabela vendedor_fornecedor

insert into ThirdPartySeller_Supplier (
    ThirdPartySeller_idThirdPartySeller,
    ThirdPartySeller_Product_idProduct,
    ThirdPartySeller_Product_Order_idOrder,
    ThirdPartySeller_Product_Order_Customer_idCustomer,
    Supplier_idSupplier
)
values(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 4, 3, 3, 3),
(4, 5, 4, 4, 4),
(5, 3, 5, 5, 5);


                -- tabela entrega 

insert into delivery(shipping_date, delivery_date, tracking_code, delivery_status)
values('2025-07-05', '2025-07-08', 'BR1234567890', 'Entregue'),
('2025-07-06', NULL, 'BR9876543210', 'Em_Transito'),
('2025-07-07', NULL, 'BR1122334455', 'Aguardando'),
('2025-07-04', '2025-07-07', 'BR5566778899', 'Entregue'),
('2025-07-03', '2025-07-06', 'BR9988776655', 'Falhou');


select * from  product_order;



