require "defines"
require "config"

local function init()
	if debug then
		game.alwaysday = true
	end
end

game.oninit(init)

game.onevent(defines.events.onplayercreated, function(event)

if debug then
  local player = game.getplayer(event.playerindex)
  player.insert{name = "coal", count = 1000}
  player.insert{name = "car", count = 1}
  player.insert{name = "car", count = 1}
  player.insert{name = "combat-shotgun", count = 1}
  player.insert{name = "piercing-shotgun-shell", count = 50}
  player.insert{name = "power-armor-mk2", count = 1}
  player.insert{name = "fusion-reactor-equipment", count = 1}
  player.insert{name = "basic-laser-defense-equipment", count = 1}
  player.insert{name = "basic-exoskeleton-equipment", count = 2}
  player.insert{name = "energy-shield-mk2-equipment", count = 1}
  player.insert{name = "construction-robot", count = 10}
  player.insert{name = "logistic-chest-storage", count = 1}
  player.insert{name = "roboport", count = 1}
  player.insert{name = "basic-accumulator", count = 10}
  player.insert{name = "substation", count = 5}
  player.insert{name = "solar-panel", count = 20}
  player.insert{name = "medium-electric-pole", count = 20}
  player.insert{name = "blueprint", count = 5}
  player.insert{name = "deconstruction-planner", count = 5}
  player.force.researchalltechnologies()
end

end)


game.onevent(defines.events.onbuiltentity, function(event)

if debug then
	game.player.print(event.createdentity.type)
end 

end)

game.onevent(defines.events.onpreplayermineditem , function(event)

if debug then
	game.player.print(event.entity.type)
end

end)

game.onevent(defines.events.onrobotbuiltentity, function(event)

if debug then
	game.player.print(event.createdentity.type)
end

end)

game.onevent(defines.events.onrobotpremined, function(event)

if debug then
	game.player.print(event.entity.type)
end

end)