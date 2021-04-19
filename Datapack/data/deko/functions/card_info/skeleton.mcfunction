##########################################
#                                        #
#        Skeleton Info Function          #
# Displays Stats about the Skeleton card #
#                                        #
##########################################

tellraw @p ["",{"text":"\n"},{"text":"~~~~~~~~","color":"aqua"},{"text":" Skeleton","color":"green"},{"text":" Card","color":"dark_aqua"},{"text":" ~~~~~~~~","color":"aqua"},{"text":"\n"},{"text":"Health: ","color":"red"},{"score":{"name":"skeleton","objective":"cardHealth"},"color":"red"},{"text":"\n"},{"text":"Attack: ","color":"gold"},{"score":{"name":"skeleton","objective":"cardAttack"},"color":"gold"},{"text":"\n"},{"text":"Defence: ","color":"yellow"},{"score":{"name":"skeleton","objective":"cardDefence"},"color":"yellow"},{"text":"\n\n"},{"text":"ID: ","color":"light_purple"},{"score":{"name":"skeleton","objective":"cardID"},"color":"light_purple"},{"text":"\n"},{"text":"COMMON","bold":true,"color":"grey"},{"text":"\n"},{"text":"~~~~~~~~~~~~~~~~~~~~~~~~","color":"aqua"},{"text":"\n "}]