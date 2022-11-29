create database premier;
use premier;
drop database premier;
drop table jogador;
drop database premier;
create table usuario(
	idUsuario int primary key auto_increment,
    nome varchar(45),
    email varchar(45),
    senha varchar(45)
);

create table jogador(
	idJogador int primary key auto_increment,
	nomeJogador varchar(45),
    timeJogador varchar(45)
);	
select * from nota;

create table nota(
	idNota int auto_increment,
    nota decimal(4,2),
	fkUsuario int,
    foreign key (fkUsuario) references usuario(idUsuario),
    fkJogador int,
    foreign key (fkJogador) references jogador(idJogador),
    primary key (idNota, fkUsuario, fkJogador)
);
drop table jogador;
create table avaliacao(
	idAvaliacao int auto_increment,
	titulo varchar(45),
    descricao varchar(255),
    fkUsuario int,
    foreign key (fkUsuario) references usuario(idUsuario),
    primary key (idAvaliacao, fkUsuario),
    unique (fkUsuario)
);

select * from avaliacao;
select*from avaliacao;
insert into jogador(nomeJogador, timeJogador)value
	('De Bruyne', 'Manchester City'),
    ('Antony', 'Manchester United'),
    ('Buyako Saka', 'Arsenal'),
    ('Salah', 'Liverpool'),
    ('Kalidou Koulibaly', 'Chelsea'),
    ('Harry Kane', 'Tottenham');

select * from usuario as u join
	notaJogador as nj
		on nj.fkUsuario = u.idUsuario;
        
select u.idUsuario, u.nome, nj.* from usuario as u join
	notaJogador as nj
		on nj.fkUsuario = u.idUsuario;
        
#para mostrar a avaliação do usuario sobre o site

select u.idUsuario, a.titulo, a.descricao from usuario as u
	join avaliacao as a on a.fkUsuario = u.idUsuario;

select j.nomeJogador, j.timeJogador, min(nota) from nota as n join jogador as j on n.fkJogador = j.idJogador;
select j.nomeJogador, j.timeJogador, max(nota) from nota as n join jogador as j on n.fkJogador = j.idJogador;
    
select * from nota;
select n.nota, j.nomeJogador, j.timeJogador from nota as n join jogador as j on n.fkJogador = j.idJogador;
select nomeJogador, timeJogador, nota from jogador join nota on fkJogador = idJogador;
select * from jogador as j join nota as n
	on n.fkJogador = j.idJogador;

select 
j.nomeJogador, j.timeJogador 
	from jogador as j join nota as n on n.fkJogador = j.idJogador;
desc jogador;
select * from jogador;

desc avaliacao;

select * from nota join jogador on fkJogador=idJogador;

select min(nota) as 'minimo', max(nota), j.nomeJogador, j.timeJogador from jogador as j join nota as n on n.fkJogador = j.idJogador where n.fkUsuario = 2;

select j.nomeJogador as 'jogador', j.timeJogador as 'time', n.nota as 'nota', min(nota) as 'minimo', max(nota) as 'maximo', avg(nota) as 'media' from nota as n join jogador as j on n.fkJogador = j.idJogador
	where n.nota < 4;
    
select j.nomeJogador as 'joga',

select min(nota) as 'Minímo', avg(nota) as 'Média', max(nota) from nota;



#selects usadoa para buscar a avaliação do usuário
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
##############
select * from nota;
select * from usuario;
select * from avaliacao;
select * from jogador;
use premier;
