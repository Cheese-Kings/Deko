###############################
#                             #
#    Create Arena Function    #
#      Creates the Arena      #
#                             #
###############################

# Summon center
summon minecraft:armor_stand ~ ~ ~ {Tags: ["deko.battle.arena.center", "global.ignore", "global.ignore.pos"]}
setblock ~ ~-1 ~ minecraft:gold_block

# Increase currentMax
scoreboard players add currentMax arenaID 1

# Summon player zones
summon minecraft:armor_stand ~3 ~ ~ {Tags: ["deko.battle.arena.player_zone1", "global.ignore", "global.ignore.pos"]}
setblock ~3 ~ ~ minecraft:stone_pressure_plate
scoreboard players add @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud,tag=deko.battle.arena.player_zone1] arenaID 0
scoreboard players operation @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud,tag=deko.battle.arena.player_zone1] arenaID += currentMax arenaID
summon minecraft:armor_stand ~-3 ~ ~ {Tags: ["deko.battle.arena.player_zone2", "global.ignore", "global.ignore.pos"]}
setblock ~-3 ~ ~ minecraft:stone_pressure_plate
scoreboard players add @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud,tag=deko.battle.arena.player_zone2] arenaID 0
scoreboard players operation @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud,tag=deko.battle.arena.player_zone2] arenaID += currentMax arenaID