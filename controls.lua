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