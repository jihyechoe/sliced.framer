# Import file "gradualchange" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/gradualchange@2x")

topback = sketch.top_back
whole = sketch.end

header = new Layer
header.width = Screen.width * 2
header.height = 293 * 2

billbox = new Layer
billbox.width = Screen.width * 2
billbox.height = 79 * 2
billbox.y = 293 * 2

scroll = new ScrollComponent
	wrap: sketch.end
scroll.scrollVertical = false

# scroll.onMove ->
# 	if scroll.scrollX < 0
# 		xPos = 0
# 
# 	else
# 		xPos = scroll.scrollX
# 
# 	for header, i in headers
# 
# 		breakPoint = scroll.content.width/headers.length
# 
# 		header.opacity = 
# 			Utils.modulate(xPos, [(i - 1) * breakPoint, i * breakPoint], [0, 1], true)

	