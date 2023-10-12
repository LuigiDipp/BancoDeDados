-- TABLE
CREATE TABLE cliente_cadastro (
ID_cliente int(11),
Nome VARCHAR(45),
Nascimento int(11),
CPF int(11),
Saldo int(11),
PRIMARY KEY (ID_cliente)
);
CREATE TABLE filial (
Filial_ID int(11),
Endereco VARCHAR(45),
Setor int(11),
Funcionario int(11),
Cliente_CD_ID int(11),
PRIMARY KEY (Filial_ID),
FOREIGN KEY (Funcionario) REFERENCES funcionario(ID_funcionario),
FOREIGN KEY (Cliente_CD_ID) REFERENCES cliente_cadastro(ID_cliente),
FOREIGN KEY (Setor) REFERENCES setor(ID_setor)
);
CREATE TABLE funcao (
ID_funcao int(11),
Nome VARCHAR(45),
Salário int(11),
Filial int(11),
PRIMARY KEY (ID_funcao),
FOREIGN KEY (Filial) REFERENCES filial(Filial_ID)
);
CREATE TABLE funcionario (
ID_funcionario int(11),
Nome VARCHAR(45),
Nascimento int(11),
CPF int(11),
Funcao VARCHAR(45),
PRIMARY KEY (ID_funcionario),
FOREIGN KEY (Funcao) REFERENCES funcao(Nome)
);
CREATE TABLE produto(
ID_produto int(11),
Tipo VARCHAR(45),
Validade int(11),
Fornecedor VARCHAR(45),
quant int(11),
PRIMARY KEY (ID_produto)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
