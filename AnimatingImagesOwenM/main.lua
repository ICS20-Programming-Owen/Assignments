-- Title: Animating Images
-- Name: Owen
--Course: ICS20
-- This program displays a background from the internet and two animated images.

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-------------------------------------------------------------------------
-- LOCAL VARIABLES 
------------------------------------------------------------------------

local textSize = 108

--local variables
local backgroundImage 
local lebronJames 
local cube 
local ottawaText

local alreadyTouchedLebronJames = false 
local alreadyTouchedCube = false

--my boolean variables to keep track of which object i touched first 
local alreadyTouchedOttawaText = false 

-------------------------------------------------------------------------------
--GLOBAL VARIABLES 
-------------------------------------------------------------------------------



-------------------------------------------------------------------------
-- LOCAL FUNCTIONS 
------------------------------------------------------------------------


--allowing my objects to be touched and dragged:

-- Function: LebronJamesListener
-- Input: touch listener
-- Output: none
--Description: when lebron james is touched, move it
local function LebronJamesListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedCube == false) then
			alreadyTouchedLebronJames = true 
		end 
	end

	if ( (touch.phase == "moved") and (alreadyTouchedLebronJames == true) ) then
		lebronJames.x = touch.x
		lebronJames.y = touch.y 
	end

	if (touch.phase == "ended") then
		alreadyTouchedLebronJames = false
		alreadyTouchedLebronJames = false 
	end 
end 


-- Function: CubeListener
-- Input: touch listener
-- Output: none
--Description: when cube is touched, move it
local function CubeListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedLebronJames == false) then
			alreadyTouchedCube = true 
		end 
	end

	if ( (touch.phase == "moved") and (alreadyTouchedCube == true) ) then
		cube.x = touch.x
		cube.y = touch.y 
	end

	if (touch.phase == "ended") then
		alreadyTouchedCube = false
		alreadyTouchedCube = false 
	end 
end 

-- Function: OttawaListener
-- Input: touch listener
-- Output: none
--Description: when ottawa is touched, it will move a bit on its own.
local function OttawaTextListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedCube == false) then
			alreadyTouchedOttawaText = true 
		end 
	end

	if ( (touch.phase == "moved") and (alreadyTouchedOttawaText == true) ) then
		ottawaText.x = touch.x
		ottawaText.y = touch.y 
	end

	if (touch.phase == "ended") then
		alreadyTouchedOttawaText = false
		alreadyTouchedOttawaText = false 
	end 
end 


--moving my objects:
local backgroundImage= display.newImageRect("Image/background.png", 2048, 1536)

--character image with width and hieght
local girl5 = display.newImageRect("Images/girl5.png", 200, 200)

--set the image to be transparent
girl5.alpha = 0

--set the initial x and y position of beetleship
girl5.x = 0
girl5.y = display.contentHeight/3

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--add the scrollSpeed to the x-value of the ship
	girl5.x = girl5.x + scrollSpeed
	--change the transparency every time it moves so that it fades out\
    girl5.alpha = girl5.alpha + 0.01
end
--Move ship will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)



-------------------------------------------------------------------------
-- OBJECT CREATION
------------------------------------------------------------------------

--local variables
backgroundImage = display.newImageRect("Images/ottawa.png", 2048, 1536)

lebronJames = display.newImageRect("Images/lebronJames.png", 150, 150)

--set the initial x and y position of my image 
lebronJames.x = 400
lebronJames.y = 500

lebronJames.x = 300
lebronJames.y = 200


cube = display.newImageRect("Images/cube.png", 150, 150)

--display the text that I want:
ottawaText = display.newText("Ottawa", 0, 0, Arial,textSize)

ottawaText.anchorX = 0 
ottawaText.anchorY = 0
ottawaText.x = 512 
ottawaText.y = 300 

--set the text colour
ottawaText:setTextColor(0.1, 0.6, 0.9)
-------------------------------------------------------------------------
-- EVENT LISTENERS
------------------------------------------------------------------------


--add the respective listeners to each object 
lebronJames:addEventListener("touch", LebronJamesListener)

--add the respective listeners to each object 
cube:addEventListener("touch", CubeListener)

--add the respective listeners to each object 
ottawaText:addEventListener("touch", OttawaTextListener)











