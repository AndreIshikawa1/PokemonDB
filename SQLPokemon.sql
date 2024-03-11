USE POKEMON

SELECT * 
FROM POKEMON

-- 1- Quantidade de Pok�mons
SELECT COUNT(Name) as "Quantidade de Pok�mons"
FROM Pokemon

-- 2- Quantidade de Pok�mons com 2 elementos
SELECT COUNT(Type_2) as "Quantidade de Pok�mons com 2 elementos"
FROM Pokemon

-- 3- Tabela com quantidade de elementos tipo 1.
SELECT TYPE_1, count(Type_1) as "Quantidade"
FROM Pokemon
GROUP BY Type_1
ORDER BY Quantidade desc

-- 4- Tabela com quantidade de elemntos tipo 2.
SELECT TYPE_2, count(Type_2) as "Quantidade"
FROM Pokemon
GROUP BY Type_2
ORDER BY Quantidade desc

-- 5- Pok�mon mais forte e Pok�mon mais fraco.
-- Modo 1
SELECT top 1 Name,Total
FROM Pokemon
ORDER BY Total Desc

SELECT top 1 Name,Total
FROM Pokemon
ORDER BY Total ASC

-- Modo 2
SELECT Name, Total
FROM Pokemon
WHERE Total = (SELECT MAX(Total) FROM Pokemon)

SELECT Name, Total
FROM Pokemon
WHERE Total = (SELECT MIN(Total) FROM Pokemon);

-- 6- Pok�mon com maior e menor HP, attack, Defense e etc.
-- Maior HP
SELECT Name, HP
FROM Pokemon
WHERE HP = (SELECT MAX(HP) FROM Pokemon)

-- Menor HP
SELECT Name, HP
FROM POKEMON
WHERE HP = (SELECT MIN(HP) FROM POKEMON)

-- Maior Ataque
Select Name, Attack as "Ataque"
FROM POKEMON
WHERE Attack = (select max(Attack) from POKEMON)

-- Menor Ataque
Select Name, Attack as "Ataque"
FROM POKEMON
WHERE Attack = (select min(Attack) from POKEMON)

-- Maior Defesa
Select top 1 Name, Defense as "Defesa"
FROM POKEMON
ORDER BY Defense desc

-- Menor Defesa
Select top 1 Name, Defense as "Defesa"
FROM Pokemon
Order by Defense asc

-- 7- Quantidade de Pok�mons de cada gera��o

Select Generation as "Gera��o" , Count(Generation) as "Quantidade de Pok�mons"
FROM POKEMON
GROUP BY Generation
Order by "Gera��o" asc

-- 8- Quantidade de Pok�mons lendarios.
Select count(Legendary) as "Quantidade de Pok�mons lendarios"
From Pokemon
Where Legendary = 1

Select Name
From Pokemon
where Legendary = 1