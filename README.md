# VideoLayerWithEvents
Framer VideoLayer module with shortcuts for the video events. It also makes play(), pause() and load() functions of the video layer itself, so no need for `videoLayer.player.play()` and such. Instead, you can use `videoLayer.play()`

## Events Shortcuts

The following are event shortcuts for all of the HTML Video events. For example, instead of saying:

```
Events.wrap(videoLayer.player).on "timeupdate", (event) ->
```
you can say simply:

```
videoLayer.onTimeUpdate (event, layer) ->
```

The `event` parameter is the standard HTML video event object, which contains many accessible properties. For example, `event.target` returns the `player` object of the VideoLayer instance (which itself contains many accessible properties).

The `layer` parameter is the VideoLayer instance that received the message, useful if you have more than one instance going.

Here is the list of shortcuts:

* `videoLayer.onAbort(event, layer)` - Same as HTML video event [abort](https://developer.mozilla.org/en-US/docs/Web/Events/abort)
* `videoLayer.onCanPlay(event, layer)` - Same as HTML video event [canplay](https://developer.mozilla.org/en-US/docs/Web/Events/canplay)
* `videoLayer.onCanPlayThrough(event, layer)` - Same as HTML video event [canplaythrough](https://developer.mozilla.org/en-US/docs/Web/Events/canplaythrough)
* `videoLayer.onDurationChange(event, layer)` - Same as HTML video event [durationchange](https://developer.mozilla.org/en-US/docs/Web/Events/durationchange)
* `videoLayer.onEmptied(event, layer)` - Same as HTML video event [emptied](https://developer.mozilla.org/en-US/docs/Web/Events/emptied)
* `videoLayer.onEnded(event, layer)` - Same as HTML video event [ended](https://developer.mozilla.org/en-US/docs/Web/Events/ended)
* `videoLayer.onError(event, layer)` - Same as HTML video event [error](https://developer.mozilla.org/en-US/docs/Web/Events/error)
* `videoLayer.onLoadedData(event, layer)` - Same as HTML video event [loadeddata](https://developer.mozilla.org/en-US/docs/Web/Events/loadeddata)
* `videoLayer.onLoadedMetadata(event, layer)` - Same as HTML video event [loadedmetadata](https://developer.mozilla.org/en-US/docs/Web/Events/loadedmetadata)
* `videoLayer.onLoadStart(event, layer)` - Same as HTML video event [loadstart](https://developer.mozilla.org/en-US/docs/Web/Events/loadstart)
* `videoLayer.onPause(event, layer)` - Same as HTML video event [pause](https://developer.mozilla.org/en-US/docs/Web/Events/pause)
* `videoLayer.onPlay(event, layer)` - Same as HTML video event [play](https://developer.mozilla.org/en-US/docs/Web/Events/play)
* `videoLayer.onPlaying(event, layer)` - Same as HTML video event [playing](https://developer.mozilla.org/en-US/docs/Web/Events/playing)
* `videoLayer.onProgress(event, layer)` - Same as HTML video event [progress](https://developer.mozilla.org/en-US/docs/Web/Events/progress)
* `videoLayer.onRateChange(event, layer)` - Same as HTML video event [ratechange](https://developer.mozilla.org/en-US/docs/Web/Events/ratechange)
* `videoLayer.onSeeked(event, layer)` - Same as HTML video event [seeked](https://developer.mozilla.org/en-US/docs/Web/Events/seeked)
* `videoLayer.onSeeking(event, layer)` - Same as HTML video event [seeking](https://developer.mozilla.org/en-US/docs/Web/Events/seeking)
* `videoLayer.onStalled(event, layer)` - Same as HTML video event [stalled](https://developer.mozilla.org/en-US/docs/Web/Events/stalled)
* `videoLayer.onSuspend(event, layer)` - Same as HTML video event [suspend](https://developer.mozilla.org/en-US/docs/Web/Events/suspend)
* `videoLayer.onTimeUpdate(event, layer)` - Same as HTML video event [timeupdate](https://developer.mozilla.org/en-US/docs/Web/Events/timeupdate)
* `videoLayer.onVolumeChange(event, layer)` - Same as HTML video event [volumechange](https://developer.mozilla.org/en-US/docs/Web/Events/volumechange)

## Functions

These fuctions simply elevate `videoLayer.player` functions to become `videoLayer` functions.

* `videoPlayer.play()` - same as `videoPlayer.player.play()`
* `videoPlayer.pause()` - same as `videoPlayer.player.pause()`
* `videoPlayer.load()` - same as `videoPlayer.player.load()`

## Getting Started
To use the module, download `VideoLayerWithEvents.coffee` and place it in the `/modules` folder of your Framer project. Then in the code of the project, add the following line:

```
{VideoLayerWithEvents} = require "VideoLayerWithEvents"
```

Alternatively, you can just copy the text of `VideoLayerWithEvents.coffee`, paste it directly into your code, and remove the prepended `extends.` from the name of the class.

After using either method above, you can then create an instance as follows:

```
videoLayer = new VideoLayerWithEvents
```

## Sample Code

```
video = new VideoLayerWithEvents
	video: "http://techslides.com/demos/sample-videos/small.mp4"
  
video.onClick ->
	@play()

video.onCanPlay (event, layer) ->
	print "on canplay"
  
video.onPlay (event, layer) ->
	print "on play"
  
video.onPause (event, layer) ->
	print "on pause"
  
video.onTimeUpdate (event, layer) ->
	print event.target.currentTime
```
