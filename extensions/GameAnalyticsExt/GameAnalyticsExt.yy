{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "GameAnalyticsExt",
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": 35184372089070,
  "extensionVersion": "4.0.7",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2017-08-18T02:12:48",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": true,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"GameAnalytics.js","origname":"","init":"","final":"","kind":5,"uncompress":false,"functions":[],"constants":[],"ProxyFiles":[],"copyToTargets":32,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"GameAnalyticsExt.ext","origname":"","init":"","final":"","kind":4,"uncompress":false,"functions":[],"constants":[
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_DEBUG","value":"1","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_INFO","value":"2","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_WARNING","value":"3","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_ERROR","value":"4","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_ERRORSEVERITY_CRITICAL","value":"5","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_RESOURCEFLOWTYPE_SOURCE","value":"1","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_RESOURCEFLOWTYPE_SINK","value":"2","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_PROGRESSIONSTATUS_START","value":"1","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_PROGRESSIONSTATUS_COMPLETE","value":"2","hidden":false,},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"GA_PROGRESSIONSTATUS_FAIL","value":"3","hidden":false,},
      ],"ProxyFiles":[],"copyToTargets":35184372089070,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"GameAnalyticsAndroid.ext","origname":"","init":"","final":"","kind":4,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventWithReceiptAndroid","externalName":"addBusinessEventWithReceipt","kind":4,"help":"addBusinessEventWithReceiptAndroid(currency:string, amount:double, itemType:string, itemId:string, cartType:string, receipt:string, store:string, signature:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
            1,
            1,
            1,
            1,
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_android","externalName":"setEnabledInfoLog","kind":4,"help":"setEnabledInfoLog_android(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_android","externalName":"setEnabledVerboseLog","kind":4,"help":"setEnabledVerboseLog_android(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_android","externalName":"configureAvailableCustomDimensions01","kind":4,"help":"configureAvailableCustomDimensions01_android(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_android","externalName":"configureAvailableCustomDimensions02","kind":4,"help":"configureAvailableCustomDimensions02_android(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_android","externalName":"configureAvailableCustomDimensions03","kind":4,"help":"configureAvailableCustomDimensions03_android(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_android","externalName":"configureAvailableResourceCurrencies","kind":4,"help":"configureAvailableResourceCurrencies_android(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_android","externalName":"configureAvailableResourceItemTypes","kind":4,"help":"configureAvailableResourceItemTypes_android(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_android","externalName":"configureBuild","kind":4,"help":"configureBuild_android(build:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_android","externalName":"configureUserId","kind":4,"help":"configureUserId_android(id:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_android","externalName":"initialize","kind":4,"help":"native_ga_initialize_android(key:string, secret:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_android","externalName":"configureSdkGameEngineVersion","kind":4,"help":"configureSdkGameEngineVersion_android(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_android","externalName":"configureGameEngineVersion","kind":4,"help":"configureGameEngineVersion_android(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_android","externalName":"addProgressionEvent","kind":4,"help":"addProgressionEvent_android(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_android","externalName":"addDesignEvent","kind":4,"help":"addDesignEvent_android(eventId:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_android","externalName":"addDesignEventWithValue","kind":4,"help":"addDesignEventWithValue_android(eventId:string, value:double)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_android","externalName":"addErrorEvent","kind":4,"help":"addErrorEvent_android(severity:double, message:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_android","externalName":"setEnabledManualSessionHandling","kind":4,"help":"setEnabledManualSessionHandling_android(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_android","externalName":"setCustomDimension01","kind":4,"help":"setCustomDimension01_android(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_android","externalName":"setCustomDimension02","kind":4,"help":"setCustomDimension02_android(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_android","externalName":"setCustomDimension03","kind":4,"help":"setCustomDimension03_android(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_android","externalName":"startSession","kind":4,"help":"startSession_android()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_android","externalName":"endSession","kind":4,"help":"endSession_android()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_android","externalName":"addBusinessEventJson","kind":4,"help":"addBusinessEventJson_android(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_android","externalName":"addResourceEventJson","kind":4,"help":"addResourceEventJson_android(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_android","externalName":"addProgressionEventWithScoreJson","kind":4,"help":"addProgressionEventWithScoreJson_android(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_android","externalName":"getRemoteConfigsValueAsString","kind":4,"help":"getRemoteConfigsValueAsString_android(key:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_android","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","kind":4,"help":"getRemoteConfigsValueAsStringWithDefaultValue_android(key:string, defaultValue:string","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_android","externalName":"isRemoteConfigsReady","kind":4,"help":"isRemoteConfigsReady_android()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_android","externalName":"getRemoteConfigsContentAsString","kind":4,"help":"getRemoteConfigsContentAsString_android()","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_android","externalName":"setEnabledEventSubmission","kind":4,"help":"setEnabledEventSubmission_android(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":8,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"GameAnalyticsIOS.ext","origname":"","init":"","final":"","kind":4,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventWithReceiptIOS","externalName":"addBusinessEventWithReceipt","kind":4,"help":"addBusinessEventWithReceiptIOS(currency:string, amount:double, itemType:string, itemId:string, cartType:string, receipt:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
            1,
            1,
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventAndAutoFetchReceipt","externalName":"addBusinessEventAndAutoFetchReceipt","kind":4,"help":"addBusinessEventAndAutoFetchReceipt(currency:string, amount:double, itemType:string, itemId:string, cartType:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
            1,
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_ios","externalName":"setEnabledInfoLog","kind":4,"help":"setEnabledInfoLog_ios(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_ios","externalName":"setEnabledVerboseLog","kind":4,"help":"setEnabledVerboseLog_ios(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_ios","externalName":"configureAvailableCustomDimensions01","kind":4,"help":"configureAvailableCustomDimensions01_ios(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_ios","externalName":"configureAvailableCustomDimensions02","kind":4,"help":"configureAvailableCustomDimensions01_ios(json:string)","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_ios","externalName":"configureAvailableCustomDimensions03","kind":4,"help":"configureAvailableCustomDimensions03_ios(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_ios","externalName":"configureAvailableResourceCurrencies","kind":4,"help":"configureAvailableResourceCurrencies_ios(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_ios","externalName":"configureAvailableResourceItemTypes","kind":4,"help":"configureAvailableResourceItemTypes_ios(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_ios","externalName":"configureBuild","kind":4,"help":"configureBuild_ios(build:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_ios","externalName":"configureUserId","kind":4,"help":"configureUserId_ios(id:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_ios","externalName":"initialize","kind":4,"help":"native_ga_initialize_ios(key:string, secret:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_ios","externalName":"configureSdkGameEngineVersion","kind":4,"help":"configureSdkGameEngineVersion_ios(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_ios","externalName":"configureGameEngineVersion","kind":4,"help":"configureGameEngineVersion_ios(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_ios","externalName":"addProgressionEvent","kind":4,"help":"addProgressionEvent_ios(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_ios","externalName":"addDesignEvent","kind":4,"help":"addDesignEvent_ios(eventId:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_ios","externalName":"addDesignEventWithValue","kind":4,"help":"addDesignEventWithValue_ios(eventId:string, value:double)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_ios","externalName":"addErrorEvent","kind":4,"help":"addErrorEvent_ios(severity:double, message:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_ios","externalName":"setEnabledManualSessionHandling","kind":4,"help":"setEnabledManualSessionHandling_ios(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_ios","externalName":"setCustomDimension01","kind":4,"help":"setCustomDimension01_ios(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_ios","externalName":"setCustomDimension02","kind":4,"help":"setCustomDimension02_ios(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_ios","externalName":"setCustomDimension03","kind":4,"help":"setCustomDimension03_ios(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_ios","externalName":"startSession","kind":4,"help":"startSession_ios()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_ios","externalName":"endSession","kind":4,"help":"endSession_ios()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_ios","externalName":"addBusinessEventJson","kind":4,"help":"addBusinessEventJson_ios(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_ios","externalName":"addResourceEventJson","kind":4,"help":"addResourceEventJson_ios(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_ios","externalName":"addProgressionEventWithScoreJson","kind":4,"help":"addProgressionEventWithScoreJson_ios(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_ios","externalName":"getRemoteConfigsValueAsString","kind":4,"help":"getRemoteConfigsValueAsString_ios(key:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_ios","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","kind":4,"help":"getRemoteConfigsValueAsStringWithDefaultValue_ios(key:string, defaultValue:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_ios","externalName":"isRemoteConfigsReady","kind":4,"help":"isRemoteConfigsReady_ios()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_ios","externalName":"getRemoteConfigsContentAsString","kind":4,"help":"getRemoteConfigsContentAsString_ios()","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_ios","externalName":"setEnabledEventSubmission","kind":4,"help":"setEnabledManualSessionHandling_ios(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":4,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"GameAnalyticsExt.js","origname":"","init":"","final":"","kind":5,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_html","externalName":"setEnabledInfoLog","kind":5,"help":"setEnabledInfoLog_html(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_html","externalName":"setEnabledVerboseLog","kind":5,"help":"setEnabledVerboseLog_html(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_html","externalName":"configureAvailableCustomDimensions01","kind":5,"help":"configureAvailableCustomDimensions01_html(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_html","externalName":"configureAvailableCustomDimensions02","kind":5,"help":"configureAvailableCustomDimensions02_html(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_html","externalName":"configureAvailableCustomDimensions03","kind":5,"help":"configureAvailableCustomDimensions03_html(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_html","externalName":"configureAvailableResourceCurrencies","kind":5,"help":"configureAvailableResourceCurrencies_html(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_html","externalName":"configureAvailableResourceItemTypes","kind":5,"help":"configureAvailableResourceItemTypes(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_html","externalName":"configureBuild","kind":5,"help":"configureBuild_html(build:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_html","externalName":"configureUserId","kind":5,"help":"configureUserId(id:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_html","externalName":"initialize","kind":5,"help":"native_ga_initialize_html(key:string, secret:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_html","externalName":"configureSdkGameEngineVersion","kind":5,"help":"configureSdkGameEngineVersion_html(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_html","externalName":"configureGameEngineVersion","kind":5,"help":"configureGameEngineVersion_html(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_html","externalName":"addProgressionEvent","kind":5,"help":"addProgressionEvent_html(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_html","externalName":"addDesignEvent","kind":5,"help":"addDesignEvent_html(eventId:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_html","externalName":"addDesignEventWithValue","kind":5,"help":"addDesignEventWithValue(eventId:string, value:double)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_html","externalName":"addErrorEvent","kind":5,"help":"addErrorEvent_html(severity:double, message:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_html","externalName":"setEnabledManualSessionHandling","kind":5,"help":"setEnabledManualSessionHandling_html(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_html","externalName":"setCustomDimension01","kind":5,"help":"setCustomDimension01_html(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_html","externalName":"setCustomDimension02","kind":5,"help":"setCustomDimension02_html(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_html","externalName":"setCustomDimension03","kind":5,"help":"setCustomDimension03_html(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_html","externalName":"startSession","kind":5,"help":"startSession_html()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_html","externalName":"endSession","kind":5,"help":"endSession_html()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_html","externalName":"onStop","kind":5,"help":"onStop_html()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_html","externalName":"onResume","kind":5,"help":"onResume_html()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_html","externalName":"addBusinessEventJson","kind":5,"help":"addBusinessEventJson_html(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_html","externalName":"addResourceEventJson","kind":5,"help":"addResourceEventJson_html(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_html","externalName":"addProgressionEventWithScoreJson","kind":5,"help":"addProgressionEventWithScoreJson_html(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_html","externalName":"getRemoteConfigsValueAsString","kind":5,"help":"getRemoteConfigsValueAsString_html(key:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_html","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","kind":5,"help":"getRemoteConfigsValueAsStringWithDefaultValue_html(key:string, defaultValue:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_html","externalName":"isRemoteConfigsReady","kind":5,"help":"isRemoteConfigsReady_html()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_html","externalName":"getRemoteConfigsContentAsString","kind":5,"help":"getRemoteConfigsContentAsString_html()","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_html","externalName":"setEnabledEventSubmission","kind":5,"help":"setEnabledEventSubmission_html(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":32,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"libGameAnalytics.dylib","origname":"","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_mac","externalName":"setEnabledInfoLog","kind":1,"help":"setEnabledInfoLog_mac(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_mac","externalName":"setEnabledVerboseLog","kind":1,"help":"setEnabledVerboseLog_mac(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_mac","externalName":"configureAvailableCustomDimensions01","kind":1,"help":"configureAvailableCustomDimensions01_mac(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_mac","externalName":"configureAvailableCustomDimensions02","kind":1,"help":"configureAvailableCustomDimensions02_mac(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_mac","externalName":"configureAvailableCustomDimensions03","kind":1,"help":"configureAvailableCustomDimensions03_mac(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_mac","externalName":"configureAvailableResourceCurrencies","kind":1,"help":"configureAvailableResourceCurrencies_mac(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_mac","externalName":"configureAvailableResourceItemTypes","kind":1,"help":"configureAvailableResourceItemTypes_mac(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_mac","externalName":"configureBuild","kind":1,"help":"configureBuild_mac(build:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_mac","externalName":"configureUserId","kind":1,"help":"configureUserId_mac(id:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_mac","externalName":"initialize","kind":1,"help":"native_ga_initialize(key:string, secret:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_mac","externalName":"configureSdkGameEngineVersion","kind":1,"help":"configureSdkGameEngineVersion_mac(version:string)","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_mac","externalName":"configureGameEngineVersion","kind":1,"help":"configureGameEngineVersion_mac(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_mac","externalName":"addProgressionEventJson","kind":1,"help":"addProgressionEvent_mac(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_mac","externalName":"addDesignEvent","kind":1,"help":"addDesignEvent_mac(eventId:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_mac","externalName":"addDesignEventWithValue","kind":1,"help":"addDesignEventWithValue_mac(eventId:string, value:double)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_mac","externalName":"addErrorEvent","kind":1,"help":"addErrorEvent(severity:double, message:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_mac","externalName":"setEnabledManualSessionHandling","kind":1,"help":"setEnabledManualSessionHandling_mac(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_mac","externalName":"setCustomDimension01","kind":1,"help":"setCustomDimension01_mac(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_mac","externalName":"setCustomDimension02","kind":1,"help":"setCustomDimension02_mac(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_mac","externalName":"setCustomDimension03","kind":1,"help":"setCustomDimension03_mac(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_mac","externalName":"gameAnalyticsStartSession","kind":1,"help":"startSession_mac()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_mac","externalName":"gameAnalyticsEndSession","kind":1,"help":"endSession_mac()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_mac","externalName":"onQuit","kind":1,"help":"onStop_mac()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_mac","externalName":"onResume","kind":1,"help":"onResume_mac()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_mac","externalName":"addBusinessEventJson","kind":1,"help":"addBusinessEventJson_mac(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_mac","externalName":"addResourceEventJson","kind":1,"help":"addResourceEventJson_mac(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_mac","externalName":"addProgressionEventWithScoreJson","kind":1,"help":"addProgressionEventWithScoreJson_mac(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_mac","externalName":"getRemoteConfigsValueAsString","kind":1,"help":"getRemoteConfigsValueAsString_mac(key:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"GameAnalyticsExt_Function32","externalName":"","kind":1,"help":"","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_mac","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","kind":1,"help":"getRemoteConfigsValueAsStringWithDefaultValue_mac(key:string, defaultValue:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_mac","externalName":"isRemoteConfigsReady","kind":1,"help":"isRemoteConfigsReady_mac()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_mac","externalName":"getRemoteConfigsContentAsString","kind":1,"help":"getRemoteConfigsContentAsString_mac()","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_mac","externalName":"setEnabledEventSubmission","kind":1,"help":"setEnabledEventSubmission_mac(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":2,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"GameAnalytics.dll","origname":"","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_windows","externalName":"setEnabledInfoLog","kind":1,"help":"setEnabledInfoLog_windows(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_windows","externalName":"setEnabledVerboseLog","kind":1,"help":"setEnabledVerboseLog_windows(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_windows","externalName":"configureAvailableCustomDimensions01","kind":1,"help":"configureAvailableCustomDimensions01_windows(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_windows","externalName":"configureAvailableCustomDimensions02","kind":1,"help":"configureAvailableCustomDimensions02_windows(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_windows","externalName":"configureAvailableCustomDimensions03","kind":1,"help":"configureAvailableCustomDimensions03_windows(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_windows","externalName":"configureAvailableResourceCurrencies","kind":1,"help":"configureAvailableResourceCurrencies_windows(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_windows","externalName":"configureAvailableResourceItemTypes","kind":1,"help":"configureAvailableResourceItemTypes_windows(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_windows","externalName":"configureBuild","kind":1,"help":"configureBuild_windows(build:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_windows","externalName":"configureUserId","kind":1,"help":"configureUserId_windows(id:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_windows","externalName":"initialize","kind":1,"help":"native_ga_initialize_windows(key:string, secret:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_windows","externalName":"configureSdkGameEngineVersion","kind":1,"help":"configureSdkGameEngineVersion_windows(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_windows","externalName":"configureGameEngineVersion","kind":1,"help":"configureGameEngineVersion_windows(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_windows","externalName":"addProgressionEventJson","kind":1,"help":"addProgressionEvent_windows(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_windows","externalName":"addDesignEvent","kind":1,"help":"addDesignEvent_windows(eventId:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_windows","externalName":"addDesignEventWithValue","kind":1,"help":"addDesignEventWithValue_windows(eventId:string, value:double)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_windows","externalName":"addErrorEvent","kind":1,"help":"addErrorEvent_windows(severity:double, message:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_windows","externalName":"setEnabledManualSessionHandling","kind":1,"help":"setEnabledManualSessionHandling_windows(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_windows","externalName":"setCustomDimension01","kind":1,"help":"setCustomDimension01_windows(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_windows","externalName":"setCustomDimension02","kind":1,"help":"setCustomDimension02_windows(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_windows","externalName":"setCustomDimension03","kind":1,"help":"setCustomDimension03_windows(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_windows","externalName":"gameAnalyticsStartSession","kind":1,"help":"startSession_windows()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_windows","externalName":"gameAnalyticsEndSession","kind":1,"help":"endSession_windows()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_windows","externalName":"onQuit","kind":1,"help":"onStop_windows()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_windows","externalName":"onResume","kind":1,"help":"onResume_windows()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_windows","externalName":"addBusinessEventJson","kind":1,"help":"addBusinessEventJson_windows(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_windows","externalName":"addResourceEventJson","kind":1,"help":"addResourceEventJson(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_windows","externalName":"addProgressionEventWithScoreJson","kind":1,"help":"addProgressionEventWithScoreJson_windows(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_windows","externalName":"getRemoteConfigsValueAsString","kind":1,"help":"getRemoteConfigsValueAsString_windows(key:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_windows","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","kind":1,"help":"getRemoteConfigsValueAsStringWithDefaultValue_windows(key:string, defaultValue:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_windows","externalName":"isRemoteConfigsReady","kind":1,"help":"isRemoteConfigsReady_windows()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_windows","externalName":"getRemoteConfigsContentAsString","kind":1,"help":"getRemoteConfigsContentAsString_windows()","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_windows","externalName":"setEnabledEventSubmission","kind":1,"help":"setEnabledEventSubmission_windows(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":64,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"GameAnalytics.UWP.dll","origname":"","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_uwp","externalName":"setEnabledInfoLog","kind":1,"help":"setEnabledInfoLog_uwp(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_uwp","externalName":"setEnabledVerboseLog","kind":1,"help":"setEnabledVerboseLog_uwp(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_uwp","externalName":"configureAvailableCustomDimensions01","kind":1,"help":"configureAvailableCustomDimensions01_uwp(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_uwp","externalName":"configureAvailableCustomDimensions02","kind":1,"help":"configureAvailableCustomDimensions02_uwp(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_uwp","externalName":"configureAvailableCustomDimensions03","kind":1,"help":"configureAvailableCustomDimensions03_uwp(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_uwp","externalName":"configureAvailableResourceCurrencies","kind":1,"help":"configureAvailableResourceCurrencies_uwp(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_uwp","externalName":"configureAvailableResourceItemTypes","kind":1,"help":"configureAvailableResourceItemTypes_uwp(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_uwp","externalName":"configureBuild","kind":1,"help":"configureBuild_uwp(build:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_uwp","externalName":"configureUserId","kind":1,"help":"configureUserId_uwp(id:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_uwp","externalName":"initialize","kind":1,"help":"native_ga_initialize_uwp(key:string, secret:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_uwp","externalName":"configureSdkGameEngineVersion","kind":1,"help":"configureSdkGameEngineVersion_uwp(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_uwp","externalName":"configureGameEngineVersion","kind":1,"help":"configureGameEngineVersion_uwp(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_uwp","externalName":"addProgressionEventJson","kind":1,"help":"addProgressionEvent_uwp(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_uwp","externalName":"addDesignEvent","kind":1,"help":"addDesignEvent_uwp(eventId:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_uwp","externalName":"addDesignEventWithValue","kind":1,"help":"addDesignEventWithValue_uwp(eventId:string, value:double)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_uwp","externalName":"addErrorEvent","kind":1,"help":"addErrorEvent_uwp(severity:double, message:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_uwp","externalName":"setEnabledManualSessionHandling","kind":1,"help":"setEnabledManualSessionHandling_uwp(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_uwp","externalName":"setCustomDimension01","kind":1,"help":"setCustomDimension01_uwp(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_uwp","externalName":"setCustomDimension02","kind":1,"help":"setCustomDimension02_uwp(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_uwp","externalName":"setCustomDimension03","kind":1,"help":"setCustomDimension03_uwp(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_uwp","externalName":"gameAnalyticsStartSession","kind":1,"help":"startSession_uwp()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_uwp","externalName":"gameAnalyticsEndSession","kind":1,"help":"endSession_uwp()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_uwp","externalName":"onQuit","kind":1,"help":"onStop_uwp()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_uwp","externalName":"onResume","kind":1,"help":"onResume_uwp()","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_uwp","externalName":"addBusinessEventJson","kind":1,"help":"addBusinessEventJson_uwp(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_uwp","externalName":"addResourceEventJson","kind":1,"help":"addResourceEventJson_uwp(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_uwp","externalName":"addProgressionEventWithScoreJson","kind":1,"help":"addProgressionEventWithScoreJson(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_uwp","externalName":"getRemoteConfigsValueAsString","kind":1,"help":"getRemoteConfigsValueAsString_uwp(key:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_uwp","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","kind":1,"help":"getRemoteConfigsValueAsStringWithDefaultValue_uwp(key:string, defaultValue:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_uwp","externalName":"isRemoteConfigsReady","kind":1,"help":"isRemoteConfigsReady_uwp()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_uwp","externalName":"getRemoteConfigsContentAsString","kind":1,"help":"getRemoteConfigsContentAsString_uwp()","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_uwp","externalName":"setEnabledEventSumission","kind":1,"help":"setEnabledEventSubmission_uwp(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":35184372088832,"usesRunnerInterface":false,"order":[],},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"libGameAnalytics.so","origname":"","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledInfoLog_linux","externalName":"setEnabledInfoLog","kind":1,"help":"setEnabledInfoLog_linux(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledVerboseLog_linux","externalName":"setEnabledVerboseLog","kind":1,"help":"setEnabledVerboseLog(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions01_linux","externalName":"configureAvailableCustomDimensions01","kind":1,"help":"configureAvailableCustomDimensions01_linux(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions02_linux","externalName":"configureAvailableCustomDimensions02","kind":1,"help":"configureAvailableCustomDimensions02_linux(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableCustomDimensions03_linux","externalName":"configureAvailableCustomDimensions03","kind":1,"help":"configureAvailableCustomDimensions03_linux(json:string)","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceCurrencies_linux","externalName":"configureAvailableResourceCurrencies","kind":1,"help":"configureAvailableResourceCurrencies_linux(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureAvailableResourceItemTypes_linux","externalName":"configureAvailableResourceItemTypes","kind":1,"help":"configureAvailableResourceItemTypes_linux(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureBuild_linux","externalName":"configureBuild","kind":1,"help":"configureBuild_linux(build:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureUserId_linux","externalName":"configureUserId","kind":1,"help":"configureUserId_linux(id:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"native_ga_initialize_linux","externalName":"initialize","kind":1,"help":"native_ga_initialize_linux(key:string, secret:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureSdkGameEngineVersion_linux","externalName":"configureSdkGameEngineVersion","kind":1,"help":"configureSdkGameEngineVersion_linux(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"configureGameEngineVersion_linux","externalName":"configureGameEngineVersion","kind":1,"help":"configureGameEngineVersion_linux(version:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEvent_linux","externalName":"addProgressionEventJson","kind":1,"help":"addProgressionEvent_linux(status:double, progression1:string, progression2:string, progression3:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEvent_linux","externalName":"addDesignEvent","kind":1,"help":"addDesignEvent_linux(eventId:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addDesignEventWithValue_linux","externalName":"addDesignEventWithValue","kind":1,"help":"addDesignEventWithValue_linux(eventId:string, value:double)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addErrorEvent_linux","externalName":"addErrorEvent","kind":1,"help":"addErrorEvent_linux(severity:double, message:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledManualSessionHandling_linux","externalName":"setEnabledManualSessionHandling","kind":1,"help":"setEnabledManualSessionHandling_linux(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension01_linux","externalName":"setCustomDimension01","kind":1,"help":"setCustomDimension01_linux(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension02_linux","externalName":"setCustomDimension02","kind":1,"help":"setCustomDimension02_linux(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setCustomDimension03_linux","externalName":"setCustomDimension03","kind":1,"help":"setCustomDimension03_linux(dimension:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"startSession_linux","externalName":"gameAnalyticsStartSession","kind":1,"help":"startSession_linux()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"endSession_linux","externalName":"gameAnalyticsEndSession","kind":1,"help":"endSession_linux()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onStop_linux","externalName":"onQuit","kind":1,"help":"onStop_linux()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"onResume_linux","externalName":"onResume","kind":1,"help":"onResume_linux()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addBusinessEventJson_linux","externalName":"addBusinessEventJson","kind":1,"help":"addBusinessEventJson_linux(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addResourceEventJson_linux","externalName":"addResourceEventJson","kind":1,"help":"addResourceEventJson_linux(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"addProgressionEventWithScoreJson_linux","externalName":"addProgressionEventWithScoreJson","kind":1,"help":"addProgressionEventWithScoreJson_linux(json:string)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsString_linux","externalName":"getRemoteConfigsValueAsString","kind":1,"help":"getRemoteConfigsValueAsString_linux(key:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsValueAsStringWithDefaultValue_linux","externalName":"getRemoteConfigsValueAsStringWithDefaultValue","kind":1,"help":"getRemoteConfigsValueAsStringWithDefaultValue_linux(key:string, defaultValue:string)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"isRemoteConfigsReady_linux","externalName":"isRemoteConfigsReady","kind":1,"help":"isRemoteConfigsReady_linux()","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getRemoteConfigsContentAsString_linux","externalName":"getRemoteConfigsContentAsString","kind":1,"help":"getRemoteConfigsContentAsString_linux","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"setEnabledEventSubmission_linux","externalName":"setEnabledEventSubmission","kind":1,"help":"setEnabledEventSubmission_linux(flag:bool)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":128,"usesRunnerInterface":false,"order":[],},
  ],
  "classname": "GameAnalyticsExt",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": null,
  "androidclassname": "GameAnalyticsExt",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": null,
  "maclinkerflags": "",
  "tvosmaclinkerflags": null,
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "\nrepositories {\n    maven { url 'https://maven.gameanalytics.com/release' }\n    maven { url 'https://maven.google.com' }\n}\n\ndependencies {\n    implementation \"com.gameanalytics.sdk:gameanalytics-android:6.2.9\"\n    implementation 'com.google.android.gms:play-services-appset:16.0.2'\n}\n",
  "androidcodeinjection": "<YYAndroidGradleDependencies>\nrepositories {\n    maven { url 'https://maven.gameanalytics.com/release' }\n    maven { url 'https://maven.google.com' }\n}\n\ndependencies {\n    implementation \"com.gameanalytics.sdk:gameanalytics-android:6.2.9\"\n    implementation 'com.google.android.gms:play-services-appset:16.0.2'\n}\n</YYAndroidGradleDependencies>",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"AdSupport.framework","weakReference":false,"embed":0,},
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"SystemConfiguration.framework","weakReference":false,"embed":0,},
  ],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [
    "android.permission.INTERNET",
    "android.permission.ACCESS_NETWORK_STATE",
  ],
  "copyToTargets": 35184372089070,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "확장 기능",
    "path": "folders/확장 기능.yy",
  },
}