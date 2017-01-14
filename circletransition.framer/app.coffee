# Import file "circlebg" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/circlebg@2x")

internetitem = sketch.internet_item
entire1 = sketch.$1_entire

#02AD94
circle = new Layer 
  width: 1600, height: 1600, backgroundColor:'#000000', y: -744, x: -718, scale: 0.04
#   width: 1600, height: 1600, backgroundColor:'#000000', y: -700, x: -400

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
subtitle = sketch.subtitle

el = [nums, calendar, topnums, topbuttons, addbutton, subtitle]

for i in el
	i.opacity = 0
	i.states.add 
		"category":
			opacity: 0
			y: i.y - 20
		"input":
			opacity: 1
			y: i.y

isCategory = true
internetitem.on Events.TouchStart, ->
	print 'clicked'+isCategory
	if isCategory
		circle.opacity = 1
		circle.animate "input",
			curve: MaterialCurve
			time: MaterialTime
			delay: "0.06"
			
		for i in el
			i.animate "input",
				delay: "0"
				curve: "ease-out"
				time: 0.1

		isCategory = false
	else 
		isCategory = true	
