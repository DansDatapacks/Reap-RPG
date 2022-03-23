# prone

#summons prone block above player (barrier)
execute at @s if block ~ ~1 ~ air run summon armor_stand ~ ~1 ~ {Invulnerable:1,Invisible:1,Marker:1b,NoGravity:1b,Tags:["dan_prone_block"]}
execute at @s if block ~ ~1 ~ air run fill ~ ~1 ~ ~ ~1 ~ barrier replace air