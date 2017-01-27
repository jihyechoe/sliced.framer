# Import file "gradualchange" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/gradualchange@2x")

topback = sketch.top_back
whole = sketch.end
totalbill = sketch.totalbill
status = sketch.status

header = new Layer
	width: Screen.width * 2
	height: 293 * 2
	backgroundColor: "#FF8B8B"

billbox = new Layer
	width: Screen.width * 2
	height: 79 * 2
	y: 293 * 2
	backgroundColor: "#FFE7E7"
whole.addChild(billbox)
billbox.placeBehind(status)

scroll = new ScrollComponent
	wrap: header
scroll.scrollVertical = false
whole.addChild(scroll)
scroll.placeBehind(status)

scroll.onMove ->
	header.style.background = "-webkit-linear-gradient(left, #FF8B8B 0%, #D6F0FF 100%)"
