execute if predicate timer:is_clear run function timer:loop_5t_clear
execute if predicate timer:is_raining run function timer:loop_5t_rain
execute if predicate timer:is_thundering run function timer:signs/lightning/timer_end




schedule function timer:loop_5t 5t