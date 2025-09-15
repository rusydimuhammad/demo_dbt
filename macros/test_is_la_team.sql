{% macro test_is_la_team(model, column_name) %}

WITH validation AS (
    SELECT
        {{ column_name }} AS city,
        team
    FROM {{ model }}
)

SELECT city, team
FROM validation
WHERE city = 'Los Angeles'
  AND team NOT IN ('Lakers', 'Clippers')

{% endmacro %}
