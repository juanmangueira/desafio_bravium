WITH emails AS (
    SELECT 
        id_cliente,
        EXTRACT(MONTH FROM data_email) AS mes_numero,
        (SUM(CASE WHEN link_clicado IS true THEN 1 ELSE 0 END)) AS cliques,
        (SUM(CASE WHEN email_recebido IS true THEN 1 ELSE 0 END)) AS total_emails --Emails recebidos
    FROM `analytics-engineer-juan.vendas_bravium.stg_emails`
    WHERE email_recebido IS true
    GROUP BY
        id_cliente,
        mes_numero
),

taxa AS (
    SELECT 
        id_cliente,
        mes_numero,
        (cliques/total_emails) AS taxa_cliques
    FROM emails
)

SELECT * FROM taxa