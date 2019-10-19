LARGURA_TELA = 500
ALTURA_TELA = 500

-- Load some default values for our rectangle.
function love.load()
    love.window.setMode(LARGURA_TELA, ALTURA_TELA, {resizable = false })
    x, y, raio = 250, 250, 50
end

-- Increase the size of the rectangle every frame.
function love.update(dt)
    
end
 
-- Draw a coloured rectangle.
function love.draw()
    love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.circle("fill", x, y, raio)
end