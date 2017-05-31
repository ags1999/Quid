local game = {}
local W,H

local player = require'player'

function game.load()
	W,H = love.graphics.getDimensions()
end

local function moveInside(ent,dt)
	ent.x = ent.x + ent.velocityx*dt
	if ent.x+ent.width>W then
		ent.x = W-ent.width
	elseif ent.x<0 then
		ent.x = 0
	end
	ent.y = ent.y + ent.velocityy*dt
	if ent.y+ent.height>H then
		ent.y = H-ent.height
	elseif ent.y<0 then
		ent.y = 0
	end
end

function game.update(dt)
	player.update(dt)


end

function game.draw()
	love.graphics.print('ESTOU NO JOGO')
end

function game.mousepressed(but,x,y)

end

return game