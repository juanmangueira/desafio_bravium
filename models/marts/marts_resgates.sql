SELECT
    id_cliente,
    categoria,
    mes_numero,
    SUM(resgates) AS resgates
FROM {{ref('stg_contador_resgate')}}
GROUP BY
    categoria,
    mes_numero,
    id_cliente  