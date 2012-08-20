function Revive(event, pPlayer)
        if (pPlayer:IsDead() == true) and pPlayer:HasItem(63001) then
	pPlayer:RemoveItem(63001, 1)
	pPlayer:FullCastSpell(26638)
	pPlayer:ResurrectPlayer()
	pPlayer:SendBroadcastMessage("|cffFF0000[SYSTEM] |cff00ff00"..pPlayer:GetName().."|r, one |cff571B7e[Weed-WoW Resurrection item]|r has been consumed. Successful revive.")
		else
	pPlayer:SendBroadcastMessage("|cffFF0000[SYSTEM] |cff00ff00"..pPlayer:GetName().."|r, you cannot be auto-revived, you need one |cff571B7e[Weed-WoW Resurrection item]|r. Fail to Revive.")
	pPlayer:SendAreaTriggerMessage("|cffFF0000[SYSTEM] |cff00ff00"..pPlayer:GetName().."|r, |cff43BFC7you don't have the |cff571B7e[Weed-WoW Resurrection item]")
		end
end

RegisterServerHook(6, "Revive")