# look detect - detects where the player is looking to check if they should climb or not.

#lookUp
tag @a[x_rotation=-90..0] add dan.lookUp
tag @a[x_rotation=0..90] remove dan.lookUp

#lookDown
tag @a[x_rotation=20..] add dan.lookDown
tag @a[x_rotation=-90..20] remove dan.lookDown