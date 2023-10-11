SELECT
    id_cliente,
    mes_numero,
    categoria,
    COUNT(id_cliente) AS resgates
FROM {{ref('stg_resgates')}}
GROUP BY
    id_cliente,
    mes_numero,
    categoria