function ktowers:timer/initialize

function ktowers:arena/load

scoreboard objectives add is_paused dummy
scoreboard players set $global is_paused 0
scoreboard objectives add wait dummy
scoreboard players set $global wait 0

gamerule sendCommandFeedback false

tellraw @a {"text": "KTowers Commands successfully loaded.", "color": "#152945"}
