# VideoLayerWithEvents
Framer VideoLayer module with shortcuts for the video events. It also makes play(), pause() and load() functions of the video layer itself, so no need for `videoLayer.player.play()` and such. Instead, you can use `videoLayer.play()`

### Events

* `onAbort(event)` - Same as HTML video event [abort](https://www.w3schools.com/tags/av_event_abort.asp)
* `onCanPlay(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onCanPlayThrough(event)` - Same as HTML video event [canplaythrough](https://www.w3schools.com/tags/av_event_canplaythrough.asp)
* `onDurationChange(event)` - Same as HTML video event [durationchange](https://www.w3schools.com/tags/av_event_durationchange.asp)
* `onEmptied(event)` - Same as HTML video event [emptied](https://www.w3schools.com/tags/av_event_emptied.asp)
* `onEnded(event)` - Same as HTML video event [ended](https://www.w3schools.com/tags/av_event_ended.asp)
* `onError(event)` - Same as HTML video event [error](https://www.w3schools.com/tags/av_event_error.asp)
* `onLoadedData(event)` - Same as HTML video event [loadeddata](https://www.w3schools.com/tags/av_event_loadeddata.asp)
* `onLoadedMetadata(event)` - Same as HTML video event [loadedmetadata](https://www.w3schools.com/tags/av_event_loadedmetadata.asp)
* `onLoadStart(event)` - Same as HTML video event [loadstart](https://www.w3schools.com/tags/av_event_loadstart.asp)
* `onPause(event)` - Same as HTML video event [pause](https://www.w3schools.com/tags/av_event_pause.asp)
* `onPlay(event)` - Same as HTML video event [play](https://www.w3schools.com/tags/av_event_play.asp)
* `onPlaying(event)` - Same as HTML video event [playing](https://www.w3schools.com/tags/av_event_playing.asp)
* `onProgress(event)` - Same as HTML video event [canplay](https://www.w3schools.com/tags/av_event_canplay.asp)
* `onRateChange(event)` - Same as HTML video event [ratechange](https://www.w3schools.com/tags/av_event_ratechange.asp)
* `onSeeked(event)` - Same as HTML video event [seeked](https://www.w3schools.com/tags/av_event_seeked.asp)
* `onSeeking(event)` - Same as HTML video event [seeking](https://www.w3schools.com/tags/av_event_seeking.asp)
* `onStalled(event)` - Same as HTML video event [stalled](https://www.w3schools.com/tags/av_event_stalled.asp)
* `onSuspend(event)` - Same as HTML video event [suspend](https://www.w3schools.com/tags/av_event_suspend.asp)
* `onTimeUpdate(event)` - Same as HTML video event [timeupdate](https://www.w3schools.com/tags/av_event_timeupdate.asp)
* `onVolumeChange(event)` - Same as HTML video event [volumechange](https://www.w3schools.com/tags/av_event_volumechange.asp)
* `onWaiting(event)` - Same as HTML video event [waiting](https://www.w3schools.com/tags/av_event_waiting.asp)

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
