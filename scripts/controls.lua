randomPlanet = love.filesystem.load("/scripts/randomPlanet&Moon.lua")
randomPlanet()

function love.keypressed(key)
	if key == "escape" then love.event.quit() end
	if key == "r" then love.graphics.clear() randomSun()loadPlanetMoon() PlanetMoonChar()  end
end

local speed = 2

function updateControls(dt)
	if love.keyboard.isDown("w", "up") then yPosSun = yPosSun - speed end
	if love.keyboard.isDown("s", "down") then yPosSun = yPosSun + speed end
	
	if love.keyboard.isDown("d", "right") then xPosSun = xPosSun + speed end
	if love.keyboard.isDown("a", "left") then xPosSun = xPosSun - speed end
end

function love.mousepressed(x, y, button, istouch)
	if sunChar.size > 80 and planetChar.size > 10 and moonChar.size > 5 and button == "wu" then
		sunChar.size = sunChar.size - 80
		planetChar.size = planetChar.size - 10
		moonChar.size = moonChar.size - 5
		distPlanet = distPlanet - (80 - 10)
		distMoon = distMoon - (10 - 5)
	elseif button == "wd" then 
		sunChar.size = sunChar.size + 80
		planetChar.size = planetChar.size + 10
		moonChar.size = moonChar.size + 5
		distPlanet = distPlanet + (80 + 10)
		distMoon = distMoon + (10 + 5)
	end
	--if planetChar.size < 0 and moonChar.size < 0 then
		--planetChar.size, moonChar.size = 1, 1
	--end
end