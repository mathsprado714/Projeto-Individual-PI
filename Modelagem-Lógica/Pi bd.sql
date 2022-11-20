create database premier;
use premier;
drop database premier;
create table usuario(
	idUsuario int primary key auto_increment,
    nome varchar(45),
    email varchar(45),
    senha varchar(45)
);

create table notaJogador(
	idnotaJogador int auto_increment,
    debruyneNota decimal(3,2),
    antonyNota decimal(3,2),
    harryNota decimal(3,2),
    salahNota decimal(3,2),
    kalidouNota decimal(3,2),
    buyakoNota decimal(3,2),
    fkUsuario int,
    foreign key (fkUsuario) references usuario(idUsuario),
    primary key (idnotaJogador, fkUsuario)
);

create table avaliacao(
	idAvaliacao int auto_increment,
	titulo varchar(45),
    descricao varchar(255),
    fkUsuario int,
    foreign key (fkUsuario) references usuario(idUsuario),
    primary key (idAvaliacao, fkUsuario),
    unique (fkUsuario)
);
select*from avaliacao;
select * from usuario as u join
	notaJogador as nj
		on nj.fkUsuario = u.idUsuario;
        
select u.idUsuario, u.nome, nj.* from usuario as u join
	notaJogador as nj
		on nj.fkUsuario = u.idUsuario;
        
#para mostrar a avaliação do usuario sobre o site

select u.idUsuario, a.titulo, a.descricao from usuario as u
	join avaliacao as a on a.fkUsuario = u.idUsuario;
    
select * from usuario;
desc avaliacao;
SELECT 
            a.idAvaliacao AS idAviso,
            a.titulo,
            a.descricao,
            a.fkUsuario,
            u.idUsuario AS idUsuario,
            u.nome,
            u.email,
            u.senha
        FROM avaliacao a
            INNER JOIN usuario u
                ON a.fkUsuario = u.idUsuario
        WHERE u.idUsuario = idUsuario;
        
SELECT 
            a.idAvaliacao AS idAviso,
            a.titulo,
            a.descricao,
            a.fkUsuario,
            u.idUsuario AS idUsuario,
            u.nome,
            u.email,
            u.senha
        FROM avaliacao a
            INNER JOIN usuario u
                ON a.fkUsuario = u.idUsuario
        WHERE a.descricao LIKE '${texto}';
        
SELECT 
            a.idAvaliacao AS idAviso,
            a.titulo,
            a.descricao,
            a.fkUsuario,
            u.idUsuario AS idUsuario,
            u.nome,
            u.email,
            u.senha
        FROM avaliacao a
            INNER JOIN usuario u
                ON a.fkUsuario = u.idUsuario;
                
##################################################
CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(300)
);

/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT,
	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
);


