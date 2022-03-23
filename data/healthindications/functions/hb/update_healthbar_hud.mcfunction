# updates healthbar HUD

#set CustomName
data merge entity @s[scores={hbi.healthP=0..9}] {CustomName:'[{"text":"|","color":"dark_red"},{"text":"|||||||||||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=10..14}] {CustomName:'[{"text":"||","color":"red"},{"text":"||||||||||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=15..19}] {CustomName:'[{"text":"|||","color":"red"},{"text":"|||||||||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=20..24}] {CustomName:'[{"text":"||||","color":"gold"},{"text":"||||||||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=25..29}] {CustomName:'[{"text":"|||||","color":"yellow"},{"text":"|||||||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=30..34}] {CustomName:'[{"text":"||||||","color":"yellow"},{"text":"||||||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=35..39}] {CustomName:'[{"text":"|||||||","color":"yellow"},{"text":"|||||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=40..44}] {CustomName:'[{"text":"||||||||","color":"yellow"},{"text":"||||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=45..49}] {CustomName:'[{"text":"|||||||||","color":"yellow"},{"text":"|||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=50..54}] {CustomName:'[{"text":"||||||||||","color":"yellow"},{"text":"||||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=55..59}] {CustomName:'[{"text":"|||||||||||","color":"green"},{"text":"|||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=60..64}] {CustomName:'[{"text":"||||||||||||","color":"green"},{"text":"||||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=65..69}] {CustomName:'[{"text":"|||||||||||||","color":"green"},{"text":"|||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=70..74}] {CustomName:'[{"text":"||||||||||||||","color":"green"},{"text":"||||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=75..79}] {CustomName:'[{"text":"|||||||||||||||","color":"green"},{"text":"|||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=80..84}] {CustomName:'[{"text":"||||||||||||||||","color":"green"},{"text":"||||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=85..89}] {CustomName:'[{"text":"|||||||||||||||||","color":"green"},{"text":"|||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=90..94}] {CustomName:'[{"text":"|||||||||||||||||","color":"green"},{"text":"||","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=95..99}] {CustomName:'[{"text":"|||||||||||||||||||","color":"green"},{"text":"|","color":"dark_gray"}]'}
data merge entity @s[scores={hbi.healthP=100..}] {CustomName:'[{"text":"||||||||||||||||||||","color":"green"}]'}

#color NBT handle
execute unless data entity @s {Color:1} run data merge entity @s {Color:1}
execute unless data entity @s {Color:2} run data merge entity @s {Color:2}