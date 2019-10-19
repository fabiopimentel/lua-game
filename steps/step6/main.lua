-- Load some default values for our rectangle.
function love.load()
    x, y, w, h = 20, 20, 64, 63
    aviao = love.graphics.newImage("imagens/14bis.png")
end
 
function moveAviao()
    if love.keyboard.isDown('w') then
        y = y -1
    end
    if love.keyboard.isDown('s') then
        y = y +1
    end
    if love.keyboard.isDown('a') then
        x = x -1
    end
    if love.keyboard.isDown('d') then
        x = x +1
    end
end

-- Increase the size of the rectangle every frame.
function love.update(dt)
    if love.keyboard.isDown('w','a','s','d') then
        moveAviao()
    end
end
 
-- Draw a coloured rectangle.
function love.draw()
    love.graphics.draw(background, 0,0)

    love.graphics.draw(aviao, x, y)
end