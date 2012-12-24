spriteMap = {}
drawCalls = {}
QUADS = {} 
SPRITEQUAD = {}
BGQUAD = {}
bullets = {}
ITEMS = {}
DECALS = {}
SPRITES_TO_DELETE = {}
ITEMS_TO_DELETE = {}

LEVELS = {}

levelOne = {
    regMapSize = 25,
    rooms = 4,
    door      = 1,
    wall1     = 2,
    wall2     = 3,
    obstacle  = 4,
    uDoor     = 5,
    boss      = 6
}

table.insert(LEVELS,levelOne)




spriteBatch = 0
selectedWall = 0
windowWidth = love.graphics.getWidth() 
windowHeight = love.graphics.getHeight()
screenScale = 0.5
screenWidth = windowWidth / screenScale
screenHeight = windowHeight / screenScale

lastGameCycleTime = 0 
gameCycleDelay = 1000 / 60 -- 60 fps for game logic

do  
    local fov = 60 * math.pi / 180
    fovHalf = fov/2
end

viewDist = (screenWidth/2) / math.tan(fovHalf)
numRays = math.ceil(screenWidth)
displayDebug = true
twoPI = 2 * math.pi

distanceFromWalls = 0.6 
