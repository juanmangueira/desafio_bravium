WITH cte AS (
  SELECT DISTINCT
          metas.id_cliente,
          metas.mes_numero,
          metas.realizado,
          cliques.taxa_cliques,
          resgates.resgates
  FROM `analytics-engineer-juan.vendas_bravium.stg_metas` AS metas
  INNER JOIN 
      `analytics-engineer-juan.vendas_bravium.stg_taxa_cliques` AS cliques
  ON
      metas.id_cliente = cliques.id_cliente AND
      metas.mes_numero = cliques.mes_numero
  INNER JOIN
      `analytics-engineer-juan.vendas_bravium.stg_contador_resgate` AS resgates
  ON
      metas.id_cliente = resgates.id_cliente AND metas.mes_numero = resgates.mes_numero
)
SELECT * FROM cte