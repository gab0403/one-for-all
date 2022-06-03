SELECT cancao.nome_cancao AS cancao, COUNT(historico.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS cancao
INNER JOIN SpotifyClone.historico_reproducao AS historico
ON cancao.cancao_id = historico.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;
