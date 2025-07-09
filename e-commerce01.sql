create database ecommerce;

use ecommerce;


create table client(
idClient int auto_increment primary key,
Fname varchar(10),
Lname varchar (10),
CPF char(11) not null,
Phone VARCHAR(15),
Email VARCHAR(100),
Address varchar(100),
constraint unique_cpf_client unique (CPF)
);

    -- criar tabela produto 
    
create table product(
idProduct int auto_increment primary key,
Name varchar(20),
Description enum('Eletronico','Vestimenta','Brinquedos','Alimentos') not null,
Price decimal(10, 2),
stock int
);

-- criar tabela pedido

create table orders(
idOrders int auto_increment primary key,
idOrdersClient int,
ordersdate date,
ordersStatus enum('Pendente', 'Processando', 'Enviado', 'Entregue', 'Cancelado') not null,
total decimal(10, 2),
constraint fk_orders_client foreign key (idOrdersClient) references client(idClient)
);


-- criar tabela pagamento

create table payments (
    idPayment int auto_increment primary key,
    idClient int,
    total_amount decimal(10, 2),
    typePayment enum('CartaoDeCredito', 'Boleto', 'PIX', 'Transferencia') not null,
    datePayment date,
    status_payment enum('Pendente', 'Pago', 'Reembolsado', 'Cancelado') not null,
    limitAvailable float,
    foreign key (idClient) references client(idClient)
);

-- criar tabela pedido_produto

create table Product_Order (
    idProduct int,
    idOrders int,
    idCustomer int,
    quantity int,
    primary key (idProduct, idOrders, idCustomer)
);


-- create tabela terceiro_vendedor 

create table thirdpartyseller(
id_Seller int auto_increment primary key,
product_id int,
order_id int,
customer_id int,
company_name varchar(20),
location varchar(100),
phone char(11)
);

create table supplier(
idSupplier int auto_increment primary key,
socialname varchar(255),
CNPJ char(15),
phone char(11),
address VARCHAR(100),
constraint unique_cnpj_client unique (CNPJ)
);


-- criar tabela vendedor_fornecedor

create table ThirdPartySeller_Supplier (
    ThirdPartySeller_idThirdPartySeller INT,
    ThirdPartySeller_Product_idProduct INT,
    ThirdPartySeller_Product_Order_idOrder INT,
    ThirdPartySeller_Product_Order_Customer_idCustomer INT,
    Supplier_idSupplier INT,
    PRIMARY KEY (
        ThirdPartySeller_idThirdPartySeller,
        ThirdPartySeller_Product_idProduct,
        ThirdPartySeller_Product_Order_idOrder,
        ThirdPartySeller_Product_Order_Customer_idCustomer,
        Supplier_idSupplier
    )
);

-- criar tabela entrega 

create table delivery(
idDelivery int auto_increment primary key,
shipping_date date,
delivery_date date,
tracking_code varchar(20),
delivery_status enum('Aguardando', 'Em_Transito', 'Entregue', 'Falhou') not null
);
 
 
show databases;

show tables;