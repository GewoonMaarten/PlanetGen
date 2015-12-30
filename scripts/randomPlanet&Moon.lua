planetChar = {
size = 0, 
color = 0}
moonChar = {
size = 0, 
color = 0}
colorsPlanet = {{0,0,255}, {255,255,0}, {0,128,0}, {255,0,0}, {128,128,128}, {255,165,0}, {255,192,203}}
colorsMoon = {{211,211,211}, {42,42,42}, {233,233,233}, {147,147,255}}

planets = {}
planetNumber = love.math.random(2, 6)

dist1 , dist2 = 100, 200

for i = 1, planetNumber - 1 do

	moonChar.size = love.math.random(5,10)

	moonChar.color = colorsMoon[love.math.random(1,4)]
	rotationSpeedMoon = love.math.random(-50, -30)

	planetChar.size = love.math.random(10,20)

	planetChar.color = colorsPlanet[love.math.random(1,7)]
	
	distPlanet = love.math.random(dist1 , dist2)
	distMoon = love.math.random(30, 50)
	rotationSpeedPlanet = love.math.random(50, 70)

	planets[i] = {distPlanet, distMoon, rotationSpeedPlanet, rotationSpeedMoon, planetChar.color, planetChar.size, moonChar.color, moonChar.size}
	dist1 , dist2 = dist1 + 100, dist2 + 100
end



