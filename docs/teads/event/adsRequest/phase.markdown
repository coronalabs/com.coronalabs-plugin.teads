# event.phase

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [String][api.type.String]
> __Event__             [adsRequest][plugin.teads.event.adsRequest]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, Teads, adsRequest, phase
> __See also__			[adsRequest][plugin.teads.event.adsRequest]
>						[teads.*][plugin.teads]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

[String][api.type.String] value indicating the phase of the [adsRequest][plugin.teads.event.adsRequest] event. Possible values include:

* `"init"` &mdash; Indicates that the Teads plugin was initialized successfully.

* `"loaded"` &mdash; Indicates that an ad loaded successfully. For this phase [event.type][plugin.teads.event.adsRequest.type] can provide additional context.

* `"displayed"` &mdash; Indicates that an ad displayed successfully. For this phase [event.type][plugin.teads.event.adsRequest.type] acan provide additional context.

* `"clicked"` &mdash; Indicates that an ad was clicked/tapped. For this phase [event.type][plugin.teads.event.adsRequest.type] can provide additional context.

* `"closed"` &mdash; Indicates that an ad was closed. Applies only to interstitial and video ads. For this phase [event.type][plugin.teads.event.adsRequest.type] can provide additional context.

* `"failed"` &mdash; Indicates that an ad failed to load. For this phase, [event.isError][plugin.teads.event.adsRequest.isError] will be `true`. Additionally [event.type][plugin.teads.event.adsRequest.type] can provide additional context.
