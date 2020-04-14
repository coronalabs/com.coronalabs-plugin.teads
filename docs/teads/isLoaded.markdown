# teads.isLoaded()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      [Boolean][api.type.Boolean]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Teads, isLoaded
> __See also__          [teads.show()][plugin.teads.show]
>						[teads.load()][plugin.teads.load]
>						[teads.*][plugin.teads]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Checks whether an ad is already loaded. Returns `true` if an ad is loaded/ready, otherwise returns `false`.


## Syntax

	teads.isLoaded( adUnitType )

##### adUnitType ~^(required)^~
_[String][api.type.String]._ The type of ad according to the Teads placement&nbsp;ID. Supported values are `"inView"` or `"interstitial"`.


## Example

``````lua
local teads = require( "plugin.teads" )

local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		-- Load a banner ad
		teads.load( "interstitial" )

	elseif ( event.phase == "failed" ) then  -- The ad failed to load
		print( event.type )
		print( event.isError )
	end
end

-- Initialize the Teads plugin
teads.init( adListener )

-- Sometime later, check if the ad is loaded
local isAdLoaded = teads.isLoaded( "interstitial" )
print( isAdLoaded )
``````
