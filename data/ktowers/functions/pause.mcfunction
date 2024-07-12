execute if score $global is_paused matches 0 run execute if score $global wait matches 0 run function ktowers:_pause_
execute if score $global is_paused matches 1 run execute if score $global wait matches 0 run function ktowers:_unpause_
