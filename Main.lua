local lk = love.keyboard

function loadFiles()
	randomSun = love.filesystem.load("/scripts/randomSun.lua")
	randomSun()
	
	randomPlanet = love.filesystem.load("/scripts/randomPlanet&Moon.lua")
	randomPlanet()
	
	controls = love.filesystem.load("/scripts/controls.lua")
	controls()
	
	randomSystem = love.filesystem.load("scripts/randomSystem.lua")
	randomSystem()	
end

function love.load()
	loadFiles()
	loadSystem()
	loadControls()
end

function love.update(dt)
	updateControls(dt)
	updateSystem(dt)
end

function love.draw()
	cam:draw(drawSystem)
	love.graphics.setColor(255,255,255)
	love.graphics.print("Current FPS: "..tostring(love.timer.getFPS()), 10, 10)
	love.graphics.print("rotation moon: " .. rotationMoon .. "\nrotation planet: " .. rotationPlanet, 10, 50)
end



