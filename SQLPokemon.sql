USE POKEMON

SELECT * 
FROM POKEMON

-- 1- Quantidade de Pokémons
SELECT COUNT(Name) as "Quantidade de Pokémons"
FROM Pokemon

-- 2- Quantidade de Pokémons com 2 elementos
SELECT COUNT(Type_2) as "Quantidade de Pokémons com 2 elementos"
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

-- 5- Pokémon mais forte e Pokémon mais fraco.
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

-- 6- Pokémon com maior e menor HP, attack, Defense e etc.
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

-- 7- Quantidade de Pokémons de cada geração

Select Generation as "Geração" , Count(Generation) as "Quantidade de Pokémons"
FROM POKEMON
GROUP BY Generation
Order by "Geração" asc

-- 8- Quantidade de Pokémons lendarios.
Select count(Legendary) as "Quantidade de Pokémons lendarios"
From Pokemon
Where Legendary = 1

Select Name
From Pokemon
where Legendary = 1