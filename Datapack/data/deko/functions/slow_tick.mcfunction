###########################################
#                                         #
#           Slow Tick Function            #
#         Runs every game second          #
#                                         #
###########################################

# Kill all arenas in 50 blocks
execute as @e[tag=deko.battle.arena.center] run tag @e[tag=deko.battle.arena.center,distance=..50,distance=1..] add deko.battle.arena.events.incorrectly_placed
function deko:battle_system/destroy_arena

# Loop
schedule clear deko:slow_tick
schedule function deko:slow_tick 1s