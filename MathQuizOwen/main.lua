--Title: Math Quiz
--Name: Owen
--Course: ICS20
--Description: This program displays a math question and allows the user to enter the answer.
------------------------------------------------------------------------------------------------
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour 
display.setDefault("background", 124/255, 249/255, 199/255)

--------------------------------------------------------------------------
--LOCAL VARIABLES
---------------------------------------------------------------------------

-- create local variables
local questionObject 
local correctObject 
local numericField
local randomNumber1
local randomNumber2
local userAnswer 
local correctAnswer 
local points = 0
local pointsText = display.newText("Points", -50,50, nil, 50)
local heart
local heart2
local heart3
local timeText
local livesText
local correctText
-------------------------------------------------------------------------------
--LOCAL FUNCTIONS 
-------------------------------------------------------------------------------

local function AskQuestion()
	--generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0, 20)
	randomNumber2 = math.random(0, 20) 

	correctAnswer = randomNumber1 + randomNumber2

	--create a question in the text object 
	questionObject.text = randomNumber1 .. "+" .. randomNumber2 .. "="

end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end 

local function NumericFieldListener( event )

	--User begins editing "numericField"
	if (event.phase == "began" ) then

		--clear the field 
		event.target.text = ""

	elseif userAnswer == "submitted" then 

		--when the answer is submitted (enter key is pressed) set the user input to the user's answer 
		userAnswer = tonumber(event.target.text)

		--if the users answer and the correct answer are the same:
		if(userAnswer == correctAnswer) then 
			correctObject.isVisible = true 
			timer.performWithDelay(2000, Correct)

		end
	end
end


if (userAnswer == correctAnswer) then 
	--give a point if the user gets the answer correct
	point = points + 1

	--update it in the display object 
	pointsText.text = "points = " .. points
------------------------------------------------------------------------------------------------------------------
--OBJECT CREATION
------------------------------------------------------------------------------------------------------------------

--displays a question and sets the colour 
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(155/255, 42/255, 198/255)

--create the correct text object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/3, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(155/255, 42/255, 198/255)
correctObject.isVisible = false

-- create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80)
numericField.inputType = "number"

-- add the event listener for the numeric field
numericField:addEventListener( "userrInput", NumericFieldListener )

pointsText = display.newText("Points = " ..points, display.contentWidth/3, display.contentHeight/3, nil, 50)

hearts = display.newImage("Images/heart.png", 200,-200)


--display the text
timeText = display.newText(" Time remaining: 4", 0, 0, Arial, 50)

timeText.anchorX = 0
timeText.anchorY = 0 
timeText.x = 100
timeText.y = 100

--set the text colour
timeText:setTextColor(0.1, 0.6, 0.7)

--display the text
livesText = display.newText(" Lives Left: 3", 0, 0, Arial, 50)

livesText.anchorX = 0
livesText.anchorY = 0 
livesText.x = 600
livesText.y = 100

livesText:setTextColor(0.8, 0.4, 0.3)

--display the text
correctText = display.newText(" Correct!", 0, 0, Arial, 50)

correctText.anchorX = 0
correctText.anchorY = 0
correctText.x = 400
correctText.y = 450



-------------------------------------------------------------------------------------------------------------
--FUNCTION CALLS
-------------------------------------------------------------------------------------------------------------

--call the function tp ask the question 
AskQuestion()

end 