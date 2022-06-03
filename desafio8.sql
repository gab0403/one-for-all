SELECT artista.nome_artista AS artista, album.nome_album AS album
FROM SpotifyClone.artista AS artista
INNER JOIN 
SpotifyClone.album AS album 
ON artista.artista_id = album.artista_id
WHERE artista.nome_artista = 'walter Phoenix'
GROUP BY artista, album
ORDER BY album;