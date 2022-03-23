# offhand potion consume

#mana potion
execute if predicate dan.reap:potion/offhand/holding_mana_potion store result score #ManaRegen dan.temp run data get entity @s Inventory[{Slot:-106b}].tag.mana_regen

#health potion
execute if predicate dan.reap:potion/offhand/holding_health_potion store result score #HealthRegen dan.temp run data get entity @s Inventory[{Slot:-106b}].tag.health_regen