difficulty easy
scoreboard players set @p inFort 1
scoreboard players set @p fortType 1

clear @p
kill @e[type=item]
kill @e[type=blaze]
kill @e[type=tnt]

fill 100 87 35 136 119 11 minecraft:air replace minecraft:dark_oak_wall_sign
fill 100 87 35 136 119 11 minecraft:air replace minecraft:netherrack
setblock 106 99 19 minecraft:structure_block

execute if score @p spawnerType matches 1 run data merge block 106 99 19 {mode:"LOAD", name:"minecraft:spawner_open", posX:0, posY:-11, posZ:-3, rotation:"NONE", mirror:"NONE", integrity:1.0f, seed:0L}
execute if score @p spawnerType matches 2 run data merge block 106 99 19 {mode:"LOAD", name:"minecraft:spawner_closed", posX:-2, posY:1, posZ:-5, rotation:"NONE", mirror:"NONE", integrity:1.0f, seed:0L}

setblock 122 107 8 minecraft:redstone_block
fill 116 107 6 116 108 6 minecraft:redstone_block
setblock 106 100 19 minecraft:redstone_block
setblock 106 100 19 minecraft:air
setblock 106 99 19 minecraft:air

setblock 125 107 23 air
setblock 125 107 23 minecraft:spawner{SpawnData:{id:""}}

setblock 106 99 19 minecraft:air

fill 100 119 35 136 85 11 minecraft:gray_concrete outline
fill 101 118 34 135 86 12 air replace minecraft:gray_concrete

setblock 117 105 23 minecraft:dark_oak_wall_sign[facing=east]
setblock 116 105 23 minecraft:dark_oak_wall_sign[facing=west]
data merge block 117 105 23 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function fort:spawner/spawner_reset"}}',Text2:'["",{"text":"Back ","bold":true,"color":"#CD8BEF"},{"text":"to","color":"#CD8BEF"},{"text":" Start","bold":true,"color":"#E1F3FF"}]'}

function fort:blaze/blaze_c_clear

execute if score @p explType matches 1 run loot replace entity @p hotbar.0 mine 120 113 4 minecraft:air{drop_contents:1b}
execute if score @p explType matches 2 run loot replace entity @p hotbar.0 mine 120 113 3 minecraft:air{drop_contents:1b}

function fort:blaze/blaze_c_reset

effect give @a minecraft:instant_health 10 10 true
effect give @a minecraft:saturation 1 1
effect give @p fire_resistance 1000 2

kill @e[type=item]
gamemode survival @p
execute in minecraft:the_nether run tp @p 118 104 23 -90 0

replaceitem entity @a container.18 barrier{display:{Name:'["",{"text":"χ Reset χ","italic":false,"bold":true,"color":"#ff0000"}]'}}

playsound minecraft:block.note_block.harp player @a[tag=sound] ~ ~ ~ 100 0.7

scoreboard players set timer timer 0
scoreboard players set timer settings 1
 