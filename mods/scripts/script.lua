function opponentNoteHit()
    if week <= 3 then
        if difficulty >= 2 then
            health = getProperty('health')
            if getProperty('health') > 0.3 then
                setProperty('health', health- 0.014);
            end
        end
    end
end

function opponentNoteHit()
    if week == 'geometrydash' then
        health = getProperty('health')
        if getProperty('health') > 0.3 then
            setProperty('health', health- 0.02);
        end
    end
end

function goodNoteHit()
    if not song == 'losing-my-mind' then
    if getProperty('ratingPercent') < 0.86 and getProperty('ratingPercent') > 0.75 then
        setProperty('health', getProperty('health') + 0.08);
    elseif getProperty('ratingPercent') < 0.75 and getProperty('ratingPercent') > 0.7 then
        setProperty('health', getProperty('health') + 0.09);
    elseif getProperty('ratingPercent') < 0.7 and getProperty('ratingPercent') > 0.6 then
        setProperty('health', getProperty('health') + 0.11);
    elseif getProperty('ratingPercent') < 0.6 and getProperty('ratingPercent') > 0.5 then
        setProperty('health', getProperty('health') + 0.14);
    elseif getProperty('ratingPercent') < 0.5 and getProperty('ratingPercent') > 0 then
        setProperty('health', getProperty('health') + 0.3);
    end
    end
end

function noteMiss()
    if not song == 'losing-my-mind' then
    if getProperty('ratingPercent') < 0.86 and getProperty('ratingPercent') > 0.75 then
        setProperty('health', getProperty('health') - 0.08);
    elseif getProperty('ratingPercent') < 0.75 and getProperty('ratingPercent') > 0.7 then
        setProperty('health', getProperty('health') - 0.1);
    elseif getProperty('ratingPercent') < 0.7 and getProperty('ratingPercent') > 0.6 then
        setProperty('health', getProperty('health') - 0.14);
    elseif getProperty('ratingPercent') < 0.6 and getProperty('ratingPercent') > 0.5 then
        setProperty('health', getProperty('health') - 0.17);
    elseif getProperty('ratingPercent') < 0.5 and getProperty('ratingPercent') > 0 then
        setProperty('health', getProperty('health') - 0.2);
    end
    end
end

function onSongStart()
    setPropertyFromClass('ClientPrefs', 'camZooms', true);
    setPropertyFromClass("openfl.Lib", "application.window.title", songName);
end

function onDestroy()
    setPropertyFromClass("openfl.Lib", "application.window.x", 0)
    setPropertyFromClass("openfl.Lib", "application.window.y", 25)
end

function onSectionHit()
    doTweenZoom('tweeningZoom', 'camHUD', 1.3, 0.05, 'quadOut')
    doTweenZoom('tweeningZoomin', 'camGame', 1.3, 0.05, 'quadOut')
end

function onUpdate()
    if curBeat == 4 then
        noteTweenAlpha("o1",0,0.5,0.001,"quartInOut");
    noteTweenAlpha("o2",1,0.5,0.001,"quartInOut");
    noteTweenAlpha("o3",2,0.5,0.001,"quartInOut");
    noteTweenAlpha("o4",3,0.5,0.001,"quartInOut");
    end
    doTweenZoom('tweeningZoom', 'camHUD', 1, 0.15, 'quadOut')
    doTweenZoom('tweeningZoomin', 'camGame', 1, 0.15, 'quadOut')
end