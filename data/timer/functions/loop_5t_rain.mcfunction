function timer:calc/rain/check_sleepable

execute if score sleep_s ba_timer matches 10..60 run function timer:signs/rain/min2digsec
execute if score sleep_s ba_timer matches 1..9 run function timer:signs/rain/min1digsec 
execute if score sleep_s ba_timer matches 0 unless score sleep_m ba_timer matches 0 run function timer:signs/rain/min0sec

execute if score sleep_s ba_timer matches 0 if score sleep_m ba_timer matches 0 run function timer:signs/rain/timer_end

execute if score sleep_s ba_timer matches -1 run function timer:signs/error
