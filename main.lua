local state

local menu = require'menu'
local game = require'game'

function love.load()
	menu.load()
	state = menu
end

function love.update(dt)
	state.update(dt)
end

function love.changeToGame()
	state = game
end

function love.mousepressed(x,y,but)
	state.mousepressed(x,y,but)
end

function love.draw()
	state.draw()
end