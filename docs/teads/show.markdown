# teads.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Teads, show
> __See also__          [teads.load()][plugin.teads.load]
>						[teads.hide()][plugin.teads.hide]
>						[teads.isLoaded()][plugin.teads.isLoaded]
>						[teads.*][plugin.teads]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Shows a Teads ad which was previously loaded via [teads.load()][plugin.teads.load].


## Gotchas

* When used with an ad type of `"interstitial"`, this will show the ad just like a typical interstitial.

* When used with an ad type of `"inView"`, this will expand the ad downward from the top of the [TableView][api.type.TableViewWidget] or [ScrollView][api.type.ScrollViewWidget] which contains it.


## Syntax

	teads.show( adUnitType )

##### adUnitType ~^(required)^~
_[String][api.type.String]._ The type of ad according to the Teads placement&nbsp;ID. Supported values are `"inView"` or `"interstitial"`.


## Example

``````lua
local teads = require( "plugin.teads" )

local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		-- Load an interstitial ad
		teads.load( "interstitial", "YOUR_PLACEMENT_ID" )

	elseif ( event.phase == "loaded" ) then  -- The ad was successfully loaded
		-- Show the ad
		teads.show( "interstitial" )

	elseif ( event.phase == "failed" ) then  -- The ad failed to load
		print( event.type )
		print( event.isError )
	end
end

-- Initialize the Teads plugin
teads.init( adListener )
``````
