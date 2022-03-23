# ender ring

#particle at where they were
particle minecraft:portal ~ ~1 ~ 0.2 0.4 0.2 0.2 50

#teleport player
tp @s ^ ^ ^10

#sound + particle at where they are now
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5
particle minecraft:portal ~ ~1 ~ 0.2 0.4 0.2 0.2 50