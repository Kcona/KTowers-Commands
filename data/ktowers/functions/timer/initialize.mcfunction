scoreboard objectives add startTimer dummy
scoreboard players set $global startTimer 0

scoreboard objectives add goldenPoint dummy
scoreboard players set $global goldenPoint 0

scoreboard objectives add temp1 dummy
scoreboard players set $global temp1 20
scoreboard objectives add temp2 dummy
scoreboard players set $global temp2 20

scoreboard objectives add 20 dummy
scoreboard players set $global 20 20
scoreboard objectives add 60 dummy
scoreboard players set $global 60 60

# Normal timer thingies ----------------------------------------------------------------
scoreboard objectives add ticksNormal dummy
scoreboard players set $global ticksNormal 0
scoreboard objectives add bossbarMaxNormal dummy
# 80 * 60 * 20 
scoreboard players set $global bossbarMaxNormal 96000

scoreboard objectives add normalHours dummy
scoreboard players set $global normalHours 0
scoreboard objectives add normalMinutes dummy
scoreboard players set $global normalMinutes 0
scoreboard objectives add normalSeconds dummy
scoreboard players set $global normalSeconds 0

scoreboard objectives add normalTempHours dummy
scoreboard players set $global normalTempHours 0
scoreboard objectives add normalTempMinutes dummy
scoreboard players set $global normalTempMinutes 0
scoreboard objectives add normalTempSeconds dummy
scoreboard players set $global normalTempSeconds 0

bossbar remove timer_normal
bossbar add timer_normal {"text":"Follow if you see this :)","color":"white"}
bossbar set timer_normal color white
bossbar set timer_normal style notched_10

# Golden timer thingies ----------------------------------------------------------------
scoreboard objectives add ticksGolden dummy
scoreboard players set $global ticksGolden 0
scoreboard objectives add bossbarMaxGolden dummy
# 10 * 60 * 20 
scoreboard players set $global bossbarMaxGolden 12000

scoreboard objectives add goldenHours dummy
scoreboard players set $global goldenHours 0
scoreboard objectives add goldenMinutes dummy
scoreboard players set $global goldenMinutes 0
scoreboard objectives add goldenSeconds dummy
scoreboard players set $global goldenSeconds 0

scoreboard objectives add goldenTempHours dummy
scoreboard players set $global goldenTempHours 0
scoreboard objectives add goldenTempMinutes dummy
scoreboard players set $global goldenTempMinutes 0
scoreboard objectives add goldenTempSeconds dummy
scoreboard players set $global goldenTempSeconds 0

bossbar remove timer_golden
bossbar add timer_golden {"text":"Subscribe if you see this :)","color":"gold"}
bossbar set timer_golden color yellow
bossbar set timer_golden style notched_10