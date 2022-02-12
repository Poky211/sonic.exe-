function onCreate()
    makeLuaSprite('sSKY', 'sky', -414, -440.8)
    setScrollFactor('sSKY', 1, 1);
    setGraphicSize('sSKY', getProperty('sSKY.width') * 1.4)

    makeLuaSprite('trees', 'backtrees', -290.55, -298.3)
    setScrollFactor('trees', 1, 1);
    setGraphicSize('trees', getProperty('trees.width') * 1.2)

    makeLuaSprite('bg2', 'trees', -306, -334.65)
    setScrollFactor('bg2', 1, 1)
    setGraphicSize('bg2', getProperty('bg2.width') * 1.2)

    makeLuaSprite('bg', 'ground', -309.95, -240.2)
    setScrollFactor('bg', 1, 1)
    setGraphicSize('bg', getProperty('bg.width') * 1.2)

    makeLuaSprite('bgspec', 'GreenHill', -450, -550)
    setScrollFactor('bgspec', 1, 1)
    setGraphicSize('bgspec', getProperty('bgspec.width') * 8)
    setProperty('bgspec.visible', false)
    setProperty('bgspec.antialiasing', false);
    
    addLuaSprite('sSKY', false)
    addLuaSprite('trees', false)
    addLuaSprite('bg2', false)
    addLuaSprite('bg', false)
    addLuaSprite('bgspec', false)
end