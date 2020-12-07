# Run config ticks
execute if score anvil_repairing config matches 1.. run function mc_deck:anvil_repairing

# Recieve Daily Gift
execute store result score time Debug run time query daytime
execute if score time Debug matches 1000 run function mc_deck:daily_gift

# Convert Daily Gift to Rubys
scoreboard players add @a daily_rubies 0
execute as @a if score @s daily_rubies matches 1.. run function debug:give_item/ruby
execute as @a if score @s daily_rubies matches 1.. run scoreboard players remove @s daily_rubies 1

# Day Counter [Currently Useless]
execute store result score day_count Debug run time query day

# Display Synergy
bossbar set souls players @a
execute as @a[tag=!inBattle] run bossbar set souls visible false
execute as @a[tag=inBattle] run bossbar set souls visible true
scoreboard players add @a player_souls 0

# Display Card Health
bossbar set card_health players @a
execute as @a[tag=!inBattle] run bossbar set card_health visible false
execute as @a[tag=inBattle] run bossbar set card_health visible true
scoreboard players add @a player_card_hp 0

# Stop Souls/Hp from going above max
execute as @a if score @s player_card_hp matches 151.. run scoreboard players set @s player_card_hp 150
execute as @a if score @s player_souls matches 151.. run scoreboard players set @s player_souls 150

# Set Home
execute as @a[scores={sethome=1..}] run function mc_deck:sethome/add_players

# Repair hammer scores
scoreboard players add @e[tag=repair_hammer] anvil_delay 100