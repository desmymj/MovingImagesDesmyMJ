-- Title: MovingObjects
-- Name: Desmy Michaelis-Joseph
-- Course: ICS2O/3C
-- This program displays a beetleship moving
--across the screen as well as another
--object moving in a different direction.

print ("***Testing beetleship!")

--Hide the status bar
display.setStatusBar(display.hiddenStatusBar)

--global variables
scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

--character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--add character image width and height
local rocketship = display.newImageRect("Images/rocketship.png", 200, 100)

--set the rocketship to be transarent
rocketship.alpha = 0

--set the image to be opaque
beetleship.alpha = 1

--set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

--set the intial x and y position of rocketship
rocketship.x = 400
rocketship.y = 300

--change the direction where the rocketship is facing
rocketship:scale(-1,1)

if (beetleship.y > 0)
then beethleship.y = beethleship.y + scrollSpeed
end

--changes the direction when it reaches the end
if (rocketship.x > 0)
	then rocketship.x = rocketship
--Function: Moveship
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed tp the x-value of the ship
local function MoveShip(event)
	--add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	
	--change the of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha - 0.01

	--add the scrollSpeed to the x value of the rocketship
	rocketship.x = rocketship.x - scrollSpeed/2

	--transparency everytime it moves it fades in 
	rocketship.alpha = rocketship.alpha + 0.01
end

--MoveShip will be called over again
Runtime:addEventListener("enterFrame", MoveShip)

