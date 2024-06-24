bossbar set timer_golden visible false

execute store result score $global temp1 run scoreboard players get $global ticksNormal
execute store result score $global normalTempSeconds run scoreboard players operation $global temp1 /= $global 20

execute store result score $global temp1 run scoreboard players get $global normalTempSeconds
execute store result score $global temp2 run scoreboard players get $global normalTempSeconds
execute store result score $global normalTempMinutes run scoreboard players operation $global temp1 /= $global 60
execute store result score $global normalSeconds run scoreboard players operation $global temp2 %= $global 60

execute store result score $global temp1 run scoreboard players get $global normalTempMinutes
execute store result score $global temp2 run scoreboard players get $global normalTempMinutes
execute store result score $global normalTempHours run scoreboard players operation $global temp1 /= $global 60
execute store result score $global normalMinutes run scoreboard players operation $global temp2 %= $global 60

execute store result score $global normalHours run scoreboard players get $global normalTempHours

bossbar set timer_normal visible false

execute store result bossbar timer_normal max run scoreboard players get $global bossbarMaxNormal
execute store result bossbar timer_normal value run scoreboard players get $global ticksNormal

execute if score $global normalMinutes matches ..10 if score $global normalSeconds matches ..10 run bossbar set timer_normal name [{"text":"","color":"white"}, {"score":{"name":"$global","objective":"normalHours"}}, {"text":":0","color":"white"}, {"score":{"name":"$global","objective":"normalMinutes"}}, {"text":":0","color":"white"}, {"score":{"name":"$global","objective":"normalSeconds"}}, {"text":" / 1:20:00","color":"white"}]
execute if score $global normalMinutes matches ..10 if score $global normalSeconds matches 10.. run bossbar set timer_normal name [{"text":"","color":"white"}, {"score":{"name":"$global","objective":"normalHours"}}, {"text":":0","color":"white"}, {"score":{"name":"$global","objective":"normalMinutes"}}, {"text":":","color":"white"}, {"score":{"name":"$global","objective":"normalSeconds"}}, {"text":" / 1:20:00","color":"white"}]
execute if score $global normalMinutes matches 10.. if score $global normalSeconds matches ..10 run bossbar set timer_normal name [{"text":"","color":"white"}, {"score":{"name":"$global","objective":"normalHours"}}, {"text":":","color":"white"}, {"score":{"name":"$global","objective":"normalMinutes"}}, {"text":":0","color":"white"}, {"score":{"name":"$global","objective":"normalSeconds"}}, {"text":" / 1:20:00","color":"white"}]
execute if score $global normalMinutes matches 10.. if score $global normalSeconds matches 10.. run bossbar set timer_normal name [{"text":"","color":"white"}, {"score":{"name":"$global","objective":"normalHours"}}, {"text":":","color":"white"}, {"score":{"name":"$global","objective":"normalMinutes"}}, {"text":":","color":"white"}, {"score":{"name":"$global","objective":"normalSeconds"}}, {"text":" / 1:20:00","color":"white"}]

bossbar set timer_normal visible true
bossbar set timer_normal players @a