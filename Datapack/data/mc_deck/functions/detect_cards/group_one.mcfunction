####################################
## Group 1:                       ##
## Cards 1-15                     ##
####################################

# (1) Creeper
execute at @a if data entity @p SelectedItem.tag.card_creeper run function mc_deck:card_info/creeper

# e
execute at @a if data entity @p SelectedItem.tag.card_creeper[7] run say Frog is pog

# (2) Charged Creeper
execute at @a if data entity @p SelectedItem.tag.card_charged_creeper run say Charged Creeper Card Selected

# (3) Enderman
execute at @a if data entity @p SelectedItem.tag.card_enderman run say Enderman Card Selected

# (4) Pillager
execute at @a if data entity @p SelectedItem.tag.card_pillager run say Pillager Card Selected

# (5) Skeleton
execute at @a if data entity @p SelectedItem.tag.card_skeleton run say Skeleton Card Selected

# (6) Zombie
execute at @a if data entity @p SelectedItem.tag.card_zombie run say Zombie Card Selected

# (7) Drowned
execute at @a if data entity @p SelectedItem.tag.card_drowned run say Drowned Card Selected