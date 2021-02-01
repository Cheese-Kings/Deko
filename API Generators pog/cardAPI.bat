rem Title etc.
title Mc Deck Card API Generator thingy
@echo off

rem Ask the user questions about le card
set /p cardName= What is the name of the card?
set /p cardCodeName= What is the name of the card without uppercase and replacing spaces with _
set /p cardHealth= How much health does the card have?
set /p cardAttack= How much damage does the card do?
set /p cardDefence= How much defence does the card have?
set /p cardID= What is the cards ID? (e.g. 1,2,3,4,5)
set /p cardRarity= How rare is the card? (e.g. COMMOM,RARE,EPIC,LEGENDARY)

pause
cls

rem Generate le commands and tell le user where to put them
echo 