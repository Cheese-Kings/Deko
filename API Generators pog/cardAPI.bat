@echo off

rem Title etc.
title Deko Card API Generator thingy

rem Ask the user questions about le card
set /p cardName= What is the name of the card?: 
set /p cardCodeName= What is the name of the card without uppercase and replacing spaces with _: 
set /p cardHealth= How much health does the card have?: 
set /p cardAttack= How much damage does the card do?: 
set /p cardDefence= How much defence does the card have?: 
set /p cardID= What is the cards ID? (e.g. 1,2,3,4,5): 
set /p cardRarity= How rare is the card? (e.g. COMMOM,RARE,EPIC,LEGENDARY): 
set /p rarityColour= What colour is the rarity? (COMMON = grey, RARE = light_blue, EPIC = light_purple, LEGENDARY = yellow): 

cls

rem Create .mcfunction files
echo Creating .mcfunction files...
echo.

rem Card Stats
cd ../Datapack/data/deko/functions/card_stats
(
echo # Attack
echo scoreboard players set %cardCodeName% cardAttack %cardAttack%
echo # Health
echo scoreboard players set %cardCodeName% cardHealth %cardHealth%
echo # ID
echo scoreboard players set %cardCodeName% cardID %cardID%
echo # Defence
echo scoreboard players set %cardCodeName% cardDefence %cardDefence%
)> %cardCodeName%.mcfunction

rem Card Info
cd ../card_info
(
echo # Displays Stats about the %cardName% card
echo tellraw @p ["",{"text":"\n"},{"text":"~~~~~~~~","color":"aqua"},{"text":" %cardName%","color":"green"},{"text":" Card","color":"dark_aqua"},{"text":" ~~~~~~~~","color":"aqua"},{"text":"\n"},{"text":"Health: ","color":"red"},{"score":{"name":"%cardCodeName%","objective":"cardHealth"},"color":"red"},{"text":"\n"},{"text":"Attack: ","color":"gold"},{"score":{"name":"%cardCodeName%","objective":"cardAttack"},"color":"gold"},{"text":"\n"},{"text":"Defence: ","color":"yellow"},{"score":{"name":"%cardCodeName%","objective":"cardDefence"},"color":"yellow"},{"text":"\n\n"},{"text":"ID: ","color":"light_purple"},{"score":{"name":"%cardCodeName%","objective":"cardID"},"color":"light_purple"},{"text":"\n"},{"text":"%cardRarity%","bold":true,"color":"%rarityColour%"},{"text":"\n"},{"text":"~~~~~~~~~~~~~~~~~~~~~~~~","color":"aqua"},{"text":"\n "}]
)> %cardCodeName%.mcfunction

rem Give Card
cd ../give_card
(
echo give @p minecraft:carrot_on_a_stick{CustomModelData:1%cardID%,deko_card_%cardCodeName%:1,display:{Name:'[{"text":"%cardName% Card","italic":false}]',Lore:['[{"text":"","italic":false}]','[{"text":"%cardRarity%","italic":false,"color":"%rarityColour%"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Deko","italic":true,"color":"blue"}]']}} 1
)> %cardCodeName%.mcfunction

pause
cls

rem Create commands
echo Generating commands...
echo.
echo You will be given a series of commands and instructions on where in the datapack to put them, yay
echo.
pause
cls

rem Detect Cards
echo Put the following in one of the groups of the detect_cards subfolder
echo.
echo # (7) %cardName%
echo execute at @a if data entity @p SelectedItem.tag.deko_card_%cardCodeName% run function deko:card_info/%cardCodeName%
echo.
pause
cls

rem Taggy the Tagging Tag
echo Put the following in the install_card_stats function Tag
echo.
echo "deko:card_stats/%cardCodeName%"
echo.
pause
cls

rem WOW the end
echo You did it yay woo you added a new card very cool pog