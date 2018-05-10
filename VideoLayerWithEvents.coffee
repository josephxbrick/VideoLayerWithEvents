# Author: Joseph Brick
# Repository: https://github.com/josephxbrick/VideoLayerWithEvents

class exports.VideoLayerWithEvents extends VideoLayer
	constructor: (options = {}) ->
		super options

# ================= video events ==================

	onAbort: (cb) -> Events.wrap(@player).on "abort", (cb)
	onCanPlay: (cb) -> Events.wrap(@player).on "canplay", (cb)
	onCanPlayThrough: (cb) -> @on(Events.VideoCanPlayThrough, cb)
	onDurationChange: (cb) -> Events.wrap(@player).on "durationchange", (cb)
	onEmptied: (cb) -> Events.wrap(@player).on "emptied", (cb)
	onEnded: (cb) -> Events.wrap(@player).on "ended", (cb)
	onError: (cb) -> Events.wrap(@player).on "error", (cb)
	onLoadedData: (cb) -> Events.wrap(@player).on "loadeddata", (cb)
	onLoadedMetadata: (cb) -> Events.wrap(@player).on "loadedmetadata", (cb)
	onLoadStart: (cb) -> Events.wrap(@player).on "loadstart", (cb)
	onPause: (cb) -> Events.wrap(@player).on "pause", (cb)
	onPlay: (cb) -> Events.wrap(@player).on "play", (cb)
	onPlaying: (cb) -> Events.wrap(@player).on "playing", (cb)
	onProgress: (cb) -> Events.wrap(@player).on "progress", (cb)
	onRateChange: (cb) -> Events.wrap(@player).on "ratechange", (cb)
	onSeeked: (cb) -> Events.wrap(@player).on "seeked", (cb)
	onSeeking: (cb) -> Events.wrap(@player).on "seeking", (cb)
	onStalled: (cb) -> Events.wrap(@player).on "stalled", (cb)
	onSuspend: (cb) -> Events.wrap(@player).on "suspended", (cb)
	onTimeUpdate: (cb) -> Events.wrap(@player).on "timeupdate", (cb)
	onVolumeChange: (cb) -> Events.wrap(@player).on "volumechange", (cb)
	onWaiting: (cb) -> Events.wrap(@player).on "waiting", (cb)
	
# ================= functions (so no need to access videoLayer.player) ==================
	
	play: ->
		@player.play()
	pause: ->
		@player.pause()
	load: ->
		@player.load()
