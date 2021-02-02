# If first arena NOT placed
execute if score first_arena_placed Debug matches 0 run function mc_deck:battle_system/create_arena
execute if score first_arena_placed Debug matches 0 run scoreboard players set first_arena_placed Debug 1

# If first arena placed
execute if score first_arena_placed Debug matches 1.. run execute if entity @e[tag=mc_deck.arena_center,distance=40..] run function mc_deck:battle_system/create_arena