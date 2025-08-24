setblock 0 0 0 white_shulker_box

# randomizer
scoreboard players operation randomize_act settings = randomize settings
execute if score editing_loadout flags matches 1 run scoreboard players set randomize_act settings 2
execute if score randomize_act settings matches 0..1 run function practice:inventory/randomizer/randomize

# load hotbar
data modify block 0 0 0 Items set from storage zero_practice_loadouts:loadouts selected.hotbar
loot replace entity @s hotbar.0 9 mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

# load inventory
execute if score randomize_act settings matches 2 run data modify block 0 0 0 Items set from storage zero_practice_loadouts:loadouts selected.inventory
execute if score randomize_act settings matches 0..1 run data modify block 0 0 0 Items set from storage zero_practice_loadouts:loadouts randomizer.inventory
loot replace entity @s inventory.0 27 mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

# load offhand
data modify block 0 0 0 Items set from storage zero_practice_loadouts:loadouts selected.offhand
loot replace entity @s weapon.offhand mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

#load armor
data modify block 0 0 0 Items set from storage zero_practice_loadouts:loadouts selected.armor
loot replace entity @s armor.feet 4 mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

setblock 0 0 0 air