local angleshit = 1;
local anglevar = 1;

function onBeatHit()
    objectPlayAnimation('bf', 'idle', false);
    setProperty('bf.offset.x',0)
    setProperty('bf.offset.y', 0)
    if curBeat >= 40 then
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
function onCreate()
    --Put It In Your Songs Data Folder
    --replace With Your Desired Characters And Anims
    makeAnimatedLuaSprite('bf','characters/BOYFRIEND',-170 , 330);
    setProperty('bf.flipX', true); --ithink
    luaSpriteAddAnimationByPrefix('bf', 'idle', 'BF idle dance', 32, false);
    luaSpriteAddAnimationByPrefix('bf', 'singUP', 'BF NOTE UP0', 32, false);
    luaSpriteAddAnimationByPrefix('bf', 'singDOWN', 'BF NOTE DOWN0', 32, false);
    luaSpriteAddAnimationByPrefix('bf', 'singLEFT', 'BF NOTE LEFT0', 32, false);
    luaSpriteAddAnimationByPrefix('bf', 'singRIGHT', 'BF NOTE RIGHT0', 32, false);
    addLuaSprite('bf', true);
   end