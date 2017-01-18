# Import file "circlebg" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/circlebg@2x")

internetitem = sketch.internet_item
rentitem = sketch.rent_item
entire1 = sketch.$1_entire

circle = new Layer 
  width: 1600, height: 1600, backgroundColor:'#02AD94', y: -744, x: -718, scale: 0.04

circle.style =
  borderRadius:"50%"
circle.opacity = 0
circle.parent = sketch.internet_item

MaterialCurve = "cubic-bezier(0.2, 0.0, 0.2, 1)"
MaterialTime = "0.4"

Framer.Defaults.Animation = 
	curve: MaterialCurve
	time: MaterialTime

circle.states.add
	"category":
		y: -744
		x: -718
		scale: 0.04
	"input":
		y: -700
		x: -400
		scale: 1

nums = sketch.nums
calendar = sketch.calendar
topnums = sketch.topnums
topbuttons = sketch.topbutton
addbutton = sketch.add_button
subtitle_i = sketch.subtitle_i
subtitle_r = sketch.subtitle_r

el = [nums, topnums, topbuttons, addbutton, subtitle_i, subtitle_r]

for it in el
	it.opacity = 0
	it.states.add 
		"category":
			opacity: 0
		"input":
			opacity: 1
			y: it.y
			
wifi = sketch.wifi1
rent = sketch.rent_1

internetitem.on Events.TouchStart, ->
	circle.opacity = 1
	wifi.opacity = 0
	rent.opacity = 0
	circle.animate "input",
		curve: MaterialCurve
		time: MaterialTime
		
	for i in el
		i.animate "input",
			delay: "0.3"
			curve: "ease-out"
			time: 0.5
			
rentitem.on Events.TouchStart, ->
	

wifi.states.a = 
	opacity: 1
	
sketch.arrow_2.on Events.TouchStart, ->
	circle.animate "category",
		curve: MaterialCurve
		time: MaterialTime
		delay: "0.06"
		
	wifi.animate "a",
		time: 0.5
		curve: "ease"

	for i in el
		i.animate "category",
			delay: "0"
			curve: "ease-out"
			time: 0.1
	

