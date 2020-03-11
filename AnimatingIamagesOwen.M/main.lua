-- Title: Animating Images
-- Name: Owen
--Course: ICS20
-- This program displays a background from the internet and two animated images.

--hide the status bar
display.setStatusBar(display.setHiddenStatusBar)

--local variables
local backgroundImage = display.newImageRect("Images/ottawa.png", 2048, 1536)
local lebronJames = display.newImageRect("Images/lebronJames.png", 150, 150)
local lebronJamesWidth = lebronJames.width 
local lebronJamesHeight = lebrinJames.height 

local cube = display.newImageRect("Images/cube.png", 150, 150)
local cubeWidth = cube.width
local cubeHeight = cube.Height