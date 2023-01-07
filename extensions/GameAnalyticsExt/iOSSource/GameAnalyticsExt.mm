//
//  GameAnalyticsUnity.m
//  GA-SDK-IOS
//
//  Copyright (c) GameAnalytics. All rights reserved.
//

#import "GameAnalyticsExt.h"
#import "GameAnalytics.h"

@implementation GameAnalyticsExt

-(void)configureAvailableCustomDimensions01:(char *)list
{
    NSString *list_string = list != NULL ? [NSString stringWithUTF8String:list] : nil;
    NSArray *list_array = nil;
    if (list_string) {
        list_array = [NSJSONSerialization JSONObjectWithData:[list_string dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    }
    [GameAnalytics configureAvailableCustomDimensions01:list_array];
}

-(void)configureAvailableCustomDimensions02:(char *)list
{
    NSString *list_string = list != NULL ? [NSString stringWithUTF8String:list] : nil;
    NSArray *list_array = nil;
    if (list_string) {
        list_array = [NSJSONSerialization JSONObjectWithData:[list_string dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    }
    [GameAnalytics configureAvailableCustomDimensions02:list_array];
}

-(void)configureAvailableCustomDimensions03:(char *)list
{
    NSString *list_string = list != NULL ? [NSString stringWithUTF8String:list] : nil;
    NSArray *list_array = nil;
    if (list_string) {
        list_array = [NSJSONSerialization JSONObjectWithData:[list_string dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    }
    [GameAnalytics configureAvailableCustomDimensions03:list_array];
}

-(void)configureAvailableResourceCurrencies:(char *)list
{
    NSString *list_string = list != NULL ? [NSString stringWithUTF8String:list] : nil;
    NSArray *list_array = nil;
    if (list_string) {
        list_array = [NSJSONSerialization JSONObjectWithData:[list_string dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    }
    [GameAnalytics configureAvailableResourceCurrencies:list_array];
}

-(void)configureAvailableResourceItemTypes:(char *)list
{
    NSString *list_string = list != NULL ? [NSString stringWithUTF8String:list] : nil;
    NSArray *list_array = nil;
    if (list_string) {
        list_array = [NSJSONSerialization JSONObjectWithData:[list_string dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    }
    [GameAnalytics configureAvailableResourceItemTypes:list_array];
}

-(void)configureSdkGameEngineVersion:(char *)gameEngineSdkVersion
{
    NSString *gameEngineSdkVersionString = gameEngineSdkVersion != NULL ? [NSString stringWithUTF8String:gameEngineSdkVersion] : nil;
    [GameAnalytics configureSdkVersion:gameEngineSdkVersionString];
}

-(void)configureGameEngineVersion:(char *)gameEngineVersion
{
    NSString *gameEngineVersionString = gameEngineVersion != NULL ? [NSString stringWithUTF8String:gameEngineVersion] : nil;
    [GameAnalytics configureEngineVersion:gameEngineVersionString];
}

-(void)configureBuild:(char *)build
{
    NSString *buildString = build != NULL ? [NSString stringWithUTF8String:build] : nil;
    [GameAnalytics configureBuild:buildString];
}

-(void)configureUserId:(char *)userId
{
    NSString *userIdString = userId != NULL ? [NSString stringWithUTF8String:userId] : nil;
    [GameAnalytics configureUserId:userIdString];
}

-(void)initialize:(char *)gameKey gameSecret:(char *)gameSecret{
    NSString *gameKeyString = gameKey != NULL ? [NSString stringWithUTF8String:gameKey] : nil;
    NSString *gameSecretString = gameSecret != NULL ? [NSString stringWithUTF8String:gameSecret] : nil;
    [GameAnalytics initializeWithGameKey:gameKeyString gameSecret:gameSecretString];
}

-(void)addBusinessEventJson:(char *)json
{
    NSString *json_string = json != NULL ? [NSString stringWithUTF8String:json] : nil;

    if(json_string)
    {
        NSArray *array = [NSJSONSerialization JSONObjectWithData:[json_string dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
        [GameAnalytics addBusinessEventWithCurrency:[array objectAtIndex:0]
                                             amount:[[array objectAtIndex:1] integerValue]
                                           itemType:[array objectAtIndex:2]
                                             itemId:[array objectAtIndex:3]
                                           cartType:[array objectAtIndex:4]
                                            receipt:nil];
    }
}

-(void)addBusinessEvent:(char *)currency amount:(double)amount itemType:(char *)itemType itemId:(char *)itemId cartType:(char *)cartType
{
    NSString *currencyString = currency != NULL ? [NSString stringWithUTF8String:currency] : nil;
    NSInteger amountInteger = (NSInteger)((int)amount);
    NSString *itemTypeString = itemType != NULL ? [NSString stringWithUTF8String:itemType] : nil;
    NSString *itemIdString = itemId != NULL ? [NSString stringWithUTF8String:itemId] : nil;
    NSString *cartTypeString = cartType != NULL ? [NSString stringWithUTF8String:cartType] : nil;
    NSString *receiptString = nil;

    [GameAnalytics addBusinessEventWithCurrency:currencyString
                                         amount:amountInteger
                                       itemType:itemTypeString
                                         itemId:itemIdString
                                       cartType:cartTypeString
                                        receipt:receiptString];
}

-(void)addBusinessEventWithReceipt:(char *)currency amount:(double)amount itemType:(char *)itemType itemId:(char *)itemId cartType:(char *)cartType receipt:(char *)receipt
{
    NSString *currencyString = currency != NULL ? [NSString stringWithUTF8String:currency] : nil;
    NSInteger amountInteger = (NSInteger)((int)amount);
    NSString *itemTypeString = itemType != NULL ? [NSString stringWithUTF8String:itemType] : nil;
    NSString *itemIdString = itemId != NULL ? [NSString stringWithUTF8String:itemId] : nil;
    NSString *cartTypeString = cartType != NULL ? [NSString stringWithUTF8String:cartType] : nil;
    NSString *receiptString = receipt != NULL ? [NSString stringWithUTF8String:receipt] : nil;

    [GameAnalytics addBusinessEventWithCurrency:currencyString
                                         amount:amountInteger
                                       itemType:itemTypeString
                                         itemId:itemIdString
                                       cartType:cartTypeString
                                        receipt:receiptString];
}

-(void)addBusinessEventAndAutoFetchReceipt:(char *)currency amount:(double)amount itemType:(char *)itemType itemId:(char *)itemId cartType:(char *)cartType
{
    NSString *currencyString = currency != NULL ? [NSString stringWithUTF8String:currency] : nil;
    NSInteger amountInteger = (NSInteger)((int)amount);
    NSString *itemTypeString = itemType != NULL ? [NSString stringWithUTF8String:itemType] : nil;
    NSString *itemIdString = itemId != NULL ? [NSString stringWithUTF8String:itemId] : nil;
    NSString *cartTypeString = cartType != NULL ? [NSString stringWithUTF8String:cartType] : nil;

    [GameAnalytics addBusinessEventWithCurrency:currencyString
                                         amount:amountInteger
                                       itemType:itemTypeString
                                         itemId:itemIdString
                                       cartType:cartTypeString
                               autoFetchReceipt:TRUE];
}

-(void)addResourceEventJson:(char *)json
{
    NSString *json_string = json != NULL ? [NSString stringWithUTF8String:json] : nil;

    if(json_string)
    {
        NSArray *array = [NSJSONSerialization JSONObjectWithData:[json_string dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
        [GameAnalytics addResourceEventWithFlowType:(GAResourceFlowType)[[array objectAtIndex:0] intValue]
                                           currency:[array objectAtIndex:1]
                                             amount:[array objectAtIndex:2]
                                           itemType:[array objectAtIndex:3]
                                             itemId:[array objectAtIndex:4]];
    }
}

-(void)addResourceEvent:(double)flowType currency:(char *)currency amount:(double)amount itemType:(char *)itemType itemId:(char *)itemId
{
    NSString *currencyString = currency != NULL ? [NSString stringWithUTF8String:currency] : nil;
    NSNumber *amountNumber = [NSNumber numberWithFloat:amount];
    NSString *itemTypeString = itemType != NULL ? [NSString stringWithUTF8String:itemType] : nil;
    NSString *itemIdString = itemId != NULL ? [NSString stringWithUTF8String:itemId] : nil;
    int flowTypeInt = (int)flowType;

    [GameAnalytics addResourceEventWithFlowType:(GAResourceFlowType)flowTypeInt
                                       currency:currencyString
                                         amount:amountNumber
                                       itemType:itemTypeString
                                         itemId:itemIdString];
}

-(void)addProgressionEvent:(double)progressionStatus progression01:(char *)progression01 progression02:(char *)progression02 progression03:(char *)progression03
{
    NSString *progression01String = progression01 != NULL ? [NSString stringWithUTF8String:progression01] : nil;
    NSString *progression02String = progression02 != NULL ? [NSString stringWithUTF8String:progression02] : nil;
    NSString *progression03String = progression03 != NULL ? [NSString stringWithUTF8String:progression03] : nil;
    int progressionStatusInt = (int)progressionStatus;

    if(progression01String && progression01String.length == 0)
    {
        progression01String = nil;
    }
    if(progression02String && progression02String.length == 0)
    {
        progression02String = nil;
    }
    if(progression03String && progression03String.length == 0)
    {
        progression03String = nil;
    }

    [GameAnalytics addProgressionEventWithProgressionStatus:(GAProgressionStatus)progressionStatusInt
                                              progression01:progression01String
                                              progression02:progression02String
                                              progression03:progression03String];
}

-(void)addProgressionEventWithScoreJson:(char *)json
{
    NSString *json_string = json != NULL ? [NSString stringWithUTF8String:json] : nil;

    if(json_string)
    {
        NSArray *array = [NSJSONSerialization JSONObjectWithData:[json_string dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];

        NSString *progression01String = [array objectAtIndex:1];
        NSString *progression02String = [array objectAtIndex:2];
        NSString *progression03String = [array objectAtIndex:3];

        if(progression01String && progression01String.length == 0)
        {
            progression01String = nil;
        }
        if(progression02String && progression02String.length == 0)
        {
            progression02String = nil;
        }
        if(progression03String && progression03String.length == 0)
        {
            progression03String = nil;
        }

        [GameAnalytics addProgressionEventWithProgressionStatus:(GAProgressionStatus)[[array objectAtIndex:0] intValue]
                                                  progression01:progression01String
                                                  progression02:progression02String
                                                  progression03:progression03String
                                                          score:[[array objectAtIndex:4] integerValue]];
    }
}

-(void)addProgressionEventWithScore:(double)progressionStatus progression01:(char *)progression01 progression02:(char *)progression02 progression03:(char *)progression03 score:(double)score
{
    NSString *progression01String = progression01 != NULL ? [NSString stringWithUTF8String:progression01] : nil;
    NSString *progression02String = progression02 != NULL ? [NSString stringWithUTF8String:progression02] : nil;
    NSString *progression03String = progression03 != NULL ? [NSString stringWithUTF8String:progression03] : nil;
    int progressionStatusInt = (int)progressionStatus;

    if(progression01String && progression01String.length == 0)
    {
        progression01String = nil;
    }
    if(progression02String && progression02String.length == 0)
    {
        progression02String = nil;
    }
    if(progression03String && progression03String.length == 0)
    {
        progression03String = nil;
    }

    [GameAnalytics addProgressionEventWithProgressionStatus:(GAProgressionStatus)progressionStatusInt
                                              progression01:progression01String
                                              progression02:progression02String
                                              progression03:progression03String
                                                      score:score];
}

-(void)addDesignEvent:(char *)eventId
{
    NSString *eventIdString = eventId != NULL ? [NSString stringWithUTF8String:eventId] : nil;

    [GameAnalytics addDesignEventWithEventId:eventIdString value:nil];
}

-(void)addDesignEventWithValue:(char *)eventId value:(double)value
{
    NSString *eventIdString = eventId != NULL ? [NSString stringWithUTF8String:eventId] : nil;
    NSNumber *valueNumber = [NSNumber numberWithDouble:value];

    [GameAnalytics addDesignEventWithEventId:eventIdString value:valueNumber];
}

-(void)addErrorEvent:(double)severity message:(char *)message
{
    NSString *messageString = message != NULL ? [NSString stringWithUTF8String:message] : nil;
    int severityInt = (int)severity;

    [GameAnalytics addErrorEventWithSeverity:(GAErrorSeverity)severityInt message:messageString];
}

-(void)setEnabledInfoLog:(double)flag
{
    [GameAnalytics setEnabledInfoLog:(flag != 0.0)];
}

-(void)setEnabledVerboseLog:(double)flag
{
    [GameAnalytics setEnabledVerboseLog:(flag != 0.0)];
}

-(void)setManualSessionHandling:(double)flag
{
    [GameAnalytics setEnabledManualSessionHandling:(flag != 0.0)];
}

-(void)startSession
{
    [GameAnalytics startSession];
}

-(void)endSession
{
    [GameAnalytics endSession];
}

-(void)setCustomDimension01:(char *)customDimension
{
    NSString *customDimensionString = customDimension != NULL ? [NSString stringWithUTF8String:customDimension] : nil;
    [GameAnalytics setCustomDimension01:customDimensionString];
}

-(void)setCustomDimension02:(char *)customDimension
{
    NSString *customDimensionString = customDimension != NULL ? [NSString stringWithUTF8String:customDimension] : nil;
    [GameAnalytics setCustomDimension02:customDimensionString];
}

-(void)setCustomDimension03:(char *)customDimension
{
    NSString *customDimensionString = customDimension != NULL ? [NSString stringWithUTF8String:customDimension] : nil;
    [GameAnalytics setCustomDimension03:customDimensionString];
}

-(const char *)getRemoteConfigsValueAsString:(char *)key
{
    NSString *keyString = key != NULL ? [NSString stringWithUTF8String:key] : nil;
    NSString *result = [GameAnalytics getRemoteConfigsValueAsString:keyString];

    return result != nil ? [result UTF8String] : NULL;
}

-(const char *)getRemoteConfigsValueAsStringWithDefaultValue:(char *)key defaultValue:(char *)defaultValue
{
    NSString *keyString = key != NULL ? [NSString stringWithUTF8String:key] : nil;
    NSString *defaultValueString = key != NULL ? [NSString stringWithUTF8String:defaultValue] : nil;
    NSString *result = [GameAnalytics getRemoteConfigsValueAsString:keyString defaultValue:defaultValueString];

    return result != nil ? [result UTF8String] : NULL;
}

-(double)isRemoteConfigsReady
{
    return [GameAnalytics isRemoteConfigsReady] ? 1 : 0;
}

-(const char *)getRemoteConfigsContentAsString
{
    NSString *result = [GameAnalytics getRemoteConfigsConfigurations];
    return result != nil ? [result UTF8String] : NULL;
}

@end
