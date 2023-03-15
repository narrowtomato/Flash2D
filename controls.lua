forward_button = {
    x = gameWidth * 3 / 4,
    y = gameHeight * 3 / 4,
    width = 50,
    height = 50,
    text = "Next/Flip"
}

back_button = {
    x = gameWidth * 1 / 4,
    y = gameHeight * 3 / 4,
    width = 50,
    height = 50,
    text = "Back"
}

remove_button = {
    x = gameWidth * 2 / 4,
    y = gameHeight * 3 / 4,
    width = 50,
    height = 50,
    text = "Remove Card\n(I know this)"
}

function love.mousepressed(x, y, button, istouch)
    if button == 1 then
        if gameState == TITLE then 
            gameState = FRONT
        elseif gameState == FRONT then 
            gameState = BACK 
        elseif gameState == BACK then 
            gameState = FRONT
            -- Don't go off the end of the table
            if cardnum < #cards then
                cardnum = cardnum + 1
            else
                cardnum = 1
            end
        end
    end
end