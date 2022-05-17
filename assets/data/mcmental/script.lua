function onUpdate(elapsed)
    if difficulty == 5 then
        --for 6-9k arrow movements on difficulty insane (or higher if I add more)
        if curStep >= 0 and curStep < 50000 then
            songPos = getSongPosition()
            local currentBeat = (songPos/3000)*(curBpm/15)

            noteTweenX(defaultPlayerStrumX0, 6, defaultPlayerStrumX0 - 100*math.sin((currentBeat+4*0.25)*math.pi), 0.4)
            noteTweenX(defaultPlayerStrumX1, 7, defaultPlayerStrumX1 - 100*math.sin((currentBeat+5*0.25)*math.pi), 0.4)
            noteTweenX(defaultPlayerStrumX2, 8, defaultPlayerStrumX2 - 100*math.sin((currentBeat+6*0.25)*math.pi), 0.4)
            noteTweenX(defaultPlayerStrumX3, 9, defaultPlayerStrumX3 - 100*math.sin((currentBeat+7*0.25)*math.pi), 0.4)
            noteTweenX(defaultPlayerStrumX4, 10, defaultPlayerStrumX4 - 100*math.sin((currentBeat+8*0.25)*math.pi), 0.4)
            noteTweenX(defaultPlayerStrumX5, 11, defaultPlayerStrumX5 - 100*math.sin((currentBeat+9*0.25)*math.pi), 0.4)
    
            noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 100*math.sin((currentBeat+4*0.25)*math.pi), 0.4)
            noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 100*math.sin((currentBeat+5*0.25)*math.pi), 0.4)
            noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 100*math.sin((currentBeat+6*0.25)*math.pi), 0.4)
            noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 100*math.sin((currentBeat+7*0.25)*math.pi), 0.4)
            noteTweenX(defaultOpponentStrumX4, 4, defaultOpponentStrumX4 + 100*math.sin((currentBeat+8*0.25)*math.pi), 0.4)
            noteTweenX(defaultOpponentStrumX5, 5, defaultOpponentStrumX5 + 100*math.sin((currentBeat+9*0.25)*math.pi), 0.4)

		end
	else if difficulty <= 4 then
        --for 4k arrow movements on difficulties expert+ and lower
		if curStep >= 0 and curStep < 50000 then
			songPos = getSongPosition()
			local currentBeat = (songPos/3000)*(curBpm/15)
	
			noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 100*math.sin((currentBeat+4*0.25)*math.pi), 0.4)
			noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 100*math.sin((currentBeat+5*0.25)*math.pi), 0.4)
			noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 100*math.sin((currentBeat+6*0.25)*math.pi), 0.4)
			noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 100*math.sin((currentBeat+7*0.25)*math.pi), 0.4)

			noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 100*math.sin((currentBeat+4*0.25)*math.pi), 0.4)
			noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 100*math.sin((currentBeat+5*0.25)*math.pi), 0.4)
			noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 100*math.sin((currentBeat+6*0.25)*math.pi), 0.4)
			noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 100*math.sin((currentBeat+7*0.25)*math.pi), 0.4)

	end
end
end
end

--Function 2

function onBeatHit()
    --for every beat
    health = getProperty('health')
    if getProperty('health') > 0.2 then
    setProperty('health', health- 0.05);
    end
end

--function 3

function opponentNoteHit()
    --for every arrow opponent hits
    health = getProperty('health')
    if getProperty('health') > 0.3 then
    setProperty('health', health- 0.1);
    end
    
end