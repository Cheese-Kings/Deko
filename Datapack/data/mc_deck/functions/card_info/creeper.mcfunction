#########################################
#                                       #
#        Creeper Info Function          #
# Displays Stats about the Creeper card #
#                                       #
#########################################

tellraw @p ["",{"text":"\n"},{"text":"~~~~~~~~","color":"aqua"},{"text":" Creeper","color":"green"},{"text":" Card","color":"dark_aqua"},{"text":" ~~~~~~~~","color":"aqua"},{"text":"\n"},{"text":"Health: ","color":"red"},{"score":{"name":"creeper","objective":"cardHealth"},"color":"red"},{"text":"\n"},{"text":"Attack: ","color":"gold"},{"score":{"name":"creeper","objective":"cardAttack"},"color":"gold"},{"text":"\n"},{"text":"Defence: ","color":"yellow"},{"score":{"name":"creeper","objective":"cardDefence"},"color":"yellow"},{"text":"\n\n"},{"text":"ID: ","color":"light_purple"},{"score":{"name":"creeper","objective":"cardID"},"color":"light_purple"},{"text":"\n"},{"text":"COMMON","bold":true,"color":"grey"},{"text":"\n"},{"text":"~~~~~~~~~~~~~~~~~~~~~~~~","color":"aqua"},{"text":"\n "}]