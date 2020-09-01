execute if predicate timer:is_clear run function timer:calc/clear/check_sleepable
execute if predicate timer:is_raining run function timer:calc/rain/check_sleepable

execute if score sleep_s ba_timer matches 10..60 run function timer:signs/min2digsec
execute if score sleep_s ba_timer matches 1..9 run function timer:signs/min1digsec 
execute if score sleep_s ba_timer matches 0 unless score sleep_m ba_timer matches 0 run function timer:signs/min0sec

execute if score sleep_s ba_timer matches 0 if score sleep_m ba_timer matches 0 run function timer:signs/timer_end


schedule function timer:loop_5t 5t