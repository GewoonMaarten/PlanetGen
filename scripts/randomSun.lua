sunChar = {
	size = 0,
	color = 0}

function size()
	sunChar.size = love.math.random(50,90)
end

function color()
	colors = {{255,165,0},{255,255,0},{255,0,0}}
	sunChar.color = colors[love.math.random(1,3)]
end

size()
color()