# Import file "gradualchange" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/gradualchange@2x")

topback = sketch.top_back
billbox = sketch.totalbillbox
whole = sketch.end

scroll = new ScrollComponent
	wrap: topback
scroll.content.clip = false
scroll.scrollVertical = false

scroll.onMove ->
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

	