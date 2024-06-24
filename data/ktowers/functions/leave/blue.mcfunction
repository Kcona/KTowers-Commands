# This command has to be used as follows
# /execute as <player> run function ktowers:leave/blue

team join Neutral @s
tp @s -4 88 1024
effect clear @s minecraft:resistance
spawnpoint @s 0 88 1024

tellraw @a ["", {"selector":"@s", "bold":true, "color":"green"}, {"text":" left Blue.", "color":"green"}]