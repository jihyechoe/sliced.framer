# Import file "sliced_slideup_framer" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/sliced_slideup_framer@2x")

contents = sketch.contents

dot = sketch.dot
title = sketch.title
subtitle = sketch.sub_title
$ = sketch.$
num = sketch.num
dotnum = sketch.dotnum

dot.opacity = 0
dot.y = 109
dot.x = 392

toplimit = 160
bottomlimit = 566

bottommovingpoint = bottomlimit-toplimit
topmovingpoint = 0

scroll = new ScrollComponent
	wrap: contents
scroll.scrollHorizontal = false

scroll.contentInset = {
	top : bottomlimit-toplimit
}
scroll.y = toplimit
scroll.height = contents.height
scroll.speedY = 1

scroll.onMove ->
	$.x = Utils.modulate(contents.y, [bottommovingpoint, topmovingpoint], [170,290], true)
	$.y = Utils.modulate(contents.y, [bottommovingpoint, topmovingpoint], [288,54], true)
	$.scale = Utils.modulate(contents.y, [bottommovingpoint, topmovingpoint], [1,0.5], true)

	num.x = 
	Utils.modulate(contents.y, [bottommovingpoint, topmovingpoint], [240,257], true)
	num.y = 
	Utils.modulate(contents.y, [bottommovingpoint, topmovingpoint], [284,24], true)
	num.scale = 
	Utils.modulate(contents.y, [bottommovingpoint, topmovingpoint], [1,0.25], true)
	
	dotnum.x = 
	Utils.modulate(contents.y, [bottommovingpoint, topmovingpoint], [474,377], true)
	dotnum.y = 
	Utils.modulate(contents.y, [bottommovingpoint, topmovingpoint], [292,62], true)
	dotnum.scale = 
	Utils.modulate(contents.y, [bottommovingpoint-100, topmovingpoint], [1,0.53], true)
	
	title.opacity =
	subtitle.opacity =
	Utils.modulate(contents.y, [bottommovingpoint, topmovingpoint+200], [1,0], true)
	
	dot.opacity =
	Utils.modulate(contents.y, [100, topmovingpoint], [0,1], true)