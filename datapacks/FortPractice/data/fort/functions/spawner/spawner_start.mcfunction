difficulty easy
scoreboard players set @p inFort 1
scoreboard players set @p fortType 0

clear @p
kill @e[type=item]
kill @e[type=blaze]
kill @e[type=tnt]

fill 100 87 35 136 119 11 minecraft:air replace minecraft:dark_oak_wall_sign
fill 100 87 35 136 119 11 minecraft:air replace minecraft:netherrack
setblock 106 99 19 minecraft:structure_block

execute if score @p spawnerType matches 1 run data merge block 106 99 19 {mode:"LOAD", name:"minecraft:spawner_open", posX:0, posY:-11, posZ:-3, rotation:"NONE", mirror:"NONE", integrity:1.0f, seed:0L}
execute if score @p spawnerType matches 2 run data merge block 106 99 19 {mode:"LOAD", name:"minecraft:spawner_closed", posX:-2, posY:1, posZ:-5, rotation:"NONE", mirror:"NONE", integrity:1.0f, seed:0L}

setblock 122 107 6 minecraft:redstone_block
setblock 116 107 4 minecraft:redstone_block
setblock 106 100 19 minecraft:redstone_block
setblock 106 100 19 minecraft:air
setblock 106 99 19 minecraft:air

setblock 106 99 19 minecraft:air
setblock 125 107 23 air
setblock 125 107 23 minecraft:spawner{SpawnData:{id:"minecraft:blaze"}}

fill 100 119 35 136 85 11 minecraft:gray_concrete outline
fill 101 118 34 135 86 12 air replace minecraft:gray_concrete

function practice:spawner/spawner_c_clear

loot replace entity @p hotbar.0 10 mine 120 113 6 minecraft:air{drop_contents:1b}

function practice:spawner/spawner_c_reset

loot give @p loot fort:blocks/random_give_items1
loot give @p loot fort:blocks/random_give_items2

effect give @a minecraft:instant_health 10 10 true
effect give @a minecraft:saturation 1 1

effect give @p minecraft:fire_resistance 100 0

replaceitem entity @a container.18 barrier{display:{Name:'["",{"text":"χ Reset χ","italic":false,"bold":true,"color":"#ff0000"}]'}}

kill @e[type=item]
gamemode survival @p
tp @p 111 104 23 -90 0
playsound minecraft:block.note_block.harp player @a[tag=sound] ~ ~ ~ 100 0.7

scoreboard players set timer timer 0
scoreboard players set timer settings 1
 