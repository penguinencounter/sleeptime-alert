scoreboard players operation sleep_t ba_timer = clear_sleep math130
scoreboard players operation sleep_t ba_timer -= daytime ba_timer
# tellraw @a [{"text":"Start iteration... "},{"score":{"name":"sleep_t","objective":"ba_timer"},"color":"aqua"},{"text":" ticks","color":"aqua"}]
execute if score sleep_t ba_timer matches 1.. run function timer:calc/clear/convert_ticks
execute if score sleep_t ba_timer matches -10917..0 run function timer:calc/return_zero
execute unless score sleep_t ba_timer matches -10917.. run function timer:calc/fail