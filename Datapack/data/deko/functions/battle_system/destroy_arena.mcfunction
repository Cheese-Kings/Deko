#####################################
#                                   #
#       Destroy Arena Function      #
# Deletes incorrectly placed Arenas #
#                                   #
#####################################

# Delete Arena Blocks
execute at @e[tag=deko.battle.arena.center,tag=deko.battle.arena.events.incorrectly_placed] run setblock ~ ~-1 ~ minecraft:air
execute at @e[tag=deko.battle.arena.center,tag=deko.battle.arena.events.incorrectly_placed] run setblock ~3 ~ ~ minecraft:air
execute at @e[tag=deko.battle.arena.center,tag=deko.battle.arena.events.incorrectly_placed] run setblock ~-3 ~ ~ minecraft:air

# kill Arena Entities
execute at @e[tag=deko.battle.arena.center,tag=deko.battle.arena.events.incorrectly_placed] run tag @e[distance=..4,tag=deko.battle.arena.player_zone1] add deko.battle.arena.events.incorrectly_placed
execute at @e[tag=deko.battle.arena.center,tag=deko.battle.arena.events.incorrectly_placed] run tag @e[distance=..4,tag=deko.battle.arena.player_zone2] add deko.battle.arena.events.incorrectly_placed
execute as @e[tag=deko.battle.arena.player_zone1,tag=deko.battle.arena.events.incorrectly_placed] run kill @s
execute as @e[tag=deko.battle.arena.player_zone2,tag=deko.battle.arena.events.incorrectly_placed] run kill @s
execute as @e[tag=deko.battle.arena.center,tag=deko.battle.arena.events.incorrectly_placed] run kill @s