playsound minecraft:block.comparator.click player @a[tag=sound] ~ ~ ~ 0.8

scoreboard players add @p explType 1

execute if score @p explType matches 3 run scoreboard players set @p explType 1

execute if score @p explType matches 1 run data merge block 119 112 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function fort:blaze/blaze_options_expl"}}',Text2:'{"text":"Blaze-","bold":true,"underlined":true,"color":"#FF6D17"}',Text3:'{"text":"Bed","bold":true,"color":"#F1F1F1"}'}
execute if score @p explType matches 2 run data merge block 119 112 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function fort:blaze/blaze_options_expl"}}',Text2:'{"text":"Blaze-","bold":true,"underlined":true,"color":"#FF6D17"}',Text3:'{"text":"TNT","bold":true,"color":"#DD060A"}'}
