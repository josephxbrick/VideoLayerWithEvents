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
