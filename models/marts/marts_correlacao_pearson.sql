SELECT
   {{dbt_utils.star(from=ref('stg_correlacao_pearson'))}}
FROM {{ref('stg_correlacao_pearson')}} 