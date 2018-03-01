-- Title: MovingObjects
-- Name: Desmy Michaelis-Joseph
-- Course: ICS2O/3C
-- This program displays a beetleship moving
--across the screen as well as another
--object moving in a different direction.

print ("***Testing beetleship!")

--Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables\
scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

--character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--set the image to be transparent
beetleship.alpha = 0

--set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

--Function: Moveship
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed tp the x-value of the ship
local function Moveship(event)
	--add the scroll speed to the x-value of the ship
	beetleship.x = beetleship + scrollSpeed
	--change the transparency of the ship every time it moves so that it fades out
	