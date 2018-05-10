# VideoLayerWithEvents
Framer VideoLayer module with shortcuts for the video events. It also makes play(), pause() and load() functions of the video layer itself, so no need for `videoLayer.player.play()` and such. Instead, you can use `videoLayer.play()`

### Events Shortcuts

The following are event shortcuts for all of the HTML Video events. For example, instead of saying:

```
Events.wrap(videoLayer.player).on "timeupdate", (event) ->
```
you can say simply:

```
videoLayer.onTimeUpdate (event, layer) ->
```

The `event` parameter is the standard HTML video event object, which contains many accessible properties. For example, `event.target` returns the `player` object of the VideoLayer instance (which itself contains many accessible properties).

The `layer` parameter is the VideoLayer instance that received the message, useful if you are dealing with more than one instance going.

* `videoLayer.onAbort(event, layer)` - Same as HTML video event [abort](https://www.w3schools.com/tags/av_event_abort.asp)
* `videoLayer.onCanPlay(event, layer)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `videoLayer.onCanPlayThrough(event, layer)` - Same as HTML video event [canplaythrough](https://www.w3schools.com/tags/av_event_canplaythrough.asp)
* `videoLayer.onDurationChange(event, layer)` - Same as HTML video event [durationchange](https://www.w3schools.com/tags/av_event_durationchange.asp)
* `videoLayer.onEmptied(event, layer)` - Same as HTML video event [emptied](https://developer.mozilla.org/en-US/docs/Web/Events/emptied)
* `videoLayer.onEnded(event, layer)` - Same as HTML video event [ended](https://www.w3schools.com/tags/av_event_ended.asp)
* `videoLayer.onError(event, layer)` - Same as HTML video event [error](https://www.w3schools.com/tags/av_event_error.asp)
* `videoLayer.onLoadedData(event, layer)` - Same as HTML video event [loadeddata](https://www.w3schools.com/tags/av_event_loadeddata.asp)
* `videoLayer.onLoadedMetadata(event, layer)` - Same as HTML video event [loadedmetadata](https://www.w3schools.com/tags/av_event_loadedmetadata.asp)
* `videoLayer.onLoadStart(event, layer)` - Same as HTML video event [loadstart](https://www.w3schools.com/tags/av_event_loadstart.asp)
* `videoLayer.onPause(event, layer)` - Same as HTML video event [pause](https://www.w3schools.com/tags/av_event_pause.asp)
* `videoLayer.onPlay(event, layer)` - Same as HTML video event [play](https://www.w3schools.com/tags/av_event_play.asp)
* `videoLayer.onPlaying(event, layer)` - Same as HTML video event [playing](https://www.w3schools.com/tags/av_event_playing.asp)
* `videoLayer.onProgress(event, layer)` - Same as HTML video event [progress](https://www.w3schools.com/tags/av_event_progress.asp)
* `videoLayer.onRateChange(event, layer)` - Same as HTML video event [ratechange](https://www.w3schools.com/tags/av_event_ratechange.asp)
* `videoLayer.onSeeked(event, layer)` - Same as HTML video event [seeked](https://www.w3schools.com/tags/av_event_seeked.asp)
* `videoLayer.onSeeking(event, layer)` - Same as HTML video event [seeking](https://www.w3schools.com/tags/av_event_seeking.asp)
* `videoLayer.onStalled(event, layer)` - Same as HTML video event [stalled](https://www.w3schools.com/tags/av_event_stalled.asp)
* `videoLayer.onSuspend(event, layer)` - Same as HTML video event [suspend](https://www.w3schools.com/tags/av_event_suspend.asp)
* `videoLayer.onTimeUpdate(event, layer)` - Same as HTML video event [timeupdate](https://www.w3schools.com/tags/av_event_timeupdate.asp)
* `videoLayer.onVolumeChange(event, layer)` - Same as HTML video event [volumechange]

### Functions

These fuctions simply elevate `videoLayer.player` functions to become `videoLayer` functions.

* `videoPlayer.play()` - same as `videoPlayer.player.play()`
* `videoPlayer.pause()` - same as `videoPlayer.player.pause()`
* `videoPlayer.load()` - same as `videoPlayer.player.load()`

### Sample Code

```
video = new VideoLayerWithEvents
	video: "http://techslides.com/demos/sample-videos/small.mp4"
  
video.onClick ->
	@play()

video.onCanPlay (event, layer) ->
	print "can play"
  
video.onPlay (event, layer) ->
	print "on play"
  
video.onPause (event, layer) ->
	print "on pause"
  
video.onTimeUpdate (event, layer) ->
	print event.target.currentTime
```
