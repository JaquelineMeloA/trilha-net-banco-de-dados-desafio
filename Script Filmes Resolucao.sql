--1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM FILMES

--2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano FROM FILMES ORDER BY Ano ASC

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano,Duracao FROM FILMES WHERE Nome='De Volta para o Futuro' 

--4 - Buscar os filmes lançados em 1997

SELECT Nome, Ano,Duracao FROM FILMES  WHERE Ano='1997'

--5 - Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano,Duracao FROM FILMES  WHERE Ano>'2000'

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente


SELECT Nome, Ano,Duracao  FROM FILMES  WHERE Duracao>100 AND Duracao <150 ORDER BY Duracao ASC

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

--não possivel ordernar pela duração, pois o campo não será apresentado na tela, somente se incluir no group By , mas  resultado sera diferente

SELECT  Ano, COUNT(*) Quantidade FROM FILMES 
GROUP BY Ano
order by Quantidade desc 

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome


Select Id,PrimeiroNome, UltimoNome, Genero from Atores where Genero='M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome


Select Id,PrimeiroNome, UltimoNome, Genero from Atores where Genero='F'
ORDER BY PrimeiroNome asc 

--10 - Buscar o nome do filme e o gênero


Select Filmes.Nome,Generos.Genero from Filmes INNER JOIN FilmesGenero ON Filmes.Id=FilmesGenero.IdFilme
INNER JOIN Generos on FilmesGenero.IdGenero=Generos.Id