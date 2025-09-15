WITH teams AS (
    SELECT * FROM {{ ref('example__teams') }}
),

team_locations AS (
    SELECT * FROM {{ ref('team_locations') }}
),

final AS (
    SELECT
        teams.team,
        team_locations.city,
        team_locations.state,
        '{{ var('current_champion') }}' as is_champion
    FROM teams
    LEFT JOIN team_locations
        ON team_locations.name = teams.team
)

SELECT * FROM final