--NDefines.NGraphics.COUNTRY_COLOR_SATURATION_MODIFIER = 0.75
NDefines.NGraphics.COUNTRY_COLOR_BRIGHTNESS_MODIFIER = 0.68

-- NOTE: Doesn't matter if NDefines_Graphics or NDefines

--
-- Gradient Border configurations - Need restart for most of these
--
	NDefines_Graphics.NGraphics.GRADIENT_BORDERS_REFRESH_FREQ = 0.2
	NDefines_Graphics.NGraphics.GRADIENT_BORDERS_FIELD_COUNTRY_REFRESH = 50

	-- Rescales ALL border widths. Somewhat affects gradient border.
	NDefines_Graphics.NGraphics.BORDER_WIDTH = 1.25
	NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_COUNTRY_HIGH = 2.5
	NDefines_Graphics.NGraphics.GRADIENT_BORDERS_COUNTRY_CENTER_THICKNESS = 2.5

	--NDefines_Graphics.NGraphics.GRADIENT_BORDERS_OUTLINE_CUTOFF_COUNTRY = 0.98
	--NDefines_Graphics.NGraphics.GRADIENT_BORDERS_OUTLINE_CUTOFF_DIPLOMACY = 0.98

	-- COUNTRY_LOW or COUNTRY_HIGH thickness is used, whichever is higher.
	-- Country size doesn't seem to matter......
	--NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_COUNTRY_LOW = 255 -- thickness in pixels
	--NDefines_Graphics.NGraphics.GRADIENT_BORDERS_FIELD_COUNTRY_LOW = 0

	-- Fill when on Diplo screen
	NDefines.NGraphics.GRADIENT_BORDERS_THICKNESS_DIPLOMACY = 1000.0

	-- Strategic Region view for Navy/Air
	NDefines.NGraphics.GRADIENT_BORDERS_THICKNESS_STRATEGIC_REGIONS = 10.0
	NDefines.NGraphics.GRADIENT_BORDERS_CAMERA_DISTANCE_OVERRIDE_STRATEGIC_REGIONS = 0
	--NDefines.NGraphics.GRADIENT_BORDERS_CAMERA_DISTANCE_OVERRIDE_STRATEGIC_REGIONS = -1 -- Makes country borders in navy-mode ignore camera.

	-- Hide because texture railways look like garbage
	NDefines.NGraphics.RAILWAY_Y_OFFSET = 0.0
	NDefines.NGraphics.RAILWAY_BRIDGE_Y_OFFSET = -100.0 	
	
	--NDefines.NGraphics.RAILWAY_CAMERA_CUTOFF = 1200 	 	-- Still get black-fade.....
	--NDefines.NGraphics.RAILWAY_CAMERA_CUTOFF_SPEED = 0.1 	-- does nothing

	-- All supply-mode stuff requires a restart, even color tweaks.
	NDefines.NMapMode.SUPPLY_MAP_MODE_REACH_COLOR = {
		0.0,   0.45, 0.00, 0.20, 1.0, 		-- #990066 dark purple
		0.02,  0.35, 0.12, 0.45, 1.0, 		-- #332B85 dark purple blue
		0.12,  0.20, 0.15, 0.45, 1.0,		-- #0A2B99 dark blue
		0.2,   0.27, 0.27, 0.50, 1.0,		-- #215CA6 blue
		
		0.4,   0.15, 0.25, 0.40, 1.0,		-- #1C8FBF light blue
		0.6,   0.20, 0.42, 0.60, 1.0,		-- #40B5C2 teal
		0.8,   0.35, 0.50, 0.30, 1.0,		-- #78CCBA light teal
		1.0,   0.15, 0.54, 0.15, 1.0,		-- #99D199 light green
	}
	
	-- NOTE: New supply mode uses map-mode-terrain camera override.... HACK: -1 used to toggle some supply-mode only stuff as well.
	-- Terrain map mixing is weird but this is cleanest varient.
	NDefines.NGraphics.GRADIENT_BORDERS_CAMERA_DISTANCE_OVERRIDE_TERRAIN = -1 -- -1 now ignores camera-distance changes entirely.
	NDefines.NMapMode.MAP_MODE_TERRAIN_TRANSPARENCY = 1;
	
	-- Adjusting color luminance (These reload automatically)
	-- When you select a region, the other regions have their opacity set to 0.2 for navy and 0.15 for air
	-- Use opacity here to adjust the relative luminance difference between 'selected' and 'not'
	NDefines.NGraphics.STRATEGIC_NAVY_COLOR_BAD 	= {0.7, 0, 0, 0.4}
	NDefines.NGraphics.STRATEGIC_NAVY_COLOR_GOOD 	= {0, 0.7, 0, 0.4}
	NDefines.NGraphics.STRATEGIC_NAVY_COLOR_AVERAGE = {0.7, 0.7, 0, 0.4}
	NDefines.NGraphics.STRATEGIC_NAVY_NO_TASKFORCES_ASSIGNED = {0.65, 0.4, 0, 1} -- red vs red too hard to tell apart. Now orange.

	NDefines.NGraphics.STRATEGIC_AIR_COLOR_BAD 		= {0.66, 0, 0, 0.63} -- rgb
	NDefines.NGraphics.STRATEGIC_AIR_COLOR_GOOD 	= {0, 0.66, 0, 0.63}
	NDefines.NGraphics.STRATEGIC_AIR_COLOR_AVERAGE 	= {0.66, 0.66, 0, 0.63}

	-- Reduce luminance diff between Main map mode and Strategic Air
	NDefines.NGraphics.STRATEGIC_AIR_COLOR_NEUTRAL 	= {0.47, 0.47, 0.47, 0.15}

	-- CH1 is black in normal map mode. BlackCheck causes square artifacts on edges for water, hence disabled.
	-- So, to prevent luminance flicker between normal and navy mode on water, make the border tint black as well.
	NDefines.NGraphics.STRATEGIC_NAVY_COLOR_NEUTRAL = {0.0, 0.0, 0.0, 1}
	
	-- Fog tweaks
	-- NDefines_Graphics.NGraphics.DRAW_FOW_CUTOFF = 475 		-- 25 above GB_CAM_MAX. Prevents transitional luminance flicker.
	-- NDefines_Graphics.NGraphics.DRAW_FOW_FADE_LENGTH = 100

	-- HACK: For battleplan arrows to show only in main land/country view
	NDefines.NGraphics.GRADIENT_BORDERS_CAMERA_DISTANCE_OVERRIDE_COUNTRY = -3

