#RAYCAST FUNCTION TEMPLATE
############################################################################################
#RAYCAST SETTINGS
############################################################################################
#Change rc_lib.setting scores to set options for the raycast.
#Note 1: All options are reset after a raycast is done, so you have to set them again before for the next cast. This prevents potential conflict with multiple datapacks using this library.
#Note 2: Not all scores have to be set. If unset the option will default to value listed in the description.


#'cast_type' determines what the raycasting system takes into acount
#If set to 0: detects block and entities (only detects entities closer than first hit block)
#If set to 1: only detects blocks and ignores entities
#If set to 2: only detects entities and ignores blocks (all blocks behave like air)
#If any other number or unset defaults to 0

scoreboard players set cast_type rc_lib.setting 0


#'d_max' determines the maximum distance in which to detect blocks and entities in 1/100 blocks (for example setting d_max to 1425 sets maximum distance to 14.25 blocks).
#If negative or unset defaults to 500 (5.0 blocks is the default player reach)
#Capped at 50000 (500 blocks)
#Note: Higher values use more server resources (cause lag). For general uses it is recommended to keep this value under 2500 (25.0 blocks).

scoreboard players set d_max rc_lib.setting 500


#'nc' determines how to handle blocks with no collision (blocks such as tall grass, tripwire, crops etc.):
#0: can hit blocks with no collision (they behave like solid blocks)
#1: passes trough blocks with no collision (they behave like air)
#If any other number or unset defaults to 0

scoreboard players set nc rc_lib.setting 0


#'liquid' determines how to handle liquid blocks (water, lava):
#0: passes trough liquid (water/lava behaves like air)
#1: can hit liquid (water/lava behave like full solid blocks)
#If any other number or unset defaults to 0

scoreboard players set liquid rc_lib.setting 0


#'first' determines how to handle the block the cast starts in (if you are "inside a block"):
#0: ignores the first block (behaves like air)
#1: the first block is taken into account
#If any other number or unset defaults to 1
#Note 1: For most uses 'first' should be set to 1. You usually want to set it to 0 if you know the cast will start inside a block.
#Note 2: The main application for 'first' score 0 is to customize which blocks a ray passes trough, as used in the 'Laser' example datapack.

scoreboard players set first rc_lib.setting 1


#'entity_types' determines which entities to take into account:
#0: can hit all entities
#1: can hits entities with a collision box (all mobs, minecarts, boats, armor stands etc.)
#2: can only hit mobs
#If any other number or unset defaults to 0

scoreboard players set entity_types rc_lib.setting 0


#'entity_max' determines the maximum number of entities to be detected (be given 'rc_lib.entity' tag):
#n: limited to n nearest entities
#If negative or 0 there is no limit
#Defaults to 1
#Note: You usually want to use values higher than 1 to create a piercing effect. Setting it to 0 creates "infinite piercing".

scoreboard players set entity_max rc_lib.setting 1


#'player' determines whether to take players into account:
#0: ignores players
#1: can hit players
#If any other number or unset defaults to 0.

scoreboard players set player rc_lib.setting 0


#'d_return_scale' sets the number to multiply origin-marker distance with:
#Capped at 10000
#If unset defaults to 100
#Note: For more detailed information read 'Returned Values.txt'.

scoreboard players set d_return_scale rc_lib.setting 100



#EXECUTING THE RAYCAST
############################################################################################
#Start the raycast:
function rc_lib:cast


#The function to be executed at the marker entity position (where the ray collides with a block or entity):

execute at @e[tag=rc_lib.locate] run function your_function


#The function executed by entities detected by the cast:

execute as @e[tag=rc_lib.entity] at @s run function your_function

#Your functions below




#RESETING
############################################################################################
#These last two commands reset entity tags and remove area_effect_cloud entities.
#Note: Although both will be reset the next time a raycast is executed, it is still a good idea to keep them for edge cases (e.g. if an entity with that tag exists in an unloaded chunk and that chunk gets loaded in the middle of a raycast).
kill @e[tag=rc_lib.locate]
tag @e remove rc_lib.entity