# init hitbox

#summon hitbox
summon minecraft:shulker ~ ~ ~ {Tags:["dan.buildhitbox","dan.syncID","global.ignore"],CustomName:"\"Build-mode Hitbox\"",Invulnerable:1b,ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:0b}],Silent:1b,NoAI:1b,Glowing:1b,Team:"dan.hitbox",Color:15b}

#set hitbox ID
scoreboard players operation @e[type=minecraft:shulker,distance=..0.5,tag=dan.buildhitbox,limit=1] dan.reap.ID = @s dan.reap.ID

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Build Mode Hitbox Initialized","color":"gray"}]