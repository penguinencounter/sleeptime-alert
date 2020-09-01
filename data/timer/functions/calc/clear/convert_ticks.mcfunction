# Convert ticks to MM:SS format.

# clone into seconds
scoreboard players operation sleep_ts ba_timer = sleep_t ba_timer
scoreboard players operation sleep_ts ba_timer /= *20 math130
# tellraw @a [{"text":"Got "},{"score":{"name":"sleep_ts","objective":"ba_timer"},"color":"aqua"},{"text":" total seconds...","color":"yellow"}]

# Do seconds
scoreboard players operation sleep_s ba_timer = sleep_ts ba_timer
scoreboard players operation sleep_s ba_timer %= *60 math130

# Remove seconds from total
scoreboard players operation sleep_ts ba_timer -= sleep_s ba_timer

# Do minutes
scoreboard players operation sleep_m ba_timer = sleep_ts ba_timer
scoreboard players operation sleep_m ba_timer /= *60 math130
