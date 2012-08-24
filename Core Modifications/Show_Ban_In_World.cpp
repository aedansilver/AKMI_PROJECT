 /*
Project Maintained by Ak47sigh known as Alexe & Midoking.
You can redistribute it and/or modify but not to sell.
Actions against the Copyright will support consequences!
Copyright (C) 2012-2013 AkMi Project <http://www.wow-like.info/>
*/

/* HOW TO INSTALL:
Open cs_ban.cpp file from your project solution->scripts->..
Search for :
--]]__
static bool HandleBanCharacterCommand(ChatHandler* handler, char const* args)
    {
        if (!*args)
            return false;

        char* nameStr = strtok((char*)args, " ");
        if (!nameStr)
            return false;

        std::string name = nameStr;

        char* durationStr = strtok(NULL, " ");
        if (!durationStr || !atoi(durationStr))
            return false;

        char* reasonStr = strtok(NULL, "");
        if (!reasonStr)
            return false;

        if (!normalizePlayerName(name))
        {
            handler->SendSysMessage(LANG_PLAYER_NOT_FOUND);
            handler->SetSentErrorMessage(true);
            return false;
        }

        switch (sWorld->BanCharacter(name, durationStr, reasonStr, handler->GetSession() ? handler->GetSession()->GetPlayerName() : ""))
        {
            case BAN_SUCCESS:
            {
...................................
Replace with:
}
*/

     static bool HandleBanCharacterCommand(ChatHandler* handler, char const* args)
    {
        if (!*args)
            return false;

        char* nameStr = strtok((char*)args, " ");
        if (!nameStr)
            return false;

        std::string name = nameStr;

        char* durationStr = strtok(NULL, " ");
        if (!durationStr || !atoi(durationStr))
            return false;

        char* reasonStr = strtok(NULL, "");
        if (!reasonStr)
            return false;

        if (!normalizePlayerName(name))
        {
            handler->SendSysMessage(LANG_PLAYER_NOT_FOUND);
            handler->SetSentErrorMessage(true);
            return false;
        }

        switch (sWorld->BanCharacter(name, durationStr, reasonStr, handler->GetSession() ? handler->GetSession()->GetPlayerName().c_str() : ""))
        {
            case BAN_SUCCESS:
            {
                if (atoi(durationStr) > 0)
                    handler->PSendSysMessage(LANG_BAN_YOUBANNED, name.c_str(), secsToTimeString(TimeStringToSecs(durationStr), true).c_str(), reasonStr);
                else
                    handler->PSendSysMessage(LANG_BAN_YOUPERMBANNED, name.c_str(), reasonStr);
		// past this comment wont affect else
		sWorld->SendWorldText(12100, name.c_str(), handler->GetSession()->GetPlayer()->GetName(), atoi(durationStr) > 0 ? "duration (%s)", secsToTimeString(TimeStringToSecs(durationStr), true).c_str() : "permanently", reasonStr);
                break;
            }
            case BAN_NOTFOUND:
            {
                handler->PSendSysMessage(LANG_BAN_NOTFOUND, "character", name.c_str());
                handler->SetSentErrorMessage(true);
                return false;
            }
            default:
                break;
        }

        return true;
    }