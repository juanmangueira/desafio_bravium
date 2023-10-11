SELECT
    mes_numero,
    AVG(taxa_cliques) AS taxa_cliques
FROM {{ref('stg_taxa_cliques')}}
GROUP BY
    mes_numero