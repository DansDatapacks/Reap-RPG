# run hitbox

##raycasting
#settings - detects blocks (ignores entites) (default reach etc.)
scoreboard players set cast_type rc_lib.setting 1
#begin raycast
function rc_lib:cast

##block detected
#add sync tag
tag @s add dan.syncID
#sync hitbox
execute if score hit_type rc_lib.return matches 1 positioned as @e[tag=rc_lib.locate,limit=1] align xyz positioned ~0.5 ~ ~0.5 run function dan.reap:build_handling/build_mode/sync_hitbox
#remove sync tag
tag @s[tag=dan.syncID] remove dan.syncID
tag @e[type=minecraft:shulker,tag=dan.buildhitbox,tag=dan.syncID] remove dan.syncID
 
#reset entity tags/remove area_effect_cloud entities
kill @e[tag=rc_lib.locate]
tag @e remove rc_lib.entity