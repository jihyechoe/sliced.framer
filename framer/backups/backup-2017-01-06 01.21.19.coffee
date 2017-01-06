# Import file "sliced_framer" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/sliced_framer@2x")


num1 = sketch.$1
num6 = sketch.$6
num7 = sketch.$7
num0 = sketch.$0
numdot = sketch.dot

top$ = sketch.top$
top0 = sketch.top0
top1 = sketch.top1
top1.opacity = 0
top1.y = 260

top6 = sketch.top6
top6.opacity = 0
top6.x = 390
top6.y = 260

top7 = sketch.top7
top7.opacity = 0
top7.x = 430
top7.y = 260

topdot6 = sketch.topdot6
topdot0 = sketch.topdot0
topdot00 = sketch.topdot00
topdot0.opacity = 0
topdot00.opacity = 0
topdot6.opacity = 0

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
		x: 430
		y: 312
		opacity: 1
		scale: 0.80

	top6.states.c = 
		x: 330
		scale: 0.80
	
	top1.states.c = 
		x: 260
		scale: 0.80
	
	top$.states.c = 
		x: 200
		scale: 0.80
	
	top$.animate "c"
	top1.animate "c"
	top6.animate "c"
	top7.animate "c"
	
numdot.onClick (event, layer) ->
	topdot00.states.d = 
		x: 450
		opacity: 1

	topdot0.states.d = 
		x: 420
		opacity: 1
	
	top7.states.d = 
		x: 390
		scale: 0.80

	top6.states.d = 
		x: 330
		scale: 0.80
	
	top1.states.d = 
		x: 260
		scale: 0.80
	
	top$.states.d = 
		x: 200
		scale: 0.80
	
	top$.animate "d"
	top1.animate "d"
	top6.animate "d"
	top7.animate "d"
	topdot0.animate "d"
	topdot00.animate "d"
	