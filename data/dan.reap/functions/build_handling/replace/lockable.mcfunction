# replaces containers like chests with Loot Chest Spawners

#lock block
data modify block ~ ~ ~ Lock set value dan.key

#debug message
tellraw @a[tag=dan.dataMessagesEnabled] [{"text":"[Debug] Locked Block","color":"gray"}]