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
local lebronJamesHeight = lebronJames.height 

local cube = display.newImageRect("Images/cube.png", 150, 150)
local cubeWidth = cube.width
local cubeHeight = cube.Height
local alreadyTouchedBeetleship = false 
local alreadyTouchedRocketship = false

--set the initial x and y position of my image 
lebronJames.x = 400
lebronJames.y = 500

lebronJames.x = 300
lebronJames.y = 200

-- Function: LebronJamesListener
-- Input: touch listener
-- Output: none
--Description: when lebronjames is touched, move it
local function LebronJamesListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedCube)= false then
			alreadyTouchedLebonJames = true
		end 
	end

	if ( (touch.phase == "moved") and (alreadyTouchedLebronJames) = true
		LebronJames.x
		LebronJames.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedBeetleship = false
		alreadyTouchedBeetleship = false 
	end 
end 

--add the respective listeners to each object 
beetleship:addEventListener("touch", BeetleshipListener)

-- Function: RocketshipListener
-- Input: touch listener
-- Output: none
--Description: when rockethip is touched, move it
local function RocketshipListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedBeetleship == false) then
			alreadyTouchedRocketship = true 
		end 
	end

	if ( (touch.phase == "moved") and (alreadyTouchedRocketship == true) ) then
		rocketship.x = touch.x
		rocketship.y = touch.y 
	end

	if (touch.phase == "ended") then
		alreadyTouchedRocketship = false
		alreadyTouchedRocketship = false 
	end 
end 

--add the respective listeners to each object 
rocketship:addEventListener("touch", RocketshipListener)
