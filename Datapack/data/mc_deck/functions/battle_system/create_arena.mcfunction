#########################
#                       #
# Create Arena Function #
#   Creates the Arena   #
#                       #
#########################

# Summon center
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mc_deck.battle.arena.center", "global.ignore", "global.ignore.pos"]}
setblock ~ ~-1 ~ minecraft:gold_block

# Increase currentMax
scoreboard players add currentMax arenaID 1

# Summon player zones
summon minecraft:area_effect_cloud ~3 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mc_deck.battle.arena.player_zone1", "global.ignore", "global.ignore.pos"]}
setblock ~3 ~ ~ minecraft:stone_pressure_plate
scoreboard players add @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud,tag=mc_deck.battle.arena.player_zone1] arenaID 0
scoreboard players operation @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud,tag=mc_deck.battle.arena.player_zone1] arenaID += currentMax arenaID
summon minecraft:area_effect_cloud ~-3 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mc_deck.battle.arena.player_zone2", "global.ignore", "global.ignore.pos"]}
setblock ~-3 ~ ~ minecraft:stone_pressure_plate
scoreboard players add @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud,tag=mc_deck.battle.arena.player_zone2] arenaID 0
scoreboard players operation @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud,tag=mc_deck.battle.arena.player_zone2] arenaID += currentMax arenaID