create database DataSave_DB;
use datasave_db;
create table Cliente (idCliente int primary key auto_increment, 
							Nome varchar(60), 
                            Email varchar (60), 
                            CNPJ varchar(14), 
                            Número_Contato char(11), 
                            idDataCenter int);

create table DataCenter (idDataCenter int primary key auto_increment, 
						Descrição varchar(100),
                        Tamanho varchar(9),
                        Localidade varchar(100),
                        Temperatura int,
                        Umidade int);
                        
insert into cliente values (null, 'Google', 'google@gmail.com', 06990590000123, 11998736543,2),
						   (null, 'Microsoft', 'microsoft@outlook.com', 04712500000107, 1147060900 , 1),
                           (null, 'Apple', 'apple@hotmail.com' , 00623904000173, 08007610880, 3);

insert into DataCenter values (null, 'DataCenter_Apple', 'Grande', 'Pindamonhangaba', 20, 60),
							  (null, 'DataCenter_Microsoft', 'Grande', 'Belo Horizonte', 21, 50),
                              (null, 'DataCenter_Google', 'Grande', 'São Paulo', 20, 40);
                              
select * from cliente;
select * from datacenter;
select idCliente, nome from cliente;
select iddatacenter from datacenter;
update Cliente set Nome= 'microfet' where idCliente= 8;
alter table DataCenter modify Umidade varchar(40);
select * from Cliente order by Temperatura desc;
alter table DataCenter drop Tamanho;
alter table Cliente change Localidade Localização varchar(50);