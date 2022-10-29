local xx = 420.95;
local yy = 313;
local xx2 = 852.9;
local yy2 = 350;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	for i=1,5,1 do

	end
	
    xx = 420.95;
    yy = 313;
    
    --BackGround Image
    makeLuaSprite('bg', 'weekwindows/images/alanbg', -1000, -600);
    scaleObject('bg', 1.2, 1.2);

    addLuaSprite('bg', false); -- ones ontop are on lower layers
end




function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
end