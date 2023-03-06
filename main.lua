-- Table Utility Library
require('lib/table_utils')

-- Animation library
anim8 = require 'lib/anim8-master/anim8'

-- Push library to scale up our pixel art correctly
local push = require('lib/push')

love.graphics.setDefaultFilter("nearest", "nearest") --disable blurry scaling

gameWidth, gameHeight = 300, 300

windowWidth, windowHeight = love.window.getDesktopDimensions()
windowWidth, windowHeight = windowWidth*.8, windowHeight*.8

push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {
    fullscreen = false,
    resizable = true,
    pixelperfect = false
})
push:setBorderColor{0.2, 0.2, 0.2} --default value
  
function love.resize(w, h)
    push:resize(w, h)
end

function love.load()

    -- Game States
    TITLE = 1
    FRONT = 2
    BACK = 3

    -- Font
    font = love.graphics.newFont("fonts/VCR_OSD_MONO.ttf", 20)
    love.graphics.setFont(font)

    -- Make sure numbers are truly random
    math.randomseed(os.time())

    -- Sound Setup
    require('sounds')

    -- Load images and set up animations
    require('imageload')

    -- Controls Code
    require('controls')

    -- Cards
    require('cards')
    print(cards[1].question)
    
    -- Initial variables
    gameState = TITLE
    stage = 0
    menu_input_buffer_timer = 0.5
    lives = 3
    cardnum = 1

    -- Debug
    
end

function love.update(dt)

end

function love.draw()
    push:apply("start")

    if gameState == TITLE then
        love.graphics.printf("Click Anywhere to Begin!", 0, 100, gameWidth, "center")
    elseif gameState == FRONT then
        love.graphics.printf(cards[cardnum].question, 0, 100, gameWidth, "center")
    elseif gameState == BACK then 
        love.graphics.printf(cards[cardnum].answer, 0, 100, gameWidth, "center")
    end

    push:apply("end")
end