# NOTE: insert code for detecting when the repair hammer is placed on a damaged anvil

execute as @e[tag=repair_hammer] if block ~ ~-1 ~ minecraft:anvil run setblock ~ ~-1 ~ minecraft:command_block