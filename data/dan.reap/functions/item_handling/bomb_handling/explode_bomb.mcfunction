# explode bomb

#uncommon
execute at @s[tag=dan.nbt_bomb_tnt,tag=dan.uncommon] run summon creeper ~ ~ ~ {CustomNameVisible:0b,Silent:1b,ExplosionRadius:2b,ignited:1b,Fuse:0s,Tags:["global.ignore"]}
execute at @s[tag=dan.nbt_bomb_tnt,tag=dan.uncommon] run scoreboard players operation #DealDamage dan.temp = #8 dan.data

#rare
execute at @s[tag=dan.nbt_bomb_tnt,tag=dan.rare] run summon creeper ~ ~ ~ {CustomNameVisible:0b,Silent:1b,ExplosionRadius:3b,ignited:1b,Fuse:0s,Tags:["global.ignore"]}
execute at @s[tag=dan.nbt_bomb_tnt,tag=dan.rare] run scoreboard players operation #DealDamage dan.temp = #50 dan.data

#fabled
execute at @s[tag=dan.nbt_bomb_tnt,tag=dan.fabled] run summon creeper ~ ~ ~ {CustomNameVisible:0b,Silent:1b,ExplosionRadius:4b,ignited:1b,Fuse:0s,Tags:["global.ignore"]}
execute at @s[tag=dan.nbt_bomb_tnt,tag=dan.fabled] run scoreboard players operation #DealDamage dan.temp = #120 dan.data

#mythical
execute at @s[tag=dan.nbt_bomb_tnt,tag=dan.mythical] run summon creeper ~ ~ ~ {CustomNameVisible:0b,Silent:1b,ExplosionRadius:5b,ignited:1b,Fuse:0s,Tags:["global.ignore"]}
execute at @s[tag=dan.nbt_bomb_tnt,tag=dan.mythical] run scoreboard players operation #DealDamage dan.temp = #450 dan.data

#remove bomb
kill @s

#deal damage to surrounding entities
execute at @s[tag=dan.nbt_bomb_tnt] as @e[tag=!global.ignore,distance=..3] run function dan.reap:utility/damage