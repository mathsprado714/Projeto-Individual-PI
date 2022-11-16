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

create table timeFavorito(
	idtimeFavorito int auto_increment,
    fkUsuario int,
    foreign key (fkUsuario) references usuario(idUsuario),
    primary key (idtimeFavorito, fkUsuario),
    nomeTime varchar(45)
);

select * from usuario as u join
	notaJogador as nj
		on nj.fkUsuario = u.idUsuario;
        
select u.idUsuario, u.nome, nj.* from usuario as u join
	notaJogador as nj
		on nj.fkUsuario = u.idUsuario;
        
#para mostrar o time favorito

select u.nome, tm.nomeTime from usuario as u join
	timeFavorito as tm on tm.fkUsuario = u.idUsuario;