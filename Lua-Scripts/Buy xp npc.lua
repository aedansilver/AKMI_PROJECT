-- Script By Kibblebit
-- Idea By QQrofl
-- Updated by Zx0xZ

local npcid = 90000 -- Entry ID of the XP Vendor
local SpawnCommand = "$xp npc spawn"
local TimeNPC = 30 -- In seconds!

local DontModify = TimeNPC * 600 -- Just don't do it!

function SpawnCommand_OnChat(event, player, message, type, language)
	local Mess = message:lower()
		if (Mess:find(SpawnCommand) == 1) then
			if (player:GetPlayerLevel() == 80) then
				player:SendBroadcastMessage("You are already level 80!")
				return 0
			else
				player:SpawnCreature(npcid, player:GetX(), player:GetY(), player:GetZ(), player:GetO(), 35, DontModify, player:GetPhase())
				player:SendBroadcastMessage("You have succesfully spawned XP Npc for: "..TimeNPC.." seconds!")
				return 0
			end
		end
end

RegisterServerHook(16, "SpawnCommand_OnChat")

function XPGossip(Unit, event, player)
	if (player:GetPlayerLevel() == 80) then
		Unit:SendChatMessageToPlayer(15, 0, "You are already level 80!", player) -- Unit will send an Whisper to Player. Only Player can see that.
		player:GossipComplete()
	else
	Unit:GossipCreateMenu(100, player, 0)
	Unit:GossipMenuAddItem(9, "1,000 XP [1 gold]", 1, 0)
	Unit:GossipMenuAddItem(9, "10,000 XP [10 gold]", 2, 0)
	Unit:GossipMenuAddItem(9, "100,000 XP [100 gold]", 3, 0)
	Unit:GossipMenuAddItem(9, "500,000 XP [500 gold]", 4, 0)
	Unit:GossipMenuAddItem(9, "1,000,000 XP [1000 gold]", 5, 0)
	Unit:GossipMenuAddItem(9, "5,000,000 XP [5000 gold]", 6, 0)
	Unit:GossipMenuAddItem(9, "Nevermind", 999, 0)
	Unit:GossipSendMenu(player)
	end
end

function XPGossip_OnSelect(Unit, event, player, code, intid, id)
	if(intid == 998) then -- Back to main menu
		Unit:GossipCreateMenu(100, player, 0)
		Unit:GossipMenuAddItem(9, "1,000 XP [1 gold]", 1, 0)
		Unit:GossipMenuAddItem(9, "10,000 XP [10 gold]", 2, 0)
		Unit:GossipMenuAddItem(9, "100,000 XP [100 gold]", 3, 0)
		Unit:GossipMenuAddItem(9, "500,000 XP [500 gold]", 4, 0)
		Unit:GossipMenuAddItem(9, "1,000,000 XP [1000 gold]", 5, 0)
		Unit:GossipMenuAddItem(9, "5,000,000 XP [5000 gold]", 6, 0)
		Unit:GossipMenuAddItem(9, "Nevermind", 999, 0)
		Unit:GossipSendMenu(player)
	end
	
	if(intid == 999) then -- Closing Gossip Menu
		Unit:SendChatMessage(14, 0, "Come back soon now, ya hear?")
		player:GossipComplete()
	end
	
	if(intid == 1) then -- Buying 1,000 XP For 1 gold
		if(player:GetCoinage() <= 10000) then
			Unit:SendChatMessage(14, 0, "You can't afford this.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		else
		player:DealGoldCost(10000) -- Taking 1 Gold
		player:GiveXp(1000) -- Giving 1,000 XP
		Unit:SendChatMessage(14, 0, "You have bought 1,000 XP for 1 gold.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
	end
		end
	
	if(intid == 2) then -- Buying 10,000 XP for 10 gold
		if(player:GetCoinage() <= 100000) then
			Unit:SendChatMessage(14, 0, "You can't afford this.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		else
		player:DealGoldCost(100000)
		player:GiveXp(10000)
		Unit:SendChatMessage(14, 0, "You have bought 10,000 XP for 10 gold.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
	end
		end
	
	if(intid == 3) then -- Buying 100,000 XP for 100 gold
		if(player:GetCoinage() <= 1000000) then
			Unit:SendChatMessage(14, 0, "You can't afford this.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		else
		player:DealGoldCost(1000000)
		player:GiveXp(100000)
		Unit:SendChatMessage(14, 0, "You have bought 100,000 XP for 100 gold.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		end
	end
	
	if(intid == 4) then -- Buying 500,000 XP for 500 gold
		if(player:GetCoinage() <= 5000000) then
			Unit:SendChatMessage(14, 0, "You can't afford this.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		else
		player:DealGoldCost(5000000)
		player:GiveXp(500000)
		Unit:SendChatMessage(14, 0, "You have bought 500,000 XP for 500 gold.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		end
	end
	
	if(intid == 5) then -- Buying 1,000,000 XP for 1,000 gold
		if(player:GetCoinage() <= 100000000) then
			Unit:SendChatMessage(14, 0, "You can't afford this.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		else
		player:DealGoldCost(100000000)
		player:GiveXp(1000000)
		Unit:SendChatMessage(14, 0, "You have bought 1,000,000 XP for 1000 gold.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		end
	end
	
	if(intid == 6) then -- Buying 5,000,000 XP for 5,000 gold
		if(player:GetCoinage() <= 50000000) then
			Unit:SendChatMessage(14, 0, "You can't afford this.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		else
		player:DealGoldCost(50000000)
		player:GiveXp(5000000)
		Unit:SendChatMessage(14, 0, "You have bought 5,000,000 XP for 5000 gold.")
			Unit:GossipCreateMenu(100, player, 0)
			Unit:GossipMenuAddItem(9, "[Back]", 998, 0)
			Unit:GossipSendMenu(player)
		end
	end
end
RegisterUnitGossipEvent(npcid, 1, "XPGossip")
RegisterUnitGossipEvent(npcid, 2, "XPGossip_OnSelect")