execute if score $global ticksNormal < $global bossbarMaxNormal run scoreboard players set $global goldenPoint 0
execute if score $global ticksNormal >= $global bossbarMaxNormal run scoreboard players set $global goldenPoint 1

execute if score $global goldenPoint matches 0 run scoreboard players add $global ticksNormal 1
execute if score $global goldenPoint matches 1 run scoreboard players add $global ticksGolden 1

execute if score $global goldenPoint matches 0 run function ktowers:timer/timer_normal
execute if score $global goldenPoint matches 1 run function ktowers:timer/timer_golden