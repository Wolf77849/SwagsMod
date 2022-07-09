local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isFreeplay and not seenCutscene then --Block the first countdown
		startVideo('cutscene1');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end