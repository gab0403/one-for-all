SELECT artista.nome_artista AS artista, album.nome_album AS album, COUNT(usuario_artista.usuario_id) AS seguidores
FROM SpotifyClone.artista AS artista
INNER JOIN 
SpotifyClone.album AS album 
ON artista.artista_id = album.artista_id
INNER JOIN 
SpotifyClone.usuario_artista AS usuario_artista
ON artista.artista_id = usuario_artista.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;