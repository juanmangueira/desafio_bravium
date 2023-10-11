SELECT
   {{dbt_utils.star(from=ref('stg_correlacao'))}}
FROM {{ref('stg_correlacao')}} 