# teads.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Teads, init
> __See also__          [teads.load()][plugin.teads.load]
>						[teads.show()][plugin.teads.show]
>						[teads.*][plugin.teads]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

`teads.init()` initializes the Teads plugin.

Once initialized, you can load an ad using [teads.load()][plugin.teads.load] and subsequently show it via [teads.show()][plugin.teads.show].


## Syntax

	teads.init( adListener )

##### adListener ~^(required)^~
_[Listener][api.type.Listener]._ Listener function that will receive [adsRequest][plugin.teads.event.adsRequest] events.


## Example

``````lua
local teads = require( "plugin.teads" )

local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		print( event.isError )
	end
end

-- Initialize the Teads plugin
teads.init( adListener )
``````
