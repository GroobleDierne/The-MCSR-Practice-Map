execute if score index gui matches 0..13 run function practice:gui/pages/settings/list_menu

execute if score index gui matches 0 run scoreboard players operation location settings = value gui
execute if score index gui matches 1 run scoreboard players operation direction settings = value gui
execute if score index gui matches 2 run scoreboard players operation damage settings = value gui
execute if score index gui matches 3 run scoreboard players operation saturation settings = value gui
execute if score index gui matches 4 run scoreboard players operation spawn settings = value gui
execute if score index gui matches 5 run scoreboard players operation knockback settings = value gui
execute if score index gui matches 6 run scoreboard players operation timer settings = value gui
execute if score index gui matches 7 run scoreboard players operation rotation settings = value gui
execute if score index gui matches 7 run scoreboard objectives setdisplay sidebar
execute if score index gui matches 7 if score rotation settings matches 3 run scoreboard objectives setdisplay sidebar custom_rotation
execute if score index gui matches 8 run scoreboard players operation randomize settings = value gui
execute if score index gui matches 9 run scoreboard players operation iframe settings = value gui
execute if score index gui matches 10 run scoreboard players operation show_nodes settings = value gui
execute if score index gui matches 11 run scoreboard players operation pearl_tracker settings = value gui
execute if score index gui matches 12 run scoreboard players operation fireres settings = value gui
execute if score index gui matches 13 run scoreboard players operation disable_dragon settings = value gui