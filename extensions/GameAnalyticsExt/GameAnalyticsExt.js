function configureAvailableCustomDimensions01(json)
{
    gameanalytics.GameAnalytics.configureAvailableCustomDimensions01(JSON.parse(json));
}

function configureAvailableCustomDimensions02(json)
{
    gameanalytics.GameAnalytics.configureAvailableCustomDimensions02(JSON.parse(json));
}

function configureAvailableCustomDimensions03(json)
{
    gameanalytics.GameAnalytics.configureAvailableCustomDimensions03(JSON.parse(json));
}

function configureAvailableResourceCurrencies(json)
{
    gameanalytics.GameAnalytics.configureAvailableResourceCurrencies(JSON.parse(json));
}

function configureAvailableResourceItemTypes(json)
{
    gameanalytics.GameAnalytics.configureAvailableResourceItemTypes(JSON.parse(json));
}

function configureBuild(build)
{
    gameanalytics.GameAnalytics.configureBuild(build);
}

function configureSdkGameEngineVersion(version)
{
    gameanalytics.GameAnalytics.configureSdkGameEngineVersion(version);
}

function configureGameEngineVersion(version)
{
    gameanalytics.GameAnalytics.configureGameEngineVersion(version);
}

function configureUserId(uId)
{
    gameanalytics.GameAnalytics.configureUserId(uId);
}

function initialize(gameKey, gameSecret)
{
    gameanalytics.GameAnalytics.initialize(gameKey, gameSecret);
}

function addBusinessEventJson(json)
{
    var array = JSON.parse(json);
    gameanalytics.GameAnalytics.addBusinessEvent(array[0], array[1], array[2], array[3], array[4]);
}

function addResourceEventJson(json)
{
    var array = JSON.parse(json);
    gameanalytics.GameAnalytics.addResourceEvent(parseInt(array[0]), array[1], array[2], array[3], array[4]);
}

function addProgressionEvent(status, progression1, progression2, progression3)
{
    gameanalytics.GameAnalytics.addProgressionEvent(parseInt(status), progression1, progression2, progression3);
}

function addProgressionEventWithScoreJson(json)
{
    var array = JSON.parse(json);
    gameanalytics.GameAnalytics.addProgressionEvent(parseInt(array[0]), array[1], array[2], array[3], array[4]);
}

function addDesignEvent(eventId)
{
    gameanalytics.GameAnalytics.addDesignEvent(eventId);
}

function addDesignEventWithValue(eventId, value)
{
    gameanalytics.GameAnalytics.addDesignEvent(eventId, value);
}

function addErrorEvent(severity, message)
{
    gameanalytics.GameAnalytics.addErrorEvent(parseInt(severity), message);
}

function setEnabledInfoLog(flag)
{
    gameanalytics.GameAnalytics.setEnabledInfoLog(!!flag);
}

function setEnabledVerboseLog(flag)
{
    gameanalytics.GameAnalytics.setEnabledVerboseLog(!!flag);
}

function setEnabledManualSessionHandling(flag)
{
    gameanalytics.GameAnalytics.setEnabledManualSessionHandling(!!flag);
}

function setCustomDimension01(dimension)
{
    gameanalytics.GameAnalytics.setCustomDimension01(dimension);
}

function setCustomDimension02(dimension)
{
    gameanalytics.GameAnalytics.setCustomDimension02(dimension);
}

function setCustomDimension03(dimension)
{
    gameanalytics.GameAnalytics.setCustomDimension03(dimension);
}

function startSession()
{
    gameanalytics.GameAnalytics.startSession();
}

function endSession()
{
    gameanalytics.GameAnalytics.endSession();
}

function onStop()
{
    gameanalytics.GameAnalytics.onStop();
}

function onResume()
{
    gameanalytics.GameAnalytics.onResume();
}

function getRemoteConfigsValueAsString(key)
{
    return gameanalytics.GameAnalytics.getRemoteConfigsValueAsString(key);
}

function getRemoteConfigsValueAsStringWithDefaultValue(key, defaultValue)
{
    return gameanalytics.GameAnalytics.getRemoteConfigsValueAsString(key, defaultValue);
}

function isRemoteConfigsReady()
{
    return gameanalytics.GameAnalytics.isRemoteConfigsReady();
}

function getRemoteConfigsContentAsString()
{
    return gameanalytics.GameAnalytics.getRemoteConfigsContentAsString();
}
