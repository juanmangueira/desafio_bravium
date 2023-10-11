WITH source AS (
    SELECT DISTINCT
    *
    FROM {{ref('raw_emails')}}
),

renamed AS (
    SELECT
        DATE(PARSE_TIMESTAMP("%m/%d/%Y", Date)) AS data_email,
        ID AS id_cliente,
        CAST(Emailreceived AS BOOL) AS email_recebido,
        CAST(Emailopened AS BOOL) AS email_aberto,
        CAST(Linkclicked AS BOOL) AS link_clicado
    FROM source
)

SELECT * FROM renamed
