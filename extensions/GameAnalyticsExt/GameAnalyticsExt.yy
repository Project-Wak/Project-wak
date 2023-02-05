{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "GameAnalyticsExt",
  "androidactivityinject": "",
  "androidclassname": "GameAnalyticsExt",
  "androidcodeinjection": "<YYAndroidGradleDependencies>\nrepositories {\n    maven { url 'https://maven.gameanalytics.com/release' }\n    maven { url 'https://maven.google.com' }\n}\n\ndependencies {\n    implementation \"com.gameanalytics.sdk:gameanalytics-android:6.2.9\"\n    implementation 'com.google.android.gms:play-services-appset:16.0.2'\n}\n</YYAndroidGradleDependencies>",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [
    "android.permission.INTERNET",
    "android.permission.ACCESS_NETWORK_STATE",
  ],
  "androidProps": true,
  "androidsourcedir": "",
  "author": "",
  "classname": "GameAnalyticsExt",
  "copyToTargets": 35184372089070,
  "date": "2017-08-18T02:12:48",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "4.0.7",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"GameAnalytics.js","final":"","functions":[],"init":"","kind":5,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_DEBUG","hidden":false,"value":"1",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_INFO","hidden":false,"value":"2",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_WARNING","hidden":false,"value":"3",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_ERROR","hidden":false,"value":"4",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_CRITICAL","hidden":false,"value":"5",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_RESOURCEFLOWTYPE_SOURCE","hidden":false,"value":"1",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_RESOURCEFLOWTYPE_SINK","hidden":false,"value":"2",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_PROGRESSIONSTATUS_START","hidden":false,"value":"1",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_PROGRESSIONSTATUS_COMPLETE","hidden":false,"value":"2",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_PROGRESSIONSTATUS_FAIL","hidden":false,"value":"3",},
      ],"copyToTargets":35184372089070,"filename":"GameAnalyticsExt.ext","final":"","functions":[],"init":"","kind":4,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":8,"filename":"GameAnalyticsAndroid.ext","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventWithReceiptAndroid","argCount":0,"args":[
            1,
            2,
            1,
            1,
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"addBusinessEventWithReceipt","help":"addBusinessEventWithReceiptAndroid(currency:string, amount:double, itemType:string, itemId:string, cartType:string, receipt:string, store:string, signature:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_android","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledInfoLog","help":"setEnabledInfoLog_android(flag:bool)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_android","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledVerboseLog","help":"setEnabledVerboseLog_android(flag:bool)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions01","help":"configureAvailableCustomDimensions01_android(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions02","help":"configureAvailableCustomDimensions02_android(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions03","help":"configureAvailableCustomDimensions03_android(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceCurrencies","help":"configureAvailableResourceCurrencies_android(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceItemTypes","help":"configureAvailableResourceItemTypes_android(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureBuild","help":"configureBuild_android(build:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureUserId","help":"configureUserId_android(id:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_android","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"initialize","help":"native_ga_initialize_android(key:string, secret:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureSdkGameEngineVersion","help":"configureSdkGameEngineVersion_android(version:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureGameEngineVersion","help":"configureGameEngineVersion_android(version:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_android","argCount":0,"args":[
            2,
            1,
            1,
            1,
          ],"documentation":"","externalName":"addProgressionEvent","help":"addProgressionEvent_android(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addDesignEvent","help":"addDesignEvent_android(eventId:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_android","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"addDesignEventWithValue","help":"addDesignEventWithValue_android(eventId:string, value:double)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_android","argCount":0,"args":[
            2,
            1,
          ],"documentation":"","externalName":"addErrorEvent","help":"addErrorEvent_android(severity:double, message:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_android","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledManualSessionHandling","help":"setEnabledManualSessionHandling_android(flag:bool)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension01","help":"setCustomDimension01_android(dimension:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension02","help":"setCustomDimension02_android(dimension:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension03","help":"setCustomDimension03_android(dimension:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_android","argCount":0,"args":[],"documentation":"","externalName":"startSession","help":"startSession_android()","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_android","argCount":0,"args":[],"documentation":"","externalName":"endSession","help":"endSession_android()","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addBusinessEventJson","help":"addBusinessEventJson_android(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addResourceEventJson","help":"addResourceEventJson_android(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventWithScoreJson","help":"addProgressionEventWithScoreJson_android(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_android","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsString","help":"getRemoteConfigsValueAsString_android(key:string)","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_android","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","help":"getRemoteConfigsValueAsStringWithDefaultValue_android(key:string, defaultValue:string","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_android","argCount":0,"args":[],"documentation":"","externalName":"isRemoteConfigsReady","help":"isRemoteConfigsReady_android()","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_android","argCount":0,"args":[],"documentation":"","externalName":"getRemoteConfigsContentAsString","help":"getRemoteConfigsContentAsString_android()","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_android","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledEventSubmission","help":"setEnabledEventSubmission_android(flag:bool)","hidden":false,"kind":4,"returnType":2,},
      ],"init":"","kind":4,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":4,"filename":"GameAnalyticsIOS.ext","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventWithReceiptIOS","argCount":0,"args":[
            1,
            2,
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"addBusinessEventWithReceipt","help":"addBusinessEventWithReceiptIOS(currency:string, amount:double, itemType:string, itemId:string, cartType:string, receipt:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventAndAutoFetchReceipt","argCount":0,"args":[
            1,
            2,
            1,
            1,
            1,
          ],"documentation":"","externalName":"addBusinessEventAndAutoFetchReceipt","help":"addBusinessEventAndAutoFetchReceipt(currency:string, amount:double, itemType:string, itemId:string, cartType:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_ios","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledInfoLog","help":"setEnabledInfoLog_ios(flag:bool)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_ios","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledVerboseLog","help":"setEnabledVerboseLog_ios(flag:bool)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions01","help":"configureAvailableCustomDimensions01_ios(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_ios","argCount":0,"args":[],"documentation":"","externalName":"configureAvailableCustomDimensions02","help":"configureAvailableCustomDimensions01_ios(json:string)","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions03","help":"configureAvailableCustomDimensions03_ios(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceCurrencies","help":"configureAvailableResourceCurrencies_ios(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceItemTypes","help":"configureAvailableResourceItemTypes_ios(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureBuild","help":"configureBuild_ios(build:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureUserId","help":"configureUserId_ios(id:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_ios","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"initialize","help":"native_ga_initialize_ios(key:string, secret:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureSdkGameEngineVersion","help":"configureSdkGameEngineVersion_ios(version:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureGameEngineVersion","help":"configureGameEngineVersion_ios(version:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_ios","argCount":0,"args":[
            2,
            1,
            1,
            1,
          ],"documentation":"","externalName":"addProgressionEvent","help":"addProgressionEvent_ios(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addDesignEvent","help":"addDesignEvent_ios(eventId:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_ios","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"addDesignEventWithValue","help":"addDesignEventWithValue_ios(eventId:string, value:double)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_ios","argCount":0,"args":[
            2,
            1,
          ],"documentation":"","externalName":"addErrorEvent","help":"addErrorEvent_ios(severity:double, message:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_ios","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledManualSessionHandling","help":"setEnabledManualSessionHandling_ios(flag:bool)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension01","help":"setCustomDimension01_ios(dimension:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension02","help":"setCustomDimension02_ios(dimension:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension03","help":"setCustomDimension03_ios(dimension:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_ios","argCount":0,"args":[],"documentation":"","externalName":"startSession","help":"startSession_ios()","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_ios","argCount":0,"args":[],"documentation":"","externalName":"endSession","help":"endSession_ios()","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addBusinessEventJson","help":"addBusinessEventJson_ios(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addResourceEventJson","help":"addResourceEventJson_ios(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventWithScoreJson","help":"addProgressionEventWithScoreJson_ios(json:string)","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_ios","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsString","help":"getRemoteConfigsValueAsString_ios(key:string)","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_ios","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","help":"getRemoteConfigsValueAsStringWithDefaultValue_ios(key:string, defaultValue:string)","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_ios","argCount":0,"args":[],"documentation":"","externalName":"isRemoteConfigsReady","help":"isRemoteConfigsReady_ios()","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_ios","argCount":0,"args":[],"documentation":"","externalName":"getRemoteConfigsContentAsString","help":"getRemoteConfigsContentAsString_ios()","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_ios","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledEventSubmission","help":"setEnabledManualSessionHandling_ios(flag:bool)","hidden":false,"kind":4,"returnType":2,},
      ],"init":"","kind":4,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":32,"filename":"GameAnalyticsExt.js","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_html","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledInfoLog","help":"setEnabledInfoLog_html(flag:bool)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_html","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledVerboseLog","help":"setEnabledVerboseLog_html(flag:bool)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions01","help":"configureAvailableCustomDimensions01_html(json:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions02","help":"configureAvailableCustomDimensions02_html(json:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions03","help":"configureAvailableCustomDimensions03_html(json:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceCurrencies","help":"configureAvailableResourceCurrencies_html(json:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceItemTypes","help":"configureAvailableResourceItemTypes(json:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_html","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"configureBuild","help":"configureBuild_html(build:string)","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureUserId","help":"configureUserId(id:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_html","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"initialize","help":"native_ga_initialize_html(key:string, secret:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureSdkGameEngineVersion","help":"configureSdkGameEngineVersion_html(version:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureGameEngineVersion","help":"configureGameEngineVersion_html(version:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_html","argCount":0,"args":[
            2,
            1,
            1,
            1,
          ],"documentation":"","externalName":"addProgressionEvent","help":"addProgressionEvent_html(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addDesignEvent","help":"addDesignEvent_html(eventId:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_html","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"addDesignEventWithValue","help":"addDesignEventWithValue(eventId:string, value:double)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_html","argCount":0,"args":[
            2,
            1,
          ],"documentation":"","externalName":"addErrorEvent","help":"addErrorEvent_html(severity:double, message:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_html","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledManualSessionHandling","help":"setEnabledManualSessionHandling_html(flag:bool)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension01","help":"setCustomDimension01_html(dimension:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension02","help":"setCustomDimension02_html(dimension:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension03","help":"setCustomDimension03_html(dimension:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_html","argCount":0,"args":[],"documentation":"","externalName":"startSession","help":"startSession_html()","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_html","argCount":0,"args":[],"documentation":"","externalName":"endSession","help":"endSession_html()","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_html","argCount":0,"args":[],"documentation":"","externalName":"onStop","help":"onStop_html()","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_html","argCount":0,"args":[],"documentation":"","externalName":"onResume","help":"onResume_html()","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addBusinessEventJson","help":"addBusinessEventJson_html(json:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addResourceEventJson","help":"addResourceEventJson_html(json:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventWithScoreJson","help":"addProgressionEventWithScoreJson_html(json:string)","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_html","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsString","help":"getRemoteConfigsValueAsString_html(key:string)","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_html","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","help":"getRemoteConfigsValueAsStringWithDefaultValue_html(key:string, defaultValue:string)","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_html","argCount":0,"args":[],"documentation":"","externalName":"isRemoteConfigsReady","help":"isRemoteConfigsReady_html()","hidden":false,"kind":5,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_html","argCount":0,"args":[],"documentation":"","externalName":"getRemoteConfigsContentAsString","help":"getRemoteConfigsContentAsString_html()","hidden":false,"kind":5,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_html","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledEventSubmission","help":"setEnabledEventSubmission_html(flag:bool)","hidden":false,"kind":5,"returnType":2,},
      ],"init":"","kind":5,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":2,"filename":"libGameAnalytics.dylib","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_mac","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledInfoLog","help":"setEnabledInfoLog_mac(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_mac","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledVerboseLog","help":"setEnabledVerboseLog_mac(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions01","help":"configureAvailableCustomDimensions01_mac(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions02","help":"configureAvailableCustomDimensions02_mac(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions03","help":"configureAvailableCustomDimensions03_mac(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceCurrencies","help":"configureAvailableResourceCurrencies_mac(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceItemTypes","help":"configureAvailableResourceItemTypes_mac(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureBuild","help":"configureBuild_mac(build:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureUserId","help":"configureUserId_mac(id:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_mac","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"initialize","help":"native_ga_initialize(key:string, secret:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_mac","argCount":0,"args":[],"documentation":"","externalName":"configureSdkGameEngineVersion","help":"configureSdkGameEngineVersion_mac(version:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureGameEngineVersion","help":"configureGameEngineVersion_mac(version:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventJson","help":"addProgressionEvent_mac(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_mac","argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"","externalName":"addDesignEvent","help":"addDesignEvent_mac(eventId:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_mac","argCount":0,"args":[
            1,
            2,
            1,
            2,
          ],"documentation":"","externalName":"addDesignEventWithValue","help":"addDesignEventWithValue_mac(eventId:string, value:double)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_mac","argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"","externalName":"addErrorEvent","help":"addErrorEvent(severity:double, message:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_mac","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledManualSessionHandling","help":"setEnabledManualSessionHandling_mac(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension01","help":"setCustomDimension01_mac(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension02","help":"setCustomDimension02_mac(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension03","help":"setCustomDimension03_mac(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_mac","argCount":0,"args":[],"documentation":"","externalName":"gameAnalyticsStartSession","help":"startSession_mac()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_mac","argCount":0,"args":[],"documentation":"","externalName":"gameAnalyticsEndSession","help":"endSession_mac()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_mac","argCount":0,"args":[],"documentation":"","externalName":"onQuit","help":"onStop_mac()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_mac","argCount":0,"args":[],"documentation":"","externalName":"onResume","help":"onResume_mac()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addBusinessEventJson","help":"addBusinessEventJson_mac(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addResourceEventJson","help":"addResourceEventJson_mac(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventWithScoreJson","help":"addProgressionEventWithScoreJson_mac(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_mac","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsString","help":"getRemoteConfigsValueAsString_mac(key:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"GameAnalyticsExt_Function32","argCount":0,"args":[],"documentation":"","externalName":"","help":"","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_mac","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","help":"getRemoteConfigsValueAsStringWithDefaultValue_mac(key:string, defaultValue:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_mac","argCount":0,"args":[],"documentation":"","externalName":"isRemoteConfigsReady","help":"isRemoteConfigsReady_mac()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_mac","argCount":0,"args":[],"documentation":"","externalName":"getRemoteConfigsContentAsString","help":"getRemoteConfigsContentAsString_mac()","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_mac","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledEventSubmission","help":"setEnabledEventSubmission_mac(flag:bool)","hidden":false,"kind":1,"returnType":2,},
      ],"init":"","kind":1,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":64,"filename":"GameAnalytics.dll","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_windows","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledInfoLog","help":"setEnabledInfoLog_windows(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_windows","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledVerboseLog","help":"setEnabledVerboseLog_windows(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions01","help":"configureAvailableCustomDimensions01_windows(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions02","help":"configureAvailableCustomDimensions02_windows(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions03","help":"configureAvailableCustomDimensions03_windows(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceCurrencies","help":"configureAvailableResourceCurrencies_windows(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceItemTypes","help":"configureAvailableResourceItemTypes_windows(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureBuild","help":"configureBuild_windows(build:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureUserId","help":"configureUserId_windows(id:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_windows","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"initialize","help":"native_ga_initialize_windows(key:string, secret:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureSdkGameEngineVersion","help":"configureSdkGameEngineVersion_windows(version:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureGameEngineVersion","help":"configureGameEngineVersion_windows(version:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventJson","help":"addProgressionEvent_windows(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_windows","argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"","externalName":"addDesignEvent","help":"addDesignEvent_windows(eventId:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_windows","argCount":0,"args":[
            1,
            2,
            1,
            2,
          ],"documentation":"","externalName":"addDesignEventWithValue","help":"addDesignEventWithValue_windows(eventId:string, value:double)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_windows","argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"","externalName":"addErrorEvent","help":"addErrorEvent_windows(severity:double, message:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_windows","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledManualSessionHandling","help":"setEnabledManualSessionHandling_windows(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension01","help":"setCustomDimension01_windows(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension02","help":"setCustomDimension02_windows(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension03","help":"setCustomDimension03_windows(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_windows","argCount":0,"args":[],"documentation":"","externalName":"gameAnalyticsStartSession","help":"startSession_windows()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_windows","argCount":0,"args":[],"documentation":"","externalName":"gameAnalyticsEndSession","help":"endSession_windows()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_windows","argCount":0,"args":[],"documentation":"","externalName":"onQuit","help":"onStop_windows()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_windows","argCount":0,"args":[],"documentation":"","externalName":"onResume","help":"onResume_windows()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addBusinessEventJson","help":"addBusinessEventJson_windows(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addResourceEventJson","help":"addResourceEventJson(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventWithScoreJson","help":"addProgressionEventWithScoreJson_windows(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_windows","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsString","help":"getRemoteConfigsValueAsString_windows(key:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_windows","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","help":"getRemoteConfigsValueAsStringWithDefaultValue_windows(key:string, defaultValue:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_windows","argCount":0,"args":[],"documentation":"","externalName":"isRemoteConfigsReady","help":"isRemoteConfigsReady_windows()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_windows","argCount":0,"args":[],"documentation":"","externalName":"getRemoteConfigsContentAsString","help":"getRemoteConfigsContentAsString_windows()","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_windows","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledEventSubmission","help":"setEnabledEventSubmission_windows(flag:bool)","hidden":false,"kind":1,"returnType":2,},
      ],"init":"","kind":1,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":35184372088832,"filename":"GameAnalytics.UWP.dll","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_uwp","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledInfoLog","help":"setEnabledInfoLog_uwp(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_uwp","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledVerboseLog","help":"setEnabledVerboseLog_uwp(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions01","help":"configureAvailableCustomDimensions01_uwp(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions02","help":"configureAvailableCustomDimensions02_uwp(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions03","help":"configureAvailableCustomDimensions03_uwp(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceCurrencies","help":"configureAvailableResourceCurrencies_uwp(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceItemTypes","help":"configureAvailableResourceItemTypes_uwp(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureBuild","help":"configureBuild_uwp(build:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureUserId","help":"configureUserId_uwp(id:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_uwp","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"initialize","help":"native_ga_initialize_uwp(key:string, secret:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureSdkGameEngineVersion","help":"configureSdkGameEngineVersion_uwp(version:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureGameEngineVersion","help":"configureGameEngineVersion_uwp(version:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventJson","help":"addProgressionEvent_uwp(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_uwp","argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"","externalName":"addDesignEvent","help":"addDesignEvent_uwp(eventId:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_uwp","argCount":0,"args":[
            1,
            2,
            1,
            2,
          ],"documentation":"","externalName":"addDesignEventWithValue","help":"addDesignEventWithValue_uwp(eventId:string, value:double)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_uwp","argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"","externalName":"addErrorEvent","help":"addErrorEvent_uwp(severity:double, message:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_uwp","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledManualSessionHandling","help":"setEnabledManualSessionHandling_uwp(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension01","help":"setCustomDimension01_uwp(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension02","help":"setCustomDimension02_uwp(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension03","help":"setCustomDimension03_uwp(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_uwp","argCount":0,"args":[],"documentation":"","externalName":"gameAnalyticsStartSession","help":"startSession_uwp()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_uwp","argCount":0,"args":[],"documentation":"","externalName":"gameAnalyticsEndSession","help":"endSession_uwp()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_uwp","argCount":0,"args":[],"documentation":"","externalName":"onQuit","help":"onStop_uwp()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_uwp","argCount":0,"args":[],"documentation":"","externalName":"onResume","help":"onResume_uwp()","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addBusinessEventJson","help":"addBusinessEventJson_uwp(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addResourceEventJson","help":"addResourceEventJson_uwp(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventWithScoreJson","help":"addProgressionEventWithScoreJson(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_uwp","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsString","help":"getRemoteConfigsValueAsString_uwp(key:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_uwp","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","help":"getRemoteConfigsValueAsStringWithDefaultValue_uwp(key:string, defaultValue:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_uwp","argCount":0,"args":[],"documentation":"","externalName":"isRemoteConfigsReady","help":"isRemoteConfigsReady_uwp()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_uwp","argCount":0,"args":[],"documentation":"","externalName":"getRemoteConfigsContentAsString","help":"getRemoteConfigsContentAsString_uwp()","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_uwp","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledEventSumission","help":"setEnabledEventSubmission_uwp(flag:bool)","hidden":false,"kind":1,"returnType":2,},
      ],"init":"","kind":1,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":128,"filename":"libGameAnalytics.so","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_linux","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledInfoLog","help":"setEnabledInfoLog_linux(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_linux","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledVerboseLog","help":"setEnabledVerboseLog(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions01","help":"configureAvailableCustomDimensions01_linux(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableCustomDimensions02","help":"configureAvailableCustomDimensions02_linux(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_linux","argCount":0,"args":[],"documentation":"","externalName":"configureAvailableCustomDimensions03","help":"configureAvailableCustomDimensions03_linux(json:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceCurrencies","help":"configureAvailableResourceCurrencies_linux(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureAvailableResourceItemTypes","help":"configureAvailableResourceItemTypes_linux(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureBuild","help":"configureBuild_linux(build:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureUserId","help":"configureUserId_linux(id:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_linux","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"initialize","help":"native_ga_initialize_linux(key:string, secret:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureSdkGameEngineVersion","help":"configureSdkGameEngineVersion_linux(version:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"configureGameEngineVersion","help":"configureGameEngineVersion_linux(version:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventJson","help":"addProgressionEvent_linux(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_linux","argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"","externalName":"addDesignEvent","help":"addDesignEvent_linux(eventId:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_linux","argCount":0,"args":[
            1,
            2,
            1,
            2,
          ],"documentation":"","externalName":"addDesignEventWithValue","help":"addDesignEventWithValue_linux(eventId:string, value:double)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_linux","argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"","externalName":"addErrorEvent","help":"addErrorEvent_linux(severity:double, message:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_linux","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledManualSessionHandling","help":"setEnabledManualSessionHandling_linux(flag:bool)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension01","help":"setCustomDimension01_linux(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension02","help":"setCustomDimension02_linux(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"setCustomDimension03","help":"setCustomDimension03_linux(dimension:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_linux","argCount":0,"args":[],"documentation":"","externalName":"gameAnalyticsStartSession","help":"startSession_linux()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_linux","argCount":0,"args":[],"documentation":"","externalName":"gameAnalyticsEndSession","help":"endSession_linux()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_linux","argCount":0,"args":[],"documentation":"","externalName":"onQuit","help":"onStop_linux()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_linux","argCount":0,"args":[],"documentation":"","externalName":"onResume","help":"onResume_linux()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addBusinessEventJson","help":"addBusinessEventJson_linux(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addResourceEventJson","help":"addResourceEventJson_linux(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"addProgressionEventWithScoreJson","help":"addProgressionEventWithScoreJson_linux(json:string)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_linux","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsString","help":"getRemoteConfigsValueAsString_linux(key:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_linux","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","help":"getRemoteConfigsValueAsStringWithDefaultValue_linux(key:string, defaultValue:string)","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_linux","argCount":0,"args":[],"documentation":"","externalName":"isRemoteConfigsReady","help":"isRemoteConfigsReady_linux()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_linux","argCount":0,"args":[],"documentation":"","externalName":"getRemoteConfigsContentAsString","help":"getRemoteConfigsContentAsString_linux","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_linux","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"setEnabledEventSubmission","help":"setEnabledEventSubmission_linux(flag:bool)","hidden":false,"kind":1,"returnType":2,},
      ],"init":"","kind":1,"order":[],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "\nrepositories {\n    maven { url 'https://maven.gameanalytics.com/release' }\n    maven { url 'https://maven.google.com' }\n}\n\ndependencies {\n    implementation \"com.gameanalytics.sdk:gameanalytics-android:6.2.9\"\n    implementation 'com.google.android.gms:play-services-appset:16.0.2'\n}\n",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": null,
  "iosplistinject": "",
  "iosProps": true,
  "iosSystemFrameworkEntries": [
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"AdSupport.framework","embed":0,"weakReference":false,},
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"SystemConfiguration.framework","embed":0,"weakReference":false,},
  ],
  "iosThirdPartyFrameworkEntries": [],
  "license": "",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "확장 기능",
    "path": "folders/확장 기능.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": 35184372089070,
  "tvosclassname": null,
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": null,
  "tvosmaccompilerflags": null,
  "tvosmaclinkerflags": null,
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}