local BadWords = {"bitch","dick","fuck","suck","pussy","puss","fuk","shit","fak","ass","asshole","gay","gays","Gay","Gays","f.u.c.k"}
local Warnings = {}
Swear = {}

function Swear.find(event, player, message, type, language)
	local s = {}
	message:gsub("(%w+)", function(c) table.insert(s,c) end)
	for i = 1, #s do
		if not (table.find(BadWords, s[i])) then
		else
			if(Warnings[player:GetName()] == nil) then
				Warnings[player:GetName()] = 1 
for k,v in pairs(GetPlayersInWorld()) do
v:SendBroadcastMessage("|cffC24641[Warning] player "..player:GetName().." insulting isnt Allowed. Warning Againe!")
				end
				Warnings[player:GetName()] = nill
			else
				Warnings[player:GetName()] = Warnings[player:GetName()] + 1
			end
			return false
		end
	end
end

RegisterServerHook(16, "Swear.find")

function table.find(t, v) 
	if type(t) == "table" and v then
		for k, val in pairs(t) do
			if v == val then
				return true	
			end
		end
	end
	return false
end