//
//  analyticsInterface.h
//  GoogleAnalyticsTestForCocos2dx
//
//  Created by Ahmed Arif Khan on 1/25/15.
//
//

#ifndef __GoogleAnalyticsTestForCocos2dx__analyticsInterface__
#define __GoogleAnalyticsTestForCocos2dx__analyticsInterface__

void callSetScreenName(std::string screenName);
void callSetEventUpdate(std::string screenName, std::string category, std::string action, std::string label, float floatNumber);

#include <stdio.h>

#endif /* defined(__GoogleAnalyticsTestForCocos2dx__analyticsInterface__) */