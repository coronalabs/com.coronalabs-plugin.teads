local metadata =
{
	plugin =
	{
		format = "jar",
		manifest =
		{
			permissions = {},
			usesPermissions =
			{
				"android.permission.INTERNET",
				"android.permission.ACCESS_NETWORK_STATE",
				"android.permission.ACCESS_WIFI_STATE",
				"android.permission.WRITE_EXTERNAL_STORAGE",
			},
			usesFeatures =
			{
			},
			applicationChildElements =
			{
				-- Array of strings
				[[
				<activity
            android:name="tv.teads.sdk.adContainer.activity.FullscreenActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"
            android:hardwareAccelerated="true"
            android:label="@string/teads_app_name"
            android:theme="@style/teads_NoActionBar" >
        </activity>
        <activity
            android:name="tv.teads.sdk.adContainer.activity.BrowserActivity"
            android:configChanges="orientation|keyboardHidden|screenSize"
            android:theme="@style/teads_NoActionBar" >
        </activity>
        <service
            android:name="tv.teads.teadsevent.service.EventService"
            android:exported="false"/>

        <receiver
            android:name="tv.teads.teadsevent.StartServiceReceiver"
            android:label="NetworkChangeReceiver">
            <intent-filter>
                <action android:name="android.net.conn.CONNECTIVITY_CHANGE"/>
            </intent-filter>
        </receiver>
				]]
			},
		},
	},
}

return metadata
