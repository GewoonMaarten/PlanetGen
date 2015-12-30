randomPlanet = love.filesystem.load("/scripts/randomPlanet&Moon.lua")
randomPlanet()

function loadSystem()
	xPosWindow, yPosWindow = love.graphics.getDimensions()
	
	centerX, centerY = xPosWindow/2, yPosWindow/2 
	xPosSun, yPosSun = centerX, centerY 

	rotationPlanet = 0
	rotationMoon = 0
end

function updateSystem(dt)
	rotationPlanet = rotationPlanet + planets[1][3] * dt
	rotationMoon = rotationMoon + planets[1][4] * dt
end

function drawSystem()
	love.graphics.setColor(sunChar.color)
	love.graphics.circle('fill', xPosSun, yPosSun, sunChar.size, 50)
	for i,planet in ipairs(planets) do
		local anglePlanet  = i * (math.pi * 2 / planetNumber) + math.rad(rotationPlanet)
		local xPosPlanet = xPosSun + math.cos(anglePlanet/(planet[1]/50)) * planet[1]
		local yPosPlanet = yPosSun + math.sin(anglePlanet/(planet[1]/50)) * planet[1]
		
		love.graphics.setColor(planet[5])
		love.graphics.circle("fill", xPosPlanet, yPosPlanet, planet[6], 50)
				
		local angleMoon  = i * (math.pi * 2 / planetNumber) + math.rad(rotationMoon)
		local xPosMoon = xPosPlanet + math.cos(angleMoon) * planet[2]
		local yPosMoon = yPosPlanet + math.sin(angleMoon) * planet[2]
		
		love.graphics.setColor(planet[7])
		love.graphics.circle("fill", xPosMoon, yPosMoon, planet[8], 10)
	end
end