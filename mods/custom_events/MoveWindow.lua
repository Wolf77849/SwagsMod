local movingX = false
local movingY = false
function onEvent(name, value1, value2)
    if name == "MoveWindow" then
        value1 = tonumber(value1);
        value2 = tonumber(value2);
        if value1 == 1 then
            movingX = true
            elseif value1 == 2 then
            movingY = true
        end
        if movingX then
            value2 = getPropertyFromClass("openfl.Lib", "application.window.x") + value2
            setPropertyFromClass("openfl.Lib", "application.window.x", value2)
            movingX = false
        elseif movingY then
            value2 = getPropertyFromClass("openfl.Lib", "application.window.y") + value2
            setPropertyFromClass("openfl.Lib", "application.window.y", value2)
            movingY = false
        end
    end
end