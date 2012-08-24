 /*
Project Maintained by Ak47sigh known as Alexe & Midoking.
You can redistribute it and/or modify but not to sell.
Actions against the Copyright will support consequences!
Copyright (C) 2012-2013 AkMi Project <http://www.wow-like.info/>
*/

/* HOW TO INSTALL:
Open chat_handler.cpp file from your project solution->game->..
Search for :
--]]__
case CHAT_MSG_OFFICER:
 {
            if (GetPlayer()->GetGuildId())
            {
                if (Guild* guild = sGuildMgr->GetGuildById(GetPlayer()->GetGuildId()))
                {
                    sScriptMgr->OnPlayerChat(GetPlayer(), type, lang, msg, guild);

                    guild->BroadcastToGuild(this, true, msg, lang == LANG_ADDON ? LANG_ADDON : LANG_UNIVERSAL);
                }
			}
} break;
Replace with:
}
*/

        case CHAT_MSG_OFFICER:
        {
			#define VIP1_COLOR		 "|cffFF0000"
			#define VIP2_COLOR		 "|cff00FFFF"
			#define VIP3_COLOR		 "|cffff00ff"

			uint32 accID = GetPlayer()->GetSession()->GetAccountId();
				QueryResult acc = LoginDatabase.PQuery("SELECT * FROM vip_access WHERE acc_id = '%u'", accID);

				if (!acc)
				{
					sWorld->SendWorldText(12000, GetPlayer()->HasFlag(150, 8) ? " |r<G.M>|r " : " ", GetPlayer()->GetName(), GetPlayer()->GetName(), msg.c_str());
				break;
				}

				Field * accInfo = acc->Fetch();

				switch(accInfo[1].GetInt32())
					{
					case 1:
					sWorld->SendWorldText(12001, GetPlayer()->HasFlag(150, 8) ? " |r<G.M>|r " : " ", VIP1_COLOR, GetPlayer()->GetName(), GetPlayer()->GetName(), msg.c_str()); // do for vip 1
					break;
					case 2:
					sWorld->SendWorldText(12002, GetPlayer()->HasFlag(150, 8) ? " |r<G.M>|r " : " ", VIP2_COLOR, GetPlayer()->GetName(), GetPlayer()->GetName(), msg.c_str()); // u know what's next
					break;
					case 3:
					sWorld->SendWorldText(12003, GetPlayer()->HasFlag(150, 8) ? " |r<G.M>|r " : " ", VIP3_COLOR, GetPlayer()->GetName(), GetPlayer()->GetName(), msg.c_str());
					break;
				}
        } break;