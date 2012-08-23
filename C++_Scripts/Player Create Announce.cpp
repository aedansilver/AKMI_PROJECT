#include "ScriptPCH.h"

class welcome_login : public PlayerScript
{
public:
    welcome_login() : PlayerScript("welcome_login") { }

    void OnLogin(Player* player)
    {
        if (player->GetTotalPlayedTime() < 2)
        {
            /*std::string ClassStr = "";*/
    		/*ClassStr = "Hunter";*/
			char msg[500];
            switch (player->getClass())
            {
            case CLASS_WARRIOR:
			sprintf(msg, "|cff00FF00Welcome new Brother Warrior [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            case CLASS_PALADIN:			
			sprintf(msg, "|cff00FF00Welcome new Brother Paladin [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            case CLASS_HUNTER:			
			sprintf(msg, "|cff00FF00Welcome new Brother Hunter [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            case CLASS_ROGUE:			
			sprintf(msg, "|cff00FF00Welcome new Brother Rogue [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            case CLASS_PRIEST:			
			sprintf(msg, "|cff00FF00Welcome new Brother Priest [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            case CLASS_DEATH_KNIGHT:	
			sprintf(msg, "|cff00FF00Welcome new Brother Death Knight [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            case CLASS_SHAMAN:			
			sprintf(msg, "|cff00FF00Welcome new Brother Shaman [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            case CLASS_MAGE:			
			sprintf(msg, "|cff00FF00Welcome new Brother Mage [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            case CLASS_WARLOCK:			
			sprintf(msg, "|cff00FF00Welcome new Brother Warlock [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            case CLASS_DRUID:			
			sprintf(msg, "|cff00FF00Welcome new Brother Druid [|Hplayer:|h%s|h].", player->GetName(), player->GetName());
			break;
            }
            sWorld->SendServerMessage(SERVER_MSG_STRING, msg);
        }
    }
};

void AddSC_welcome_login()
{
    new welcome_login;
}