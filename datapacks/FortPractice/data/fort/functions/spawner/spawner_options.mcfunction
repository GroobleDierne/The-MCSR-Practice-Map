playsound minecraft:block.comparator.click player @a[tag=sound] ~ ~ ~ 0.8

scoreboard players add @p spawnerType 1

execute if score @p spawnerType matches 3 run scoreboard players set @p spawnerType 1

execute if score @p spawnerType matches 1 run data merge block 119 112 5 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function fort:spawner/spawner_options"}}',Text2:'{"text":"Spawner Type","bold":true,"underlined":true,"color":"#f3fa59"}',Text3:'{"text":"Open","bold":true,"color":"#FFFFFF"}'}
execute if score @p spawnerType matches 2 run data merge block 119 112 5 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function fort:spawner/spawner_options"}}',Text2:'{"text":"Spawner Type","bold":true,"underlined":true,"color":"#f3fa59"}',Text3:'{"text":"Closed","bold":true,"color":"#CCCCCC"}'}
