execute if predicate timer:is_raining run scoreboard players set Raining ba_timer 1
execute unless predicate timer:is_raining run scoreboard players set Raining ba_timer 0

execute if predicate timer:is_thundering run scoreboard players set Thundering ba_timer 1
execute unless predicate timer:is_thundering run scoreboard players set Thundering ba_timer 0

schedule function timer:check_weather 2s
