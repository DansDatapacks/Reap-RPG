#sync hitbox

#sync tag (to shulker)
execute as @e[type=minecraft:shulker,tag=dan.buildhitbox] if score @s dan.reap.ID = @a[tag=dan.syncID,limit=1] dan.reap.ID run tag @s add dan.syncID
#summon hitbox (if there is no shulker with the sync tag)
execute unless entity @e[type=minecraft:shulker,tag=dan.buildhitbox,tag=dan.syncID] run function dan.reap:build_handling/build_mode/init_hitbox
#reset hitbox timer (to prevent it from being despawned. if the player stops looking at a block it'll delete the shulker)
scoreboard players set @e[type=minecraft:shulker,tag=dan.buildhitbox,tag=dan.syncID] dan.timer 1
#tp hitbox (tps the shulker to the new look position)
execute as @e[type=minecraft:shulker,tag=dan.buildhitbox,tag=dan.syncID] run tp @s ~ ~ ~