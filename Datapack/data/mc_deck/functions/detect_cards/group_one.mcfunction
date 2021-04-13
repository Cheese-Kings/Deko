##########################################################
#                                                        #
#                  Detect Cards Function                 #
# Detects if you right click a card and shows it's stats #
#                                                        #
#  Group 1:                                              #
#  Cards 1-15                                            #
#                                                        #
##########################################################

# (1) Creeper
execute at @a if data entity @p SelectedItem.tag.mcDeck_card_creeper run function mc_deck:card_info/creeper

# (2) Charged Creeper
execute at @a if data entity @p SelectedItem.tag.mcDeck_card_chargedCreeper run function mc_deck:card_info/charged_creeper

# (3) Enderman
execute at @a if data entity @p SelectedItem.tag.mcDeck_card_enderman run function mc_deck:card_info/enderman

# (4) Pillager
execute at @a if data entity @p SelectedItem.tag.mcDeck_card_pillager run function mc_deck:card_info/pillager

# (5) Skeleton
execute at @a if data entity @p SelectedItem.tag.mcDeck_card_skeleton run function mc_deck:card_info/skeleton

# (6) Zombie
execute at @a if data entity @p SelectedItem.tag.mcDeck_card_zombie run function mc_deck:card_info/zombie

# (7) Drowned
execute at @a if data entity @p SelectedItem.tag.mcDeck_card_drowned run function mc_deck:card_info/drowned