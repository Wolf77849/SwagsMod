local stop = false
function onEvent(name, value1, value2)
    if name == "nozoom" then
        value1 = tonumber(value1)
        if value1 == 1 then
            stop = true
        else
            stop = false
        end
    end
end
