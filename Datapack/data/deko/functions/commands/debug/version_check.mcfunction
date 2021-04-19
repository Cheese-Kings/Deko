###############################################
#                                             #
#            Version Check Function           #
# Shows the player the current version number #
#                                             #
###############################################

tellraw @s ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" Deko","color":"blue"},{"text":" Current Version:","color":"green"},{"text":" "},{"score":{"name":"major","objective":"Version"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"minor","objective":"Version"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"patch","objective":"Version"},"color":"light_purple"}]