# runs once on first reload

#gamerules
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule logAdminCommands false

#scores
scoreboard objectives add dan.ID dummy
scoreboard objectives add dan.temp dummy
scoreboard objectives add dan.timer dummy
scoreboard objectives add dan.day dummy
scoreboard objectives add dan.died deathCount
scoreboard objectives add dan.respawn deathCount
scoreboard objectives add dan.leftGame minecraft.custom:minecraft.leave_game
scoreboard objectives add dan.lastSlot dummy

#constants
scoreboard players set #1 dan.data 1
scoreboard players set #2 dan.data 2
scoreboard players set #3 dan.data 3
scoreboard players set #4 dan.data 4
scoreboard players set #5 dan.data 5
scoreboard players set #6 dan.data 6
scoreboard players set #7 dan.data 7
scoreboard players set #8 dan.data 8
scoreboard players set #9 dan.data 9
scoreboard players set #10 dan.data 10
scoreboard players set #12 dan.data 12
scoreboard players set #15 dan.data 15
scoreboard players set #16 dan.data 16
scoreboard players set #20 dan.data 20
scoreboard players set #24 dan.data 24
scoreboard players set #30 dan.data 30
scoreboard players set #32 dan.data 32
scoreboard players set #38 dan.data 38
scoreboard players set #40 dan.data 40
scoreboard players set #50 dan.data 50
scoreboard players set #60 dan.data 60
scoreboard players set #64 dan.data 64
scoreboard players set #100 dan.data 100
scoreboard players set #120 dan.data 120
scoreboard players set #150 dan.data 150
scoreboard players set #160 dan.data 160
scoreboard players set #450 dan.data 450
scoreboard players set #10000 dan.data 10000

#main version priority
scoreboard players set #dan.main load 1