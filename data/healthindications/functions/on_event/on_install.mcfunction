# runs on install

#gamerules
gamerule sendCommandFeedback false

#main variables
scoreboard objectives add dan.temp dummy

#health indications variables
scoreboard objectives add hbi.ID dummy
scoreboard objectives add hbi.healthOld dummy
scoreboard objectives add hbi.timer dummy
scoreboard objectives add hbi.health dummy
scoreboard objectives add hbi.healthM dummy
scoreboard objectives add hbi.healthAbsorp dummy
scoreboard objectives add hbi.healthP dummy
scoreboard objectives add hbi.barHeight dummy
scoreboard objectives add hbi.bossbarID dummy

#constants
scoreboard players set #3 dan.data 3
scoreboard players set #100 dan.data 100
scoreboard players set #300 dan.data 300

#bossbars
bossbar add healthindications:bossbar1 {"text":"Boss","color":"white"}
bossbar add healthindications:bossbar2 {"text":"Boss","color":"white"}
bossbar add healthindications:bossbar3 {"text":"Boss","color":"white"}
bossbar add healthindications:bossbar4 {"text":"Boss","color":"white"}

#set installed
scoreboard players set #hbi.installed dan.data 1

#installed message
#tellraw @p [{"text":"\n[❤] ","color":"gray"},{"text":"Health Indications v1.4 Installed","color":"red"}]