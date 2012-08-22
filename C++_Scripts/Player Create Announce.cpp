#include "ScriptPCH.h"

class welcome_login : public PlayerScript
{
public:
    welcome_login() : PlayerScript("welcome_login") { }

    void OnLogin(Player* player)
    {
        if (player->GetTotalPlayedTime() < 2)
        {
            std::string ClassStr = "";
            switch (player->getClass())
            {
            case CLASS_WARRIOR:			ClassStr = "Warrior";		break;
            case CLASS_PALADIN:			ClassStr = "Paladin";		break;
            case CLASS_HUNTER:			ClassStr = "Hunter";		break;
            case CLASS_ROGUE:			ClassStr = "Rogue";			break;
            case CLASS_PRIEST:			ClassStr = "Priest";		break;
            case CLASS_DEATH_KNIGHT:	ClassStr = "Death Knight";	break;
            case CLASS_SHAMAN:			ClassStr = "Shaman";		break;
            case CLASS_MAGE:			ClassStr = "Mage";			break;
            case CLASS_WARLOCK:			ClassStr = "Warlock";		break;
            case CLASS_DRUID:			ClassStr = "Druid";			break;
            }
            char msg[500];
            sprintf(msg, "|cff00FF00Welcome new Brother [%s] [%s].", ClassStr, player->GetName());
            sWorld->SendServerMessage(SERVER_MSG_STRING, msg);
        }
    }
};

void AddSC_welcome_login()
{
    new welcome_login;
}