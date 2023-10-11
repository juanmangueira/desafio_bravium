WITH cte AS (
    SELECT
        id_cliente,
        mes_numero,
        AVG(realizado) AS realizado,
        AVG(taxa_cliques) AS taxa_cliques,
        SUM(resgates) AS resgates
    FROM {{ref('stg_correlacao')}}
    GROUP BY
        id_cliente,
        mes_numero
)

SELECT
    corr(realizado, taxa_cliques) AS correlacao_meta_cliques,
    corr(realizado, resgates) AS correlacao_meta_resgates,
    corr(resgates, taxa_cliques) AS correlacao_resgates_cliques,
FROM cte