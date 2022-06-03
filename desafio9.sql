SELECT COUNT(historico.cancao_id) AS quantidade_musicas_no_historico 
FROM SpotifyClone.historico_reproducao AS historico
INNER JOIN SpotifyClone.usuario AS usuario
ON usuario.usuario_id = historico.usuario_id
WHERE usuario.nome = 'Bill'; 