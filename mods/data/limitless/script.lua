local angleshit = 1;
local anglevar = 1;
function onBeatHit()
    if curBeat >= 64 and curBeat <= 704 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
    end
end
function onUpdate()
    if curStep == 734 then -- First time
        setPropertyFromClass('ClientPrefs', 'camZooms', false);
    elseif curStep == 766 then
        setPropertyFromClass('ClientPrefs', 'camZooms', true);
    end
    if curStep == 620 then -- Second time
        setPropertyFromClass('ClientPrefs', 'camZooms', false);
    elseif curStep == 654 then
        setPropertyFromClass('ClientPrefs', 'camZooms', true);
    end
    if curStep == 620 then -- Third time
        setPropertyFromClass('ClientPrefs', 'camZooms', false);
    elseif curStep == 654 then
        setPropertyFromClass('ClientPrefs', 'camZooms', true);
    end
    if curStep == 620 then -- Fourth time
        setPropertyFromClass('ClientPrefs', 'camZooms', false);
    elseif curStep == 654 then
        setPropertyFromClass('ClientPrefs', 'camZooms', true);
    end
    if curStep == 620 then -- Fifth time
        setPropertyFromClass('ClientPrefs', 'camZooms', false);
    elseif curStep == 654 then
        setPropertyFromClass('ClientPrefs', 'camZooms', true);
    end
    if curStep == 620 then -- Sixth time
        setPropertyFromClass('ClientPrefs', 'camZooms', false);
    elseif curStep == 654 then
        setPropertyFromClass('ClientPrefs', 'camZooms', true);
    end
end