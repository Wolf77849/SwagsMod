function onEvent(name,value1,value2)
	if name == 'Hide_Hud' then
		if value1 == '0' then
			setProperty('healthBar.alpha', 1);
			setProperty('healthBarBG.alpha', 1);
			setProperty('iconP1.alpha', 1);
			setProperty('iconP2.alpha', 1);
			setProperty('scoreTxt.alpha', 1);
			setProperty('timeBar.alpha', 1);
			setProperty('timeTxt.alpha', 1);
			doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
		end
		if value2 == '0' then
			setProperty('healthBar.alpha', 1);
			setProperty('healthBarBG.alpha', 1);
			setProperty('iconP1.alpha', 1);
			setProperty('iconP2.alpha', 1);
			setProperty('scoreTxt.alpha', 1);
			setProperty('timeBar.alpha', 1);
			setProperty('timeTxt.alpha', 1);
			doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
		end
		if value1 == '1' then
			doTweenAlpha('GUItween', 'camHUD', 0, 0.5, 'linear');
		end
	
		if value1 == '2' then
			doTweenAlpha('GUItween', 'camHUD', 1, 0.5, 'linear');
		end
		if value2 == '1' then
			setProperty('healthBar.alpha', 0);
			setProperty('healthBarBG.alpha', 0);
			setProperty('iconP1.alpha', 0);
			setProperty('iconP2.alpha', 0);
			setProperty('scoreTxt.alpha', 0);
			setProperty('timeBar.alpha', 0);
			setProperty('timeTxt.alpha', 0);
		end
		if value2 == '2' then
			setProperty('healthBar.alpha', 1);
			setProperty('healthBarBG.alpha', 1);
			setProperty('iconP1.alpha', 1);
			setProperty('iconP2.alpha', 1);
			setProperty('scoreTxt.alpha', 1);
			setProperty('timeBar.alpha', 1);
			setProperty('timeTxt.alpha', 1);
		end
	end	
end