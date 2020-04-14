# teads.load()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Teads, load
> __See also__          [teads.show()][plugin.teads.show]
>						[teads.isLoaded()][plugin.teads.isLoaded]
>						[teads.*][plugin.teads]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Preloads a Teads ad. You can also call [teads.isLoaded()][plugin.teads.isLoaded] to verify that the ad has been loaded and [teads.show()][plugin.teads.show] to show it.


## Syntax

	teads.load( adUnitType, placementID [, params] )

##### adUnitType ~^(required)^~
_[String][api.type.String]._ The type of ad according to the Teads placement&nbsp;ID. Supported values are `"inView"` or `"interstitial"`.

<div class="guide-notebox">
<div class="notebox-title">Note</div>

`"inView"` ads are only supported for use within a widget [TableView][api.type.TableViewWidget] or [ScrollView][api.type.ScrollViewWidget].

</div>

##### placementID ~^(required)^~
_[String][api.type.String]._ The placement ID for the ad, retrieved from the [Teads dashboard](http://teads.tv/).

##### params ~^(optional)^~
_[Table][api.type.Table]._ Table containing customization parameters for `"inView"` ads &mdash; see the next section for details.


## Parameter Reference

The `params` table can include properties related to an `"inView"` ad. This does not apply to interstitial ads.

##### view ~^(optional)^~
_[Table][api.type.Table]._ A reference to a widget [TableView][api.type.TableViewWidget] or [ScrollView][api.type.ScrollViewWidget] instance which should contain the `"inView"` ad.


## Example

``````lua
local teads = require( "plugin.teads" )
local widget = require( "widget" )

-- Create a TableView
local tableView = widget.newTableView(
    {
        left = 0,
        top = 160,
        height = 320,
        width = display.contentWidth,
		onRowRender = function( event )	
			-- Get reference to the row group
			local row = event.row
			-- Cache the row "contentWidth" and "contentHeight"
			local rowHeight = row.contentHeight
			local rowWidth = row.contentWidth

			local rowTitle = display.newText( row, "Row " .. row.index, 0, 0, nil, 14 )
			rowTitle:setFillColor( 0 )
			rowTitle.x = rowWidth * 0.5
			rowTitle.y = rowHeight * 0.5
		end
	}
)

-- Insert 40 rows
for i = 1, 40 do
    -- Insert a row into the tableView
    tableView:insertRow{}
end

local function adListener( event )

	if ( event.phase == "init" ) then  -- Successful initialization
		-- Load an inView ad and specify the TableView
		teads.load( "inView", "YOUR_PLACEMENT_ID", { view=tableView } )
	end
end

-- Initialize the Teads plugin
teads.init( adListener )
``````
