# VideoLayerWithEvents
Framer VideoLayer module with shortcuts for the video events. It also makes play(), pause() and load() functions of the video layer itself, so no need for `videoLayer.player.play()` and such. Instead, you can use `videoLayer.play()`

### Events

* `onAbort(event)` - Same as HTML video event [abort](https://www.w3schools.com/tags/av_event_abort.asp)
* `onCanPlay(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onCanPlayThrough(event)` - Same as HTML video event [canplaythrough](https://www.w3schools.com/tags/av_event_canplaythrough.asp)
* `onDurationChange(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onEmptied(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onEnded(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onError(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onLoadedData(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onLoadedMetadata(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onLoadStart(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onPause(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onPlay(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onPlaying(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onProgress(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onRateChange(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onSeeked(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onSeeking(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onStalled(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onSuspend(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onTimeUpdate(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onVolumeChange(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onWaiting(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)

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
