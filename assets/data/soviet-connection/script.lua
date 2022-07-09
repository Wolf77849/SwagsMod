function onUpdate()
    if curStep >= 141 and curStep < 712 then
        setPropertyFromClass('ClientPrefs', 'camZooms', true);
    elseif curStep > 714 and curStep < 732 then
        setPropertyFromClass('ClientPrefs', 'camZooms', false);
    end
    if curStep >= 735 and curStep < 1374 then
        setPropertyFromClass('ClientPrefs', 'camZooms', true);
    elseif curStep > 1375 then
        setPropertyFromClass('ClientPrefs', 'camZooms', false);
    end
    if curStep >= 1712 then
        setPropertyFromClass('ClientPrefs', 'camZooms', true);
    end
    if curStep < 15 then
        setPropertyFromClass('ClientPrefs', 'camZooms', false);
    end
end