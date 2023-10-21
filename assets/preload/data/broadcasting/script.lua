function onCreate()
    makeLuaSprite('BG', 'blackBG', -700, -600);
    scaleObject('BG', 6, 6)

    makeAnimatedLuaSprite('heart_effect', 'Heart', 510, -20);
    addAnimationByPrefix('heart_effect', 'HeartBeat', 'beat', 24, true)
    scaleObject('heart_effect', 1.5, 1.5)
end
function onStepHit()
    if curStep == 1538 then
        addLuaSprite('BG', false)
        addLuaSprite('heart_effect', false)
        triggerEvent('Change Character', 'BF', 'sky-effect')
        triggerEvent('Change Character', 'Dad', 'agoti-effect')
        setProperty('gf.visible', false)  
    end
    if curStep == 1664 then
        doTweenZoom('screenZoom', 'camGame', 0.2, 7, 'quadInOut');
    end
    if curStep == 1760 then
        doTweenZoom('screenZoom', 'camGame', 0.7, 5, 'quadInOut');
    end
    if curStep == 1792 then
        removeLuaSprite('BG', true)
        removeLuaSprite('heart_effect', true)
        triggerEvent('Change Character', 'BF', 'sky-normal-vecher')
        triggerEvent('Change Character', 'Dad', 'agoti-normal-vecher')
        setProperty('gf.visible', true)
        doTweenZoom('screenZoom', 'camGame', 0.6, 2, 'quadInOut');
    end
end