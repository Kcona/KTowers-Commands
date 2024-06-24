# This command has to be used as follows
# /execute as <player> run function ktowers:join/red

team join Red @s
tp @s 29 64 992
effect give @s minecraft:resistance 1000000 127 true
spawnpoint @s 29 64 992

tellraw @a ["", {"selector":"@s", "bold":true, "color":"red"}, {"text":" joined Red.", "color":"red"}]