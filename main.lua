-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

display.setStatusBar( display.HiddenStatusBar )

-- include the Corona "composer" module
local composer = require "composer"

--local sky = display.newImage( "bkg_clouds.png", 160, 195 )

--local ground = display.newImage( "ground.png", 160, 445 )

local sky = display.newImage( "bkg_clouds.png", 160, 195 )
sky.id = "backgroundobject"

local function onObjectTouch( event )
    if event.phase == "began" then
        print( "Touch event began on: " .. event.target.id )
    end
    return true
end

local timeDelay = 500
local text = ""

local function updateText()
	

sky:addEventListener( "touch", onObjectTouch )
text = display.newText( "0", display.contentCenterX, 105, native.systemFontBold, 160 )
text:setFillColor( 0, 0, 0 )
timer.performWithDelay( timeDelay, text, 50 )