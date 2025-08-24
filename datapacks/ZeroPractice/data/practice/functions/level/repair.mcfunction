execute in minecraft:the_end positioned 136 65 0 run kill @e[distance=..10,type=!player]
setblock 136 63 0 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-5,mode:"LOAD",posY:1,sizeX:11,posZ:-5,integrity:1.0f,showair:1b,name:"practice:lobby",sizeY:5,sizeZ:11,showboundingbox:0b}
setblock 136 62 0 minecraft:redstone_block
fill 136 63 0 136 62 0 air

function practice:gui/load
function practice:inventory/select_loadout

execute in the_end run setblock 140 66 0 dark_oak_wall_sign[facing=east]
execute in the_end run setblock 139 66 0 dark_oak_wall_sign[facing=west]{Color:"black",Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute as @p run trigger hub"}}',Text2:'[{"bold":true,"color":"#FFFFA4","text":"Back"},{"color":"#FFFFA4","text":" to "},{"bold":true,"color":"#68F897","text":"Hub"}]'}

tellraw @a {"text":"Lobby Repaired","color":"dark_green"}

scoreboard players reset * repairzero