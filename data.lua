data.raw["map-settings"]["map-settings"].pollution.diffusion_ratio = 0.001	--game default 0.02
data.raw["map-settings"]["map-settings"].pollution.min_to_diffuse = 10		--game default 15
data.raw["map-settings"]["map-settings"].pollution.ageing = 0.40			-- default 0.55

data.raw["map-settings"]["map-settings"].enemy_evolution = 
{
	enabled=true,
	-- percentual increase in the evolve factor for every second (60 ticks)
	time_factor = 0.0000008,
	-- percentual increase in the evolve factor for every destroyed spawner
	destroy_factor = -0.005,
	-- percentual increase in the evolve factor for 1000 PU
	pollution_factor = 0.003
}

data.raw["map-settings"]["map-settings"].enemy_expansion =
{
      enabled = true,
      -- Distance in chunks from the nearest base when expanding
      min_base_spacing = 1,
      -- Distance in chunks from the furthest base around.
      -- This prevents expansions from reaching too far into the
      -- player's territory
      max_expansion_distance = 10,

      -- Minimal distance of expansion point in chunks from player base
      min_player_base_distance = 1,

      -- Size of the group that goes to build new base (in game this is multiplied by the
      -- evolution factor).
      settler_group_min_size = 3,
      settler_group_max_size = 10,

      -- Ticks to expand to a single
      -- position for a base is used.
      --
      -- cooldown is calculated as linear interpolation between min and max
      min_expansion_cooldown = 1 * 3600,		-- 1 minute
      max_expansion_cooldown = 10 * 3600		-- 10 minutes
}