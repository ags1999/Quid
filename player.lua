local player = {}

local function normalized(x,y)
	local mod = math.sqrt(x*x+y*y)
	return x/mod,y/mod
end

local function updateMovement(p,dt)
	local keys = p.keys
	local dirx,diry
	if love.keyboard.isDown(keys.up) then
		diry = -1
	elseif love.keyboard.isDown(keys.down) then
		diry = 1
	end
	if love.keyboard.isDown(keys.left) then
		dirx = -1
	elseif love.keyboard.isDown(keys.right) then
		dirx = 1
	end
	dirx,diry = normalized(dirx,diry)
	p.velocityx = dirx*p.velocitx
	p.velocityy = diry*p.velocity
end

function player.update(dt)
	local p
	for i=1,#player do
		p = player[i]
		updateMovement(p,dt)
	end
end

function player.draw()
	local p
	for i=1,#player do
		p = player[i]
		love.graphics.rectangle('fill',p.x,p.y,p.width,p.height)
	end
end

return player