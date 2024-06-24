execute as @e[type=item_frame, tag=frame_unfinished] run data merge entity @s {Invisible:1b,Fixed:1b}

execute as @e[type=item_frame, tag=frame_unfinished] run tag @s add frame_finished
execute as @e[type=item_frame, tag=frame_unfinished] run tag @s remove frame_unfinished