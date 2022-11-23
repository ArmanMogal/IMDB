CREATE DATABASE IMDb;

USE IMDb;

create table tbluser(
id int not null auto_increment,
titleType varchar(255),
primaryTitle varchar(255),
startYear varchar(255),
genres varchar(255),
averageRating varchar(255),
numVotes varchar(255),
artist varchar(255),
PRIMARY KEY(id)
);

select * from tbluser;

INSERT INTO tbluser (titleType, primaryTitle, startYear, genres, averageRating, numVotes, artist)
values ('movie','Manichitrathazhu','1993','comedy','8','9468','producer'),
('movie','ChennaiExpress','2005','comedy','9','468','executiveProducer'),
('movie','IronMan','2010','action','6','6463','associateProducer'),
('movie','Welcome','2008','comedy','9','2466','lineProducer'),
('movie','Tarzan','2017','action','6','5463','director'),
('movie','LoveStory','2015','romantic','5.7','1461','productionManager')

SELECT titleType, primaryTitle, startYear, genres, averageRating, numVotes
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%comedy%' AND startYear > 1989 AND averageRating > 9.0 AND numVotes > 10000




