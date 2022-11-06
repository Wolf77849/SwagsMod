local ran = false
local ran1 = false
function onEvent(name, value1, value2)
if name == "Tilt" then
    value1 = tonumber(value1);
    value2 = tonumber(value2);
    if value1 == 0 then
        doTweenAngle('Gtween', 'camHUD', 0, 0.5, 'bounceOut');
        doTweenAngle('Gtween', 'camGame', 0, 0.5, 'bounceOut');
        ran = false
    elseif value1 == 1 then
        if ran then
            doTweenAngle('GUItween', 'camHUD', 10, 0.5, 'bounceOut');
            ran = false
        else
            doTweenAngle('GUItween', 'camHUD', -10, 0.5, 'bounceOut');
            ran = true
        end
    elseif value1 == 2 then
        if ran then
            doTweenAngle('Gtween', 'camGame', 10, 0.5, 'bounceOut');
            ran = false
        else
            doTweenAngle('Gtween', 'camGame', -10, 0.5, 'bounceOut');
            ran = true
        end
    elseif value1 == 3 then
        if ran then
            doTweenAngle('GUItween', 'camHUD', 30, 0.5, 'bounceOut');
            ran = false
        else
            doTweenAngle('GUItween', 'camHUD', -30, 0.5, 'bounceOut');
            ran = true
        end
    elseif value1 == 4 then
        if ran then
            doTweenAngle('Gtween', 'camGame', 30, 0.5, 'bounceOut');
            ran = false
        else
            doTweenAngle('Gtween', 'camGame', -30, 0.5, 'bounceOut');
            ran = true
        end
    else
        if ran then
            doTweenAngle('Gtween', 'camGame', value1, 0.5, 'bounceOut');
            ran = false
        else
            doTweenAngle('Gtween', 'camGame', -value1, 0.5, 'bounceOut');
            ran = true
        end
    end
    if value2 == 0 then
        doTweenAngle('Gtween', 'camGame', 0, 0.5, 'bounceOut');
        doTweenAngle('Gtween', 'camHUD', 0, 0.5, 'bounceOut');
        ran1 = false
    elseif value2 == 1 then
        if ran1 then
            doTweenAngle('GUI1tween', 'camHUD', 10, 0.5, 'bounceOut');
            ran1 = false
        else
            doTweenAngle('GUI1tween', 'camHUD', -10, 0.5, 'bounceOut');
            ran1 = true
        end
    elseif value2 == 2 then
        if ran1 then
            doTweenAngle('G1tween', 'camGame', 10, 0.5, 'bounceOut');
            ran1 = false
        else
            doTweenAngle('G1tween', 'camGame', -10, 0.5, 'bounceOut');
            ran1 = true
        end
    elseif value2 == 3 then
        if ran1 then
            doTweenAngle('GUItween', 'camHUD', 30, 0.5, 'bounceOut');
            ran1 = false
        else
            doTweenAngle('GUItween', 'camHUD', -30, 0.5, 'bounceOut');
            ran1 = true
        end
    elseif value2 == 4 then
        if ran1 then
            doTweenAngle('Gtween', 'camGame', 30, 0.5, 'bounceOut');
            ran1 = false
        else
            doTweenAngle('Gtween', 'camGame', -30, 0.5, 'bounceOut');
            ran1 = true
        end
    else
        if ran1 then
            doTweenAngle('GUI1tween', 'camHUD', value2, 0.5, 'bounceOut');
            ran1 = false
        else
            doTweenAngle('GUI1ween', 'camHUD', -value2, 0.5, 'bounceOut');
            ran1 = true
        end
    end
end
end