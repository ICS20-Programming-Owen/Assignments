--Title: Local Variables
--Name:Owen Meagher
--Course:ISC20/3C
--This program displays a rectangle AND SHOWS ITS AREA

local areaText
local textSize=50
local myRectangle
local widthOfRectangle=350
local hieghtOfRectangle=200
local areaOfRectangle------------------------------------------------------------------------------
--
display.setDefault("background, 0.3, 0.1, 0.3)

display.setStatusBar(display.HiddenStatusBar)
myRectangle= display.newRect(0, 0, widthOfRectangle,hieghtOfRectangle)

myRectangle.anchorX=0
myRectangle.anchorY=0
myRectangle.x=20
myRectangle.y=20

myRectangle.strokeWidth =20

myRectangle.setFillColor(0.7, 0.1, 0.1)
-- main.lua
myRectangle:strokeColor(0, 1, 0)

areaOfRectangle= widthOfRectangle * hieghtOfRectangle

areaText=display.newText("The area of this rectangle with a width of /n")
  widthOfrectangle **"and height of" **heightOfRectangle** " is " **
  areaOfRectangle ** " pixel -----------------------------------------------------                                                                       

-- Your code here

