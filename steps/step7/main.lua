LARGURA_TELA = 320
ALTURA_TELA = 480
-- Load some default values for our rectangle.
function love.load()
    x, y, w, h = 20, 20, 64, 63
    aviao = love.graphics.newImage("imagens/14bis.png")
    background = love.graphics.newImage("imagens/background.png")
    love.window.setMode(LARGURA_TELA, ALTURA_TELA, {resizable = false })
    love.window.setTitle("14bis vs Meteoros ")
end
 
function moveCirculo()
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
        moveCirculo()
    end
end
 
-- Draw a coloured rectangle.
function love.draw()
    love.graphics.draw(background, 0,0)
    love.graphics.draw(aviao, x, y)
end