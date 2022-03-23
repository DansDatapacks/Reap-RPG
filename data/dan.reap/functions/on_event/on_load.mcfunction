# on every load/reload

#ensure gamerules are set every reload
gamerule keepInventory true
gamerule mobGriefing false
gamerule doFireTick false
gamerule doLimitedCrafting false
gamerule doMobSpawning false
gamerule disableRaids true
gamerule doTraderSpawning false
gamerule doInsomnia false
gamerule doPatrolSpawning false

#count reloads
scoreboard players add #ReapReloadCount dan.data 1

##on first reload:
#install Reap RPG
execute if score #ReapReloadCount dan.data matches 1 run function dan.reap:on_event/on_install

#debug message on reload
execute as @a[tag=dan.dataMessagesEnabled] run function dan.main:message/debug_reap_reload

#start loop
function dan.reap:loop/per_5_ticks
function dan.reap:loop/per_20_ticks