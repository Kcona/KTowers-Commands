bossbar set timer_normal visible false

execute store result score $global temp1 run scoreboard players get $global ticksGolden
execute store result score $global goldenTempSeconds run scoreboard players operation $global temp1 /= $global 20

execute store result score $global temp1 run scoreboard players get $global goldenTempSeconds
execute store result score $global temp2 run scoreboard players get $global goldenTempSeconds
execute store result score $global goldenTempMinutes run scoreboard players operation $global temp1 /= $global 60
execute store result score $global goldenSeconds run scoreboard players operation $global temp2 %= $global 60

execute store result score $global temp1 run scoreboard players get $global goldenTempMinutes
execute store result score $global temp2 run scoreboard players get $global goldenTempMinutes
execute store result score $global goldenTempHours run scoreboard players operation $global temp1 /= $global 60
execute store result score $global goldenMinutes run scoreboard players operation $global temp2 %= $global 60

execute store result score $global goldenHours run scoreboard players get $global goldenTempHours

bossbar set timer_golden visible false

execute store result bossbar timer_golden max run scoreboard players get $global bossbarMaxGolden
execute store result bossbar timer_golden value run scoreboard players get $global ticksGolden

execute if score $global goldenSeconds matches ..10 run bossbar set timer_golden name [{"text":"","color":"gold"}, {"score":{"name":"$global","objective":"goldenMinutes"}}, {"text":":0","color":"gold"}, {"score":{"name":"$global","objective":"goldenSeconds"}}, {"text":" / 10:00","color":"gold"}]
execute if score $global goldenSeconds matches 10.. run bossbar set timer_golden name [{"text":"","color":"gold"}, {"score":{"name":"$global","objective":"goldenMinutes"}}, {"text":":","color":"gold"}, {"score":{"name":"$global","objective":"goldenSeconds"}}, {"text":" / 10:00","color":"gold"}]

bossbar set timer_golden visible true
bossbar set timer_golden players @a