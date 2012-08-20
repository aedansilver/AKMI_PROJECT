function World_AutoAnnounce()
	RandomAnnounce=math.random(1,2) -- Change it if you gonna add more.
		if RandomAnnounce==1 then
			SendWorldMessage("|cffff0000[System Broadcast] |cff00ff00You can use /o to talk in the World Channel.", 2) -- 1 For Chat Box and 2 For WideScreen.
		end
		if RandomAnnounce==2 then
			SendWorldMessage("|cffff0000[System Broadcast] |cff00ff00Don't forget to vote for us once at every 12hours. You can get Epic and Legendary Custom Items.", 2) -- 1 For Chat Box and 2 For WideScreen.
		end
end

RegisterTimedEvent("World_AutoAnnounce", 120000, 0) -- 60000 means 1 minute, it's in miliseconds. You can change it!