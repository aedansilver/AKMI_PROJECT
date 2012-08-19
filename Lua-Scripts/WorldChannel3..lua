local ChatMsg = ".1"
-- local Space = " "


function ChatSystem (event, player, message, type, language)
	if (message:find(ChatMsg.." ") == 1) then
		local text = message:gsub(ChatMsg.." ", "") 
				local plrs = GetPlayersInWorld()
				for k, v in pairs(plrs) do
			if (player:GetTeam() == 0) then -- Alliance
			local GMrank = player:GetGmRank()
			if (GMrank == 'az') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<Admin> |cff7DFF00[|cffFF0000"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip6 Tag
                       
			elseif (GMrank == 'a') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFFFF00<Head.GMs> |cff7DFF00[|cffFFFF00"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- REGULAR GM Tag

			      elseif (GMrank == 's') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<V.I.P>|cff7DFF00 [|cffFFFF00"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip4 Tag
			      elseif (GMrank == 'f') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<V.I.P>|cff7DFF00 [|cffFFFC17"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip3 Tag
			      elseif (GMrank == 't') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<V.I.P>|cff7DFF00 [|cffC85A17"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip2 Tag
			      elseif (GMrank == 'o') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<V.I.P>|cff7DFF00 [|cffFBB917"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip1 Tag
			      elseif (GMrank == 'b') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFFFC17<G.M>|cff7DFF00 [|cff7E3817"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Normal GM Tag
			      else
				v:SendBroadcastMessage("|cff7DFF00[World Channel] [|cff7DFF00"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Player Tag		
				end
			elseif (player:GetTeam() == 1) then -- Horde
			local GMrank = player:GetGmRank()
			if (GMrank == 'az') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<Admin> |cff7DFF00[|cffFF0000"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip6 Tag
                       
			elseif (GMrank == 'a') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFFFF00<Head.GMs> |cff7DFF00[|cffFFFF00"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- REGULAR GM Tag

			      elseif (GMrank == 's') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<V.I.P>|cff7DFF00 [|cffFFFF00"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip4 Tag
			      elseif (GMrank == 'f') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<V.I.P>|cff7DFF00 [|cffFFFC17"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip3 Tag
			      elseif (GMrank == 't') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<V.I.P>|cff7DFF00 [|cffC85A17"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip2 Tag
			      elseif (GMrank == 'o') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFF0000<V.I.P>|cff7DFF00 [|cffFBB917"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Vip1 Tag
			      elseif (GMrank == 'b') then
				v:SendBroadcastMessage("|cff7DFF00[World Channel] |cffFFFC17<G.M>|cff7DFF00 [|cff7E3817"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Normal GM Tag
			      else
				v:SendBroadcastMessage("|cff7DFF00[World Channel] [|cff7DFF00"..player:GetName().."|cff7DFF00]: |cff7DFF00"..text.."") -- Player Tag		
				end					end
						end
                                                     return 0
							end
                                                           
								end

RegisterServerHook(16, "ChatSystem")