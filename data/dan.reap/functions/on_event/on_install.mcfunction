# install

##variables
#player stats
scoreboard objectives add dan.reap.ID dummy {"text":"Reap ID","color":"gray"}
scoreboard objectives add dan.useCOAT minecraft.used:minecraft.carrot_on_a_stick {"text":"Use Carrot On A Stick","color":"gray"}
scoreboard objectives add dan.dropped minecraft.custom:minecraft.drop {"text":"Player Dropped Item","color":"gray"}
scoreboard objectives add dan.usePot minecraft.used:minecraft.potion {"text":"Player Used Potion","color":"gray"}
scoreboard objectives add dan.foodlevel food {"text":"Food Level","color":"gray"}
scoreboard objectives add dan.eatcake minecraft.custom:minecraft.eat_cake_slice {"text":"Cake Slices Eaten","color":"gray"}
scoreboard objectives add dan.breathlevel air {"text":"Breath Level","color":"gray"}
scoreboard objectives add dan.level level {"text":"Lvl","color":"gray"}
scoreboard objectives add dan.mana dummy {"text":"Mana","color":"gray"}
scoreboard objectives add dan.manaP dummy {"text":"Mana Ratio","color":"gray"}
scoreboard objectives add dan.manaM dummy {"text":"Max Mana","color":"gray"}
scoreboard objectives add dan.stamina dummy {"text":"Stamina","color":"gray"}
scoreboard objectives add dan.staminaP dummy {"text":"Stamina Ratio","color":"gray"}
scoreboard objectives add dan.staminaM dummy {"text":"Max Stamina","color":"gray"}
scoreboard objectives add dan.staminaC dummy {"text":"Stamina Cooldown","color":"gray"}
scoreboard objectives add dan.staminaR dummy {"text":"Stamina Regen","color":"gray"}
scoreboard objectives add dan.staminaRM dummy {"text":"Max Stamina Regen","color":"gray"}
#player movement
scoreboard objectives add dan.walk minecraft.custom:minecraft.walk_one_cm {"text":"Walk Distance","color":"gray"}
scoreboard objectives add dan.sprint minecraft.custom:minecraft.sprint_one_cm {"text":"Sprint Distance","color":"gray"}
scoreboard objectives add dan.swim minecraft.custom:minecraft.swim_one_cm {"text":"Swim Distance","color":"gray"}
scoreboard objectives add dan.fall minecraft.custom:minecraft.fall_one_cm {"text":"Fall Distance","color":"gray"}
scoreboard objectives add dan.fly minecraft.custom:minecraft.fly_one_cm {"text":"Fly Distance","color":"gray"}
scoreboard objectives add dan.jump minecraft.custom:minecraft.jump {"text":"Player Jumping","color":"gray"}
scoreboard objectives add dan.sneak minecraft.custom:minecraft.sneak_time {"text":"Player Sneaking","color":"gray"}
scoreboard objectives add dan.attack minecraft.custom:minecraft.damage_dealt {"text":"Player Attacked","color":"gray"}
scoreboard objectives add dan.damaged minecraft.custom:minecraft.damage_taken {"text":"Player Damaged","color":"gray"}
scoreboard objectives add dan.climb dummy {"text":"Player Climbing","color":"gray"}
#general timers
scoreboard objectives add dan.spawnT dummy {"text":"Spawner Timer","color":"gray"}
scoreboard objectives add dan.scanT dummy {"text":"Scan Timer","color":"gray"}
#spells
scoreboard objectives add dan.tomeC dummy {"text":"Tome Use Cooldown","color":"gray"}
scoreboard objectives add dan.tome_SmlT dummy {"text":"Smoldering Tome Timer","color":"gray"}
#effects
scoreboard objectives add dan.tome_effIce dummy {"text":"Ice Effect Timer","color":"gray"}
scoreboard objectives add dan.tome_effPsn dummy {"text":"Poison Effect Timer","color":"gray"}
scoreboard objectives add dan.tome_dmgIce dummy {"text":"Ice Effect Damage","color":"gray"}
scoreboard objectives add dan.tome_dmgPsn dummy {"text":"Poison Effect Damage","color":"gray"}
scoreboard objectives add dan.am_wetTime dummy
#rarity level
scoreboard objectives add dan.areaLvl dummy {"text":"Area Lvl","color":"gray"}
scoreboard objectives add dan.rarity dummy {"text":"Rarity","color":"gray"}
#sync mob
scoreboard objectives add dan.mobID dummy {"text":"Mob Type ID","color":"gray"}
scoreboard objectives add dan.syncID dummy {"text":"Sync ID","color":"gray"}
#custom mob stats
scoreboard objectives add dan.potCnt dummy {"text":"Potion Count (Cleric Villagers)","color":"gray"}
scoreboard objectives add dan.Name dummy {"text":"Mob Name","color":"gray"}
scoreboard objectives add dan.Title dummy {"text":"Mob Secondary Name","color":"gray"}
scoreboard objectives add dan.damage dummy {"text":"Heal/Deal Damage Amount","color":"gray"}
scoreboard objectives add dan.mobRot dummy {"text":"Mob Rotation","color":"gray"}
#custom mob animation
scoreboard objectives add dan.animTimer dummy {"text":"Animation Timer","color":"gray"}
scoreboard objectives add dan.animSpeed dummy {"text":"Animation Speed","color":"gray"}
scoreboard objectives add dan.animFrame dummy {"text":"Animation Frame","color":"gray"}
#backpack
scoreboard objectives add dan.bkpslot dummy {"text":"Backpack Slot","color":"gray"}
#landmarks
scoreboard objectives add dan.structID dummy {"text":"Structure ID","color":"gray"}

#display stats
#scoreboard objectives setdisplay belowName dan.health
scoreboard objectives setdisplay list dan.level

#teams
team add dan.common {"text":"Common","color":"gray"}
team modify dan.common color gray
team add dan.uncomm {"text":"Uncommon","color":"green"}
team modify dan.uncomm color green
team add dan.rare {"text":"Rare","color":"blue"}
team modify dan.rare color blue
team add dan.fabled {"text":"Fabled","color":"red"}
team modify dan.fabled color red
team add dan.mythic {"text":"Mythical","color":"dark_red"}
team modify dan.mythic color dark_red
team add dan.invul {"text":"Invulnerable","color":"white"}
team modify dan.invul color white
team add dan.hitbox {"text":"Hitbox","color":"black"}
team modify dan.hitbox color black
team modify dan.hitbox collisionRule never
team modify dan.hitbox nametagVisibility never
team add dan.invalid {"text":"Invalid","color":"red"}
team modify dan.invalid color red
team add dan.noCol {"text":"No Collision","color":"gray"}
team modify dan.noCol collisionRule never

#init IDs
#execute unless score #nextStructID dan.structID matches 1.. run scoreboard players set #nextStructID dan.structID 1

#kill all current hostiles
tp @e[type=#dan.reap:hostile,tag=!global.ignore] ~ ~-500 ~

#reload to take effects
reload