# Import file "sliced_framer" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/sliced_framer@2x")


num1 = sketch.$1
num2 = sketch.$2
num3 = sketch.$3
num4 = sketch.$4
num5 = sketch.$5
num6 = sketch.$6
num7 = sketch.$7
num8 = sketch.$8
num9 = sketch.$9
num0 = sketch.$0
numdot = sketch.dot

top$ = sketch.top$
top0 = sketch.top0
top1 = sketch.top1
top1.opacity = 0
top1.y = 260

top6 = sketch.top6
top6.opacity = 0
top6.y = 260

top7 = sketch.top7
top7.opacity = 0
top7.x = 470
top7.y = 260

num1.onClick (event, layer) ->
	top0.states.a =
		y: 391
		opacity: 0.00
		
	top1.states.a = 
		y: 312
		opacity: 1
	
	top0.animate "a"
	top1.animate "a"
	
num6.onClick (event, layer) ->
	top6.states.b =
		x: 390
		y: 312
		opacity: 1
	
	top1.states.b = 
		x: 280
	
	top$.states.b = 
		x: 200
		
	top$.animate "b"
	top1.animate "b"
	top6.animate "b"
	
num7.onClick (event, layer) ->
	top7.states.c =
		x: 340
		y: 312
		opacity: 1
		scale: 0.75

	top6.states.c = 
		x: 280
		scale: 0.75
	
	top1.states.c = 
		x: 240
		scale: 0.75
	
	top$.states.c = 
		x: 180
		scale: 0.75
	
	top$.animate "c"
	top1.animate "c"
	top6.animate "c"
	top7.animate "c"
	