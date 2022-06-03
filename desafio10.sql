SELECT cancao.nome_cancao AS nome, COUNT(historico.usuario_id) AS reproducoes
FROM SpotifyClone.cancao AS cancao
INNER JOIN SpotifyClone.historico_reproducao AS historico
ON cancao.cancao_id = historico.cancao_id
INNER JOIN SpotifyClone.usuario AS usuario
ON usuario.usuario_id = historico.usuario_id
WHERE usuario.plano_id IN(1,3)
GROUP BY cancao.nome_cancao
ORDER BY nome;