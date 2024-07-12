scoreboard players set $global wait 1

# execute if score $global wait matches 1 run execute as @a[limit=1,sort=random] run pause

execute if score $global wait matches 1 run scoreboard players set $global is_paused 0

execute if score $global wait matches 1 run gamemode survival @a[team=Blue]
execute if score $global wait matches 1 run gamemode survival @a[team=Red]

execute if score $global wait matches 1 run title @a title {"bold":true,"color":"yellow","text":"Game unpaused"}
