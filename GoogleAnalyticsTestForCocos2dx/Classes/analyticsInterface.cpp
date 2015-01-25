//
//  analyticsInterface.cpp
//  GoogleAnalyticsTestForCocos2dx
//
//  Created by Ahmed Arif Khan on 1/25/15.
//
//

#include "analyticsInterface.h"

void setScreenName(std::string screenName);
void setEventUpdate(std::string screenName, std::string category, std::string action, std::string label, float floatNumber);

void callSetScreenName(std::string screenName){
    setScreenName(screenName);
}

void callSetEventUpdate(std::string screenName, std::string category, std::string action, std::string label, float floatNumber){
    setEventUpdate(screenName, category, action, label, floatNumber);
}