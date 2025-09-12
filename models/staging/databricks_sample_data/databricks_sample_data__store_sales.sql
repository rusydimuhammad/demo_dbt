WITH source_store_sales AS (
    SELECT * FROM {{ source('databricks_sample_data','store_sales') }}
),
final AS (
    SELECT * FROM source_store_sales
)
SELECT * FROM final