# sets HB ID

#increase ID global variable
scoreboard players add #next_hbi_ID hbi.ID 1

#set ID to next ID
scoreboard players operation @s hbi.ID = #next_hbi_ID hbi.ID

#set to next ID
scoreboard players add #next_hbi_ID hbi.ID 1