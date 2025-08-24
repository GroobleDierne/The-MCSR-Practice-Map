scoreboard players set @p inFort 0

execute in minecraft:the_nether run setblock 122 107 6 air
execute in minecraft:the_nether run setblock 122 107 8 air

clear @p
effect clear @p
kill @e[type=item]
kill @e[type=blaze]
gamemode adventure @p

fill 116 107 8 116 108 4 air

tp @p 115 111 5 -90 0

effect give @a minecraft:instant_health 10 10 true
effect give @a minecraft:saturation 1 1

scoreboard players set timer timer 0
scoreboard players set timer settings 0
title @a actionbar ""

 