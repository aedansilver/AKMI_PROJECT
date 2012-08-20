function Unstuck(event, player, message)
	if(message ==".z") then
		player:SendBroadcastMessage("|cff00ff00system is helping you")
		player:ClearCooldownForSpell(8690)
		player:FullCastSpell(8690)
	end
end
RegisterServerHook(16, "Unstuck")