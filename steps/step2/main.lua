-- Load some default values for our rectangle.
function love.load()
    x, y, w, h = 20, 20, 20, 20
end

-- Increase the size of the rectangle every frame.
function love.update(dt)
    -- x = x+1
    -- y = y+1
end
 
-- Draw a coloured rectangle.
function love.draw()
    love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
end