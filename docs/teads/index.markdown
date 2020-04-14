# teads.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Library][api.type.Library]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Teads
> __Platforms__			Android, iOS
> --------------------- ------------------------------------------------------------------------------------------

<!---

> __Sample__			[https://github.com/coronalabs/plugins-sample-teads](https://github.com/coronalabs/plugins-sample-teads)

-->

## Overview

<div class="float-right" style="max-width: 240px; clear: both;">

![][images.docs.plugin-screenshot-teads]

</div>

The [Teads](http://teads.tv/) plugin allows developers to monetize their mobile app with Teads ads.


## Registration

Before you can use this plugin, you must [register](http://www.ebz.io/bo/register) with Teads.


## Syntax

	local teads = require( "plugin.teads" )


## Functions

#### [teads.init()][plugin.teads.init]

#### [teads.load()][plugin.teads.load]

#### [teads.show()][plugin.teads.show]

#### [teads.hide()][plugin.teads.hide]

#### [teads.isLoaded()][plugin.teads.isLoaded]


## Events

#### [adsRequest][plugin.teads.event.adsRequest]


## Project Settings

To use this plugin, add two entries into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

``````lua
settings =
{
	plugins =
	{
		["plugin.teads"] =
		{
			publisherId = "com.coronalabs",
			supportedPlatforms = { iphone=true, android=true }
		},
		["plugin.google.play.services"] =
		{
			publisherId = "com.coronalabs",
			supportedPlatforms = { android=true }
		},
	},
}
``````

<!--- Include ATS "override" template block --->
TEMPLATE_ATS
<!--- --->

<div class="guide-notebox-imp">
<div class="notebox-title-imp">Important</div>

On devices running Android 6.0 and higher, this plugin requires the `STORAGE` [permission group](http://developer.android.com/reference/android/Manifest.permission_group.html#STORAGE) for caching of video ads. For details on requesting permissions at runtime, please see the __requestAppPermission__ section of [native.showPopup()][api.library.native.showPopup].

</div>

<div class="guide-notebox">
<div class="notebox-title">Note</div>

For Android, the following permissions/features are automatically added when using this plugin:

``````lua
	android =
	{
		usesPermissions =
		{
			"android.permission.INTERNET",
			"android.permission.ACCESS_NETWORK_STATE"
		},
	},
``````

</div>


## Support

* [http://teads.tv/](http://teads.tv/)
* [Corona Forums](http://forums.coronalabs.com/forum/545-monetization-in-app-purchases-ads-etc/)
