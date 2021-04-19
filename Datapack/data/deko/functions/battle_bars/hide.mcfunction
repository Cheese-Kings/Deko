#######################
#                     #
#    Hide Function    #
# Hides the Boss Bars #
#                     #
#######################

tag @s remove deko.battle.in_battle

tellraw @s ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" Hidden","color":"aqua"},{"text":" the Battle Bars","color":"green"}]