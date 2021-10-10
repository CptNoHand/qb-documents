Config = {}
Config.getCoords = false 

Config.reward = math.random(2250, 5525)

Config.policeJob = "police" -- Name of police job
Config.amountCop = 5 -- change this to increase/decrease the enemy difficulty from tier 1 and tier 2 depending on how many cops are online.
Config.hideBlip = true -- change this if you want the starting location to have a blip - (true/false)
Config.cleanDead = true -- change this if you want the peds to be deleted once they die - (true/false)
Config.printRemaining = true -- change this to show the amount of remaining enemies - (true/false)
Config.removeArea = true -- change this if you want the red circle to disappear once you're at the location - (true/false)
Config.waypoint = true -- change this to set a waypoint to the spawn location once you're close enough - (true/false)
Config.blipSprite = 90 -- if hideBlip is false then change this to your preferred sprite - (list of sprites: https://wiki.gtanet.work/index.php?title=Blips)
Config.enemies = 5 -- change this to the amount of enemies you want to spawn at a location. If this is 20 then 2-4 players are recommended. Tested with 10 - (10-20 enemies recommended)
Config.enemyHealth = 150 -- change this to the amount of health you want the enemies to have - (400 is default)
Config.enemyAcc = 40 -- change this to the accuracy you want the enemies to have. Recommend increasing this based on Config.enemies - (40% is default)
Config.enemyVest = false -- change this if you want to give the enemies armor - (true/false)
Config.enemyArmor = 50 -- change this to the amount you want if enemyVest is true - (0-100%)
Config.radius = 500.0 -- change this to increase/decrease the radius of the search area. If you go below 500 you will have to change some of the spawn locations - (float value)
Config.distance = 200 -- change this to increase/decrease the distance at which the enemies spawn - (might see enemies pop in with lower values)
Config.maxDistance = 400 -- change this to increase/decrease the max. distance you can be away from the enemies before the mission fails - (Keep higher than Config.distance)
Config.boxProp = "prop_mb_crate_01b" -- change the prop that will be used as a lootable source. Adjust crate x,y,z,h accordingly - (list of props: https://plebmasters.de/?app=objects)

Config.difficulty1_1 = "weapon_pistol"
Config.difficulty1_2 = "weapon_machinepistol"
Config.difficulty1_3 = "weapon_microsmg"
Config.difficulty1_4 = "weapon_assaultsmg"
Config.difficulty1_5 = "weapon_assaultrifle"
	
Config.difficulty2_1 = "weapon_machinepistol"
Config.difficulty2_2 = "weapon_microsmg"
Config.difficulty2_3 = "weapon_assaultsmg"
Config.difficulty2_4 = "weapon_assaultrifle"
Config.difficulty2_5 = "weapon_carbinerifle"

Config.locations = {
	[1] = { 
		addBlip = vector3(2667.334, 2669.441, 79.88748),			-- This changes the location of the blip on the map	
		enemy = vector3(2612.81, 2810.234, 33.69377),				-- Location of enemy spawns.
		crate = vector4(2657.274, 2807.249, 34.15653, 185.7),		-- Location of the crates. Always include heading. Try hiding it.
		active = false,												-- Don't touch this		
	},
	[2] = { 
		addBlip = vector3(1438.831, -2353.163, 66.89214),				
		enemy = vector3(1539.24, -2100.481, 77.15993),					
		crate = vector4(1508.386, -2156.067, 77.65121, 271.52),	
		active = false,														
	},
	[3] = { 
		addBlip = vector3(1438.831, -2353.163, 66.89214),				
		enemy = vector3(1128.841, -2307.9, 30.71902),					
		crate = vector4(1074.854, -2319.52, 30.30385, 82.56),	
		active = false,														
	},
	[4] = { 
		addBlip = vector3(2667.334, 2669.441, 79.88748),				
		enemy = vector3(2299.361, 2555.237, 46.67575),					
		crate = vector4(2326.641, 2529.753, 46.66772, 76.28),	
		active = false,														
	},
}


