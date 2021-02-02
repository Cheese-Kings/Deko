# Summon center
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mc_deck.arena_center", "global.ignore", "global.ignore.pos"]}

# Increase currentMax
scoreboard players add currentMax arenaID 1

# Summon player zones
summon minecraft:area_effect_cloud ~3 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mc_deck.player_zone1", "global.ignore", "global.ignore.pos"]}
scoreboard players add @e[sort=nearest,type=minecraft:area_effect_cloud,tag=mc_deck.player_zone1] arenaID 0
scoreboard players operation @e[sort=nearest,type=minecraft:area_effect_cloud,tag=mc_deck.player_zone1] arenaID += currentMax arenaID
summon minecraft:area_effect_cloud ~3 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mc_deck.player_zone2", "global.ignore", "global.ignore.pos"]}
scoreboard players add @e[sort=nearest,type=minecraft:area_effect_cloud,tag=mc_deck.player_zone2] arenaID 0
scoreboard players operation @e[sort=nearest,type=minecraft:area_effect_cloud,tag=mc_deck.player_zone2] arenaID += currentMax arenaID