# per tick - ran every tick

#init new landmarks
execute as @e[tag=dan.landmarks,tag=!dan.landmarks_initLM] run function dan.landmarks:init/landmark

##banners
#check valid landmark banner spawn location
execute as @e[tag=dan.landmarks_village_spawner] run function dan.landmarks:banner/check/valid_village_landmark_placement

#check valid landmark banner spawn location
#execute as @e[tag=dan.landmarks_spawner] run function dan.landmarks:banner/check/valid_landmark_placement

##if player near landmark banner, run banner_handler
execute as @e[tag=dan.landmarks_banner] at @s if entity @p[distance=..10] run function dan.landmarks:banner/banner_handler