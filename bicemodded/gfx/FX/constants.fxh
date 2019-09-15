Code
[[

//--- REWORKED mod

// ------------------    Light          -------------------------

static const float NIGHT_AMBIENT_BOOST = 3.0f;

static const float3 DayAmbientMapPosX = float3(0.1, 0.1, 0.05);
static const float3 DayAmbientMapNegX = float3(0.15, 0.15, 0.15);
static const float3 DayAmbientMapPosY = float3(0.03, 0.03, 0.06);
static const float3 DayAmbientMapNegY = float3(0.0, 0.0, 0.0);
static const float3 DayAmbientMapPosZ = float3(0.0502, 0.05023, 0.1023);
static const float3 DayAmbientMapNegZ = float3(0.03, 0.033, 0.033);

static const float3 NightAmbientMapPosX = float3(0.2, 0.2, 0.2);
static const float3 NightAmbientMapNegX = float3(0.0, 0.0, 0.0);
static const float3 NightAmbientMapPosY = float3(0.01, 0.01, 0.01);
static const float3 NightAmbientMapNegY = float3(0.0, 0.0, 0.1);
static const float3 NightAmbientMapPosZ = float3(0.06, 0.1, 0.15);
static const float3 NightAmbientMapNegZ = float3(0.14, 0.14, 0.2);

static const float3 NightAmbientPosX = float3(2.0, 2.0, 2.0);
static const float3 NightAmbientNegX = float3(0.2, 0.2, 0.2);  
static const float3 NightAmbientPosY = float3(0.1, 0.1, 0.1);  
static const float3 NightAmbientNegY = float3(0.0, 0.0, 0.0);  
static const float3 NightAmbientPosZ = float3(3.0, 3.0, 3.0);  
static const float3 NightAmbientNegZ = float3(0.8, 0.8, 0.8);  


// ------------------    Specular       -------------------------

static const float SPECULAR_WIDTH 				= 0.0;
static const float SPECULAR_MULTIPLIER			= 0.0;
static const float MAP_SPECULAR_WIDTH			= 0.0;


// ------------------    TERRAIN        -------------------------

static const float CITY_LIGHTS_TILING 			= 0.09103;
static const float CITY_LIGHTS_INTENSITY 		= 5.5;
static const float CITY_LIGHTS_BLOOM_FACTOR 	= 5.3;

static const float TERRAIN_TILE_FREQ 			= 128.0f;
static const float MAP_NUM_TILES 				= 5.0f;
static const float TEXELS_PER_TILE 				= 512.0f;
static const float ATLAS_TEXEL_POW2_EXPONENT	= 11.0f;
static const float TERRAIN_WATER_CLIP_HEIGHT    = 3.0f;
static const float TERRAIN_WATER_CLIP_CAM_HI	= 700.0f;
static const float TERRAIN_WATER_CLIP_CAM_LO	= 50.0f;

static const float MUD_TILING 					= 0.07;
static const float MUD_NORMAL_CUTOFF 			= 10.982;
static const float MUD_STRENGHTEN 				= 0.15;

static const float 	SNOW_OPACITY_MIN			= 0.5f;
static const float 	SNOW_OPACITY_MAX			= 0.25f;
static const float 	SNOW_CAM_MIN 				= 50.0f;
static const float 	SNOW_CAM_MAX 				= 100.0f;
static const float 	ICE_CAM_MIN 				= 50.0f;
static const float 	ICE_CAM_MAX 				= 100.0f;


static const float 	SNOW_START_HEIGHT 			= 3.0f;
static const float 	SNOW_RIDGE_START_HEIGHT 	= 11.0f;
static const float 	SNOW_NORMAL_START 			= 0.7f;
static const float3 SNOW_COLOR 					= float3( 0.46, 0.48, 0.69 );
static const float3 SNOW_WATER_COLOR 			= float3( 0.3, 0.6, 1.0 );
static const float 	SNOW_CLIFFS 				= 5.0f;
static const float 	SNOW_SPEC_GLOSS_MULT 		= 0.2f;
static const float 	SNOW_TILING  				= 0.05f;
static const float 	SNOW_NOISE_TILING  			= 0.06f;
static const float 	SNOW_ICE_NOISE_TILING  		= 0.0625f;
static const float 	SNOW_FROST_MIN_EFFECT  		= 0.4f;

static const float3 ICE_COLOR 					= float3( 0.5f, 0.6f, 0.9f );
static const float 	ICE_NOISE_TILING  			= 0.1f;

static const float WATER_COLOR_LIGHTNESS = 0.5;
static const float WATER_RIPPLE_EFFECT = 0.0025;

static const float COLORMAP_OVERLAY_STRENGTH = 0.7f;
static const float3 FAKE_CUBEMAP_COLOR = float3(0.0f, 0.0f, 0.0f);
static const float 	BORDER_TILE = 0.4f;

static const float 	TREE_SEASON_MIN = 0.5f;
static const float 	TREE_SEASON_FADE_TWEAK = 2.5f;


// ------------------    HDR          	-------------------------

static const float3 LUMINANCE_VECTOR = float3(0.2125f, 0.7154f, 0.0721f);


// ------------------    TREES          -------------------------

static const float 	TREE_SPECULAR = 0.1f;
static const float 	TREE_ROUGHNESS = 0.6f;


// ------------------    WATER          -------------------------


//static const float  WATER_TILE = 4.0f;
static const float  WATER_TIME_SCALE = 1.0f / 80.0f;
static const float  WATER_HEIGHT = 9.5f;
static const float  WATER_HEIGHT_RECP = 1.0f / WATER_HEIGHT;
static const float  WATER_HEIGHT_RECP_SQUARED = WATER_HEIGHT_RECP * WATER_HEIGHT_RECP;

// ------------------    FOG            -------------------------

static const float3 FOG_COLOR = float3( 0.12, 0.28, 0.6 );
static const float 	FOG_BEGIN = 1.0f;
static const float 	FOG_END = 150.0f;
static const float 	FOG_MAX = 0.0f;



// Fog of war
static const float 	FOW_MAX = 0.25f;
static const float  FOW_CAMERA_MIN = 200;
static const float  FOW_CAMERA_MAX = 500;


// ------------------    BUILDINGS      -------------------------

static const float  SHADOW_WEIGHT_TERRAIN    	= 0.7f;
static const float  SHADOW_WEIGHT_MAP    		= 0.7f;
static const float  SHADOW_WEIGHT_BORDER   		= 0.7f;
static const float  SHADOW_WEIGHT_WATER   		= 0.5f;
static const float  SHADOW_WEIGHT_RIVER   		= 0.4f;
static const float  SHADOW_WEIGHT_TREE   		= 0.7f;

// ------------------    GRADIENT BORDERS   ---------------------

static const float GB_CAM_MIN = 0.0f;
static const float GB_CAM_MAX = 280.0f;
static const float GB_CAM_MAX_FILLING_CLAMP = 1.0f; // 0 to 1 value for clamping the fill when camera is at max distance
static const float GB_THRESHOLD = 0.01f; // interpolation time
static const float GB_THRESHOLD2 = 0.08f; // interpolation time
//static const float3 GB_OUTLINE_COLOR = float3( 0.0f, 0.0f, 0.0f );
static const float GB_OUTLINE_CUTOFF_SEA = 0.990f; // Magic number to balance cutoff on edges without neighbor (over Sea)
static const float GB_OPACITY_NEAR = 1.0f; // Transparency when camera is near
static const float GB_OPACITY_FAR = 0.9f;  // Transparency when camera is far
static const float BORDER_NIGHT_DESATURATION_MAX = 0.2f; // how much border colors can get desaturated at night. 1.0f is full grey
static const float BORDER_FOW_REMOVAL_FACTOR = 0.9f; // How much of the FOW that is removed from the borders. 1.0f is no FOW
static const float BORDER_LIGHT_REMOVAL_FACTOR = 0.8f; // How much of the light calculations that are removed from the borders. 1.0f is no light
static const float GB_STRENGTH_CH1 = 1.0; // Opacity of bottom layer
static const float GB_STRENGTH_CH2 = 0.7; // Opacity of top layer
static const float GB_FIRST_LAYER_PRIORITY = 0.5; // Priority for first/second layer when both are active at the same pixel
static const float BORDER_MAP_TILE = 18000.0f;


// ------------------    SECONDARY COLOR MAP   ------------------

static const float SEC_MAP_TILE = 6000.0f;



// ------------------    MAP ARROWS   ---------------------------

static const float MAP_ARROW_SEL_BLINK_SPEED = 5.5f;
static const float MAP_ARROW_SEL_BLINK_RANGE = 0.7f;
static const float MAP_ARROW_NORMALS_STR_TERR = 0.0125f;
static const float MAP_ARROW_NORMALS_STR_WATER = 0.08f;


// ------------------    PARTICLES   ----------------------------

static const float PARTICLE_FADE_START_DISTANCE = 100;
static const float PARTICLE_FADE_STOP_DISTANCE = 350;


// -------------    RIM LIGHT (PDXMESH)   -----------------------

static const float 	RIM_START = 0.55f;
static const float 	RIM_END = 0.6f;
static const float4 RIM_COLOR = float4( 0.3f, 0.3f, 0.3f, 0.0f );



// -------------    MAP BORDER (PDXMESH)   ----------------------

static const float3 BORDER_SUN_INTENSITY = float3(1.5, 1.5, 1.6);
static const float3 BORDER_SUN_DIRECTION = float3(-0.2, 0.9, 0.1);

]]