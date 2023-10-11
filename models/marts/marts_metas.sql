SELECT
    mes_numero,
    AVG(realizado) AS realizado
FROM {{ref('stg_metas')}}
GROUP BY
    mes_numero