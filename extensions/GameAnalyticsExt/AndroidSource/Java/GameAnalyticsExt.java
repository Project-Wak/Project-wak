package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;
import com.gameanalytics.sdk.*;
import org.json.JSONArray;
import org.json.JSONException;
import java.util.ArrayList;

public class GameAnalyticsExt
{
    public void configureAvailableCustomDimensions01(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableCustomDimensions01(list.toArray(new String[0]));
    }

    public void configureAvailableCustomDimensions02(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableCustomDimensions02(list.toArray(new String[0]));
    }

    public void configureAvailableCustomDimensions03(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableCustomDimensions03(list.toArray(new String[0]));
    }

    public void configureAvailableResourceCurrencies(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableResourceCurrencies(list.toArray(new String[0]));
    }

    public void configureAvailableResourceItemTypes(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableResourceItemTypes(list.toArray(new String[0]));
    }

    public void configureBuild(String build)
    {
        GameAnalytics.configureBuild(build);
    }

    public void configureSdkGameEngineVersion(String version)
    {
        GameAnalytics.configureSdkGameEngineVersion(version);
    }

    public void configureGameEngineVersion(String version)
    {
        GameAnalytics.configureGameEngineVersion(version);
    }

    public void configureUserId(String id)
    {
        GameAnalytics.configureUserId(id);
    }

    public void initialize(String gameKey, String gameSecret)
    {
        GameAnalytics.initialize(RunnerActivity.CurrentActivity, gameKey, gameSecret);
    }

    public void addBusinessEventJson(String json)
    {
        try
        {
            JSONArray jsonArray = new JSONArray(json);
            GameAnalytics.addBusinessEvent(jsonArray.getString(0), jsonArray.getInt(1), jsonArray.getString(2), jsonArray.getString(3), jsonArray.getString(4));
        }
        catch (JSONException e)
        {
        }
    }

    public void addBusinessEventWithReceipt(String currency, double amount, String itemType, String itemId, String cartType, String receipt, String store, String signature)
    {
        GameAnalytics.addBusinessEvent(currency, (int)Math.round(amount), itemType, itemId, cartType, receipt, store, signature);
    }

    public void addResourceEventJson(String json)
    {
        try
        {
            JSONArray jsonArray = new JSONArray(json);
            GameAnalytics.addResourceEvent(jsonArray.getInt(0), jsonArray.getString(1), (float)jsonArray.getDouble(2), jsonArray.getString(3), jsonArray.getString(4));
        }
        catch (JSONException e)
        {
        }
    }

    public void addProgressionEvent(double status, String progression1, String progression2, String progression3)
    {
        GameAnalytics.addProgressionEvent((int)Math.round(status), progression1, progression2, progression3);
    }

    public void addProgressionEventWithScoreJson(String json)
    {
        try
        {
            JSONArray jsonArray = new JSONArray(json);
            GameAnalytics.addProgressionEvent(jsonArray.getInt(0), jsonArray.getString(1), jsonArray.getString(2), jsonArray.getString(3), jsonArray.getDouble(4));
        }
        catch (JSONException e)
        {
        }
    }

    public void addDesignEvent(String eventId)
    {
        GameAnalytics.addDesignEvent(eventId);
    }

    public void addDesignEventWithValue(String eventId, double value)
    {
        GameAnalytics.addDesignEvent(eventId, value);
    }

    public void addErrorEvent(double severity, String message)
    {
        GameAnalytics.addErrorEvent((int)Math.round(severity), message);
    }

    public void setEnabledInfoLog(double flag)
    {
        GameAnalytics.setEnabledInfoLog(flag != 0.0);
    }

    public void setEnabledVerboseLog(double flag)
    {
        GameAnalytics.setEnabledVerboseLog(flag != 0.0);
    }

    public void setEnabledManualSessionHandling(double flag)
    {
        GameAnalytics.setEnabledManualSessionHandling(flag != 0.0);
    }

    public void setCustomDimension01(String dimension)
    {
        GameAnalytics.setCustomDimension01(dimension);
    }

    public void setCustomDimension02(String dimension)
    {
        GameAnalytics.setCustomDimension02(dimension);
    }

    public void setCustomDimension03(String dimension)
    {
        GameAnalytics.setCustomDimension03(dimension);
    }

    public void startSession()
    {
        GameAnalytics.startSession();
    }

    public void endSession()
    {
        GameAnalytics.endSession();
    }

    public String getRemoteConfigsValueAsString(String key)
    {
        return GameAnalytics.getRemoteConfigsValueAsString(key);
    }

    public String getRemoteConfigsValueAsStringWithDefaultValue(String key, String defaultValue)
    {
        return GameAnalytics.getRemoteConfigsValueAsString(key, defaultValue);
    }

    public double isRemoteConfigsReady()
    {
        return GameAnalytics.isRemoteConfigsReady() ? 1 : 0;
    }

    public String getRemoteConfigsContentAsString()
    {
        return GameAnalytics.getRemoteConfigsContentAsString();
    }
}