---
--- Lighting rework
---	
	-- Lighting rebalance, attempt to have even-ish lighting everywhere.
	-- Make sure to recalibrate water ambient too.
	NDefines_Graphics.NGraphics.SUN_HEIGHT_WATER  = 1000
	
	-- The below are not what they are in base game!
	-- For lighting developmment.
	NDefines_Graphics.NGraphics.SUN_INTENSITY = 1.42	-- Sun intensity
	--NDefines_Graphics.NGraphics.SUN_HEIGHT  = 270		-- Sun height
	--NDefines_Graphics.NGraphics.SUN_LATITUDE  = 400	-- Offset up/down every other sun
	-- Note:
	-- Mesh view overrides this value, which may cause extreme bloom on division-designer units
	--NDefines_Graphics.NGraphics.SECOND_SUN_LATITUDE  = 1.4 -- Diffuse multiplier
	
---
--- DEV stuff
---
	-- HACK - Nudge tool uses this color for Strategic Air and States that are not owned.
	-- Should only be on during development!!!
	-- Make sure to set #ifdef NUDGE_HACK + GB_CAM_MAX=0
	-- NDefines.NGraphics.STRATEGIC_NAVY_COLOR_NEUTRAL = {1,1,1,1}

	-- None of these seem to do anything, even after restarts.
	NDefines.NGraphics.NAVAL_REGION_FADE_WHEN_FLEET_SELECTED = 0.5
	NDefines.NGraphics.AIR_REGION_FADE_WHEN_WING_SELECTED = 0.5
	NDefines.NGraphics.STRATEGIC_AIR_COLOR_GOOD_WHILE_HIGHLIGHTING_HOLD = {1,1,1,1}
	NDefines.NGraphics.STRATEGIC_AIR_COLOR_AVERAGE_WHILE_HIGHLIGHTING_HOLD = {1,1,1,1}
	NDefines.NGraphics.STRATEGIC_AIR_COLOR_NEUTRAL_WHILE_HIGHLIGHTING_HOLD = {1,1,1,1}
	
	
	