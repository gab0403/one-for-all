SELECT usuario.nome AS usuario, IF(MAX(YEAR(historico.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico_reproducao AS historico
ON usuario.usuario_id = historico.usuario_id
GROUP BY usuario;