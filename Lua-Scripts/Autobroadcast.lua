-- Project Maintained by Ak47sigh known as Alexe & Midoking.
-- You can redistribute it and/or modify but not to sell.
-- Actions against the Copyright will support consequences!
-- Copyright (C) 2012-2013 AkMi Project <http://www.wow-like.info/>

-- this script will be changed soon for better purpose

function World_AutoAnnounce()
	RandomAnnounce = math.random(1,2) -- Change it if you gonna add more.
		if RandomAnnounce==1 then
			SendWorldMessage("|cffff0000[System Broadcast] |cff00ff00You can use /o to talk in the World Channel.", 2) -- 1 For Chat Box and 2 For WideScreen.
		end
		if RandomAnnounce==2 then
			SendWorldMessage("|cffff0000[System Broadcast] |cff00ff00Don't forget to vote for us once at every 12hours. You can get Epic and Legendary Custom Items.", 2) -- 1 For Chat Box and 2 For WideScreen.
		end
end

RegisterTimedEvent("World_AutoAnnounce", 120000, 0) -- 60000 means 1 minute, it's in miliseconds. You can change it!