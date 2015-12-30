function loadPlanetMoon()
	planetChar = {size = 0, color = 0}
	colorsPlanet = {{0,0,255}, {255,255,0}, {0,128,0}, {255,0,0}, {128,128,128}, {255,165,0}, {255,192,203}}

	moonChar = {size = 0, color = 0}
	colorsMoon = {{211,211,211}, {42,42,42}, {233,233,233}, {147,147,255}}

	planets = {}
	
	dist1 , dist2 = 100, 200
end

function PlanetMoonChar()
	planetNumber = love.math.random(2, 6)
	for i = 1, planetNumber - 1 do
		planetChar.size = love.math.random(10,20)
		planetChar.color = colorsPlanet[love.math.random(1,7)]
		rotationSpeedPlanet = love.math.random(50, 70)
		
		moonChar.size = love.math.random(5,10)
		moonChar.color = colorsMoon[love.math.random(1,4)]
		rotationSpeedMoon = love.math.random(-50, -30)
		
		distPlanet = love.math.random(dist1 , dist2)
		distMoon = love.math.random(30, 50)
		
		planets[i] = {distPlanet, distMoon, rotationSpeedPlanet, rotationSpeedMoon, planetChar.color, planetChar.size, moonChar.color, moonChar.size}
		dist1 , dist2 = dist1 + 100, dist2 + 100
	end
end