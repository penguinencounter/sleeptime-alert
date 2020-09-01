tellraw @a [{"text":"<0%>","color":"red"},{"text":" Loading SleeptimeAlert (aka Clocks+) Prerelease 1","color":"aqua"}]
tellraw @a [{"text":"<25%>","color":"red"},{"text":" Setting up scoreboards...","color":"aqua"}]
scoreboard objectives add math130 dummy "bedtime alert: math storage"

#> Math
# Human-readability.
# We don't want to show time in ticks, do we?

# 1: just because
scoreboard players set *1 math130 1
# 20: tps
scoreboard players set *20 math130 20
# 60: seconds in a minute
scoreboard players set *60 math130 60
# 24000: ticks in a MC day
scoreboard players set *24000 math130 24000

# In clear weather
scoreboard players set clear_sleep math130 12544
# In rainy weather
scoreboard players set rain_sleep math130 12014
# In thunderstorm (not applicable)

scoreboard objectives add ba_timer dummy "bedtime alert: time calculations"

tellraw @a [{"text":"<50%>","color":"#FF5500"},{"text":" Cleaning scoreboards...","color":"aqua"}]
scoreboard players set daytime ba_timer 0
scoreboard players set gametime ba_timer 0
scoreboard players set day ba_timer 0

# Seconds this day (according to ticks)
scoreboard players set total_s ba_timer 0

# Minutes till player can sleep
scoreboard players set sleep_m ba_timer 0
# Seconds till player can sleep
scoreboard players set sleep_s ba_timer 0
# Total ticks till player can sleep
scoreboard players set sleep_t ba_timer 0
# Total sconds till player can sleep
scoreboard players set sleep_ts ba_timer 0

# Effective in-game days (ticks the game has run)
scoreboard players set eff_days ba_timer 0

tellraw @a [{"text":"<75%>","color":"gold"},{"text":" Physical Data Storage...","color":"aqua"}]

forceload add 3824 2672
tellraw @a [{"text":"<Chunkloading>","color":"light_purple"},{"text":" Loaded chunk ","color":"yellow"},{"text":"239,167/overworld","color":"aqua"},{"text":". See /function timer:help/forceload for details.","color":"yellow"}]
tellraw @a [{"text":"<100%>","color":"green"},{"text":" Load complete.","color":"aqua"}]


# Because sleep time is affected by weather
schedule function timer:check_weather 2s
tellraw @a [{"text":"<Clocks+>","color": "dark_green", "italic": true},{"text":" Started weather detector module. The update speed is: 2 seconds.","color": "aqua","italic": true}]
