#########################################
#                                       #
#     Check If Arena Valid Function     #
# Checks if the arena location is valid #
#                                       #
#########################################



#########################################################################
# If first arena NOT placed
#execute if score first_arena_placed Debug matches 0 run function deko:battle_system/create_arena
#execute if score first_arena_placed Debug matches 0 run scoreboard players set first_arena_placed Debug 1

# If first arena placed
#execute if score first_arena_placed Debug matches 1.. run execute unless entity @e[tag=deko.battle.arena.center,distance=..40] run function deko:battle_system/create_arena