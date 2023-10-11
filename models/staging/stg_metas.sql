WITH source AS (
    SELECT DISTINCT
    *
    FROM {{ref('raw_metas')}}  
),

renamed AS (
    SELECT
        ID AS id_cliente,
        Mes AS mes_numero,
        Meta AS meta,
        Realizado/100 AS realizado
    FROM source
)

SELECT * FROM renamed