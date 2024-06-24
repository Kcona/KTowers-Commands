# This command has to be used as follows
# /execute as <player> run function ktowers:join/blue

team join Blue @s
tp @s -29 64 992
effect give @s minecraft:resistance 1000000 127 true
spawnpoint @s -29 64 992

tellraw @a ["", {"selector":"@s", "bold":true, "color":"blue"}, {"text":" joined Blue.", "color":"blue"}]