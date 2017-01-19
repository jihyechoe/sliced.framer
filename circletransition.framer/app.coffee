# Import file "circlebg" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/circlebg@2x")

internetitem = sketch.internet_item
rentitem = sketch.rent_item

circleinternet = new Layer 
  width: 1600, height: 1600, backgroundColor:'#02AD94', y: -744, x: -718, scale: 0.04

circlerent = new Layer 
  width: 1600, height: 1600, backgroundColor:'#FF8B8B', y: -742, x: -718, scale: 0.04

circleinternet.style = borderRadius:"50%"
circleinternet.opacity = 0
circleinternet.parent = sketch.internet_item

circlerent.style = borderRadius:"50%"
circlerent.opacity = 0
circlerent.parent = sketch.rent_item

MaterialCurve = "cubic-bezier(0.2, 0.0, 0.2, 1)"
MaterialTime = "0.4"

Framer.Defaults.Animation = 
	curve: MaterialCurve
	time: MaterialTime

circleinternet.states.add
	"category":
		y: -744
		x: -718
		scale: 0.04
	"input":
		y: -700
		x: -400
		scale: 1

circlerent.states.add
	"category":
		y: -742
		x: -718
		scale: 0.04
	"input":
		y: -500
		x: -400
		scale: 1

nums = sketch.nums
calendar = sketch.calendar
topnums = sketch.topnums
topbuttons = sketch.topbutton
add_button_i = sketch.add_button_i
add_button_r = sketch.add_button_r
subtitle_i = sketch.subtitle_i
subtitle_r = sketch.subtitle_r

el = [nums, topnums, topbuttons, add_button_i, add_button_r, subtitle_i, subtitle_r]

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

inputpage = "internet"
internetitem.on Events.TouchStart, ->
	circleinternet.opacity = 1
	wifi.opacity = 0
	rent.opacity = 0
	circleinternet.animate "input",
		curve: MaterialCurve
		time: MaterialTime
		
	for i in el
		if i != subtitle_r and i != add_button_r
			i.animate "input",
				delay: "0.3"
				curve: "ease-out"
				time: 0.5
			
addtext = sketch.add_text

rentitem.on Events.TouchStart, ->
	inputpage = "rent"
	circlerent.opacity = 1
	wifi.opacity = 0
	rent.opacity = 0
	internetitem.opacity = 0
	circlerent.animate "input",
		curve: MaterialCurve
		time: MaterialTime
		
	for i in el
		if i != subtitle_i and i != add_button_i
			i.animate "input",
				delay: "0.3"
				curve: "ease-out"
				time: 0.5

wifi.states.a = 
	opacity: 1
rent.states.a = 
	opacity: 1
internetitem.states.a = opacity: 1
	
sketch.arrow_2.on Events.TouchStart, ->
	if inputpage == "internet"
		circleinternet.animate "category",
			curve: MaterialCurve
			time: MaterialTime
			delay: "0.06"
	else 
		circlerent.animate "category",
			curve: MaterialCurve
			time: MaterialTime
			delay: "0.06"
		
	wifi.animate "a",
		time: 0.5
		curve: "ease"
		
	rent.animate "a",
		time: 0.5
		curve: "ease"

	for i in el
		i.animate "category",
			delay: "0"
			curve: "ease-out"
			time: 0.1
			
	if inputpage == "rent"
		internetitem.animate "a",
			time: 0.3
			delay: 0.2


