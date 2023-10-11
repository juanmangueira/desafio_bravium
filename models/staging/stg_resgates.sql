WITH source AS (
    SELECT DISTINCT
    *
    FROM {{ref('raw_resgates')}}
),

renamed AS (
    SELECT
        DATE(PARSE_TIMESTAMP("%m/%d/%Y", Data)) AS data_resgate,
        Column1 AS mes_numero,
        ID AS id_cliente,
        Regiao AS regiao,
        IDProduto AS id_produto,
        Categoria AS categoria,
        Pontos AS pontos
    FROM source
)

SELECT * FROM renamed

