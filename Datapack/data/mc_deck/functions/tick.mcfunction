# Day Counter [Currently Useless]
execute store result score day_count Debug run time query day

# Display Card Health
bossbar set card_health players @a
execute as @a[tag=!inBattle] run bossbar set card_health visible false
execute as @a[tag=inBattle] run bossbar set card_health visible true
scoreboard players add @a player_card_hp 0

# Stop Souls/Hp from going above max
execute as @a if score @s player_card_hp matches 151.. run scoreboard players set @s player_card_hp 150

# Carrot people
scoreboard players add @a click_carrot 0

# Did you just right click that?
execute at @a[scores={click_carrot=1..}] run function #mc_deck:detect_card
execute at @a[scores={click_carrot=1..}] run scoreboard players set @p click_carrot 0