local lk = love.keyboard

function loadControls()
	randomPlanet = love.filesystem.load("/scripts/randomPlanet&Moon.lua")
	randomPlanet()
	Camera = require "scripts.libs.camera"
	viewX = 0; viewY = 0; viewZoom = 1
	cam = Camera(viewX,viewY,viewZoom)
end

function love.keypressed(key)
	if key == "escape" then love.event.quit() end
	if key == "r" then love.graphics.clear() randomSun()loadPlanetMoon() PlanetMoonChar()  end
end

function love.wheelmoved(x, y)
	if y > 0 then cam:zoom(2)
	elseif y < 0 then cam:zoom(0.5) end
end

function updateControls(dt)
	local up, down, left, right = lk.isDown("w"), lk.isDown("s"), lk.isDown("a"), lk.isDown("d")
	
	if up then cam:move(0, -150*dt)
	elseif down then cam:move(0, 150*dt) end
	
	if left then cam:move(-150*dt, 0)
	elseif right then cam:move(150*dt, 0) end
end
