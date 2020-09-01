scoreboard players operation sleep_t ba_timer = clear_sleep math130
scoreboard players operation sleep_t ba_timer -= daytime ba_timer
execute if score sleep_t ba_timer matches 1.. run function timer:calc/clear/convert_ticks