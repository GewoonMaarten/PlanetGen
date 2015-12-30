function loadFiles()
	randomSun = love.filesystem.load("/scripts/randomSun.lua")
	randomSun()
	
	randomPlanet = love.filesystem.load("/scripts/randomPlanet&Moon.lua")
	randomPlanet()

	randomSystem = love.filesystem.load("scripts/randomSystem.lua")
	randomSystem()

	controls = love.filesystem.load("/scripts/controls.lua")
	controls()
end

function love.load()
	loadFiles()
	loadSystem()
end

function love.update(dt)
	updateControls(dt)
	updateSystem(dt)
end

function love.draw()
	drawSystem()
	love.graphics.setColor(255,255,255)
	love.graphics.print("Current FPS: "..tostring(love.timer.getFPS()), 10, 10)
	love.graphics.print(rotationMoon, 100, 90)
	love.graphics.print(rotationPlanet, 100, 100)
end