# Import file "sliced_framer" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/sliced_framer@2x")


num1 = sketch.$1
num4 = sketch.$4
num6 = sketch.$6
num7 = sketch.$7
num0 = sketch.$0
back = sketch.back
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
top7.x = 445
top7.y = 260

topdot0 = sketch.topdot0
topdot00 = sketch.topdot00
topdot0.opacity = 0
topdot00.opacity = 0
topdot0.x = 500
topdot00.x = 570
topdot0.y = 260
topdot00.y = 260

topdot4 = sketch.topdot4
topdot4.x = 500
topdot4.y = 260
topdot4.opacity = 0

num1.onClick (event, layer) ->
	top0.states.a =
		y: 391
		opacity: 0.00
		
	top1.states.a = 
		y: 312
		opacity: 1
	
	top0.animate "a",
		time: 0.50
		curve: "ease"
	top1.animate "a",
		time: 0.50
		curve: "ease"
	
	
num6.onClick (event, layer) ->
	top6.states.b =
		x: 390
		y: 312
		opacity: 1
	
	top1.states.b = 
		x: 280
	
	top$.states.b = 
		x: 200
		
	top$.animate "b",
		time: 0.50
		curve: "ease"
	top1.animate "b",
		time: 0.50
		curve: "ease"
	top6.animate "b",
		time: 0.50
		curve: "ease"
	
num7.onClick (event, layer) ->
	top7.states.c =
		x: 445
		y: 312
		opacity: 1
		scale: 0.80

	top6.states.c = 
		x: 335
		scale: 0.80
	
	top1.states.c = 
		x: 250
		scale: 0.80
	
	top$.states.c = 
		x: 190
		scale: 0.80
	
	top$.animate "c",
		time: 0.50
		curve: "ease"
	top1.animate "c",
		time: 0.50
		curve: "ease"
	top6.animate "c",
		time: 0.50
		curve: "ease"
	top7.animate "c",
		time: 0.50
		curve: "ease"
	
numdot.onClick (event, layer) ->
	topdot00.states.d = 
		y: 325
		opacity: 0.3

	topdot0.states.d = 
		y: 325
		opacity: 0.3
	
	top7.states.d = 
		x: 375
		scale: 0.80

	top6.states.d = 
		x: 265
		scale: 0.80
	
	top1.states.d = 
		x: 180
		scale: 0.80
	
	top$.states.d = 
		x: 120
		scale: 0.80
	
	top$.animate "d",
		time: 0.50
		curve: "ease"
	top1.animate "d",
		time: 0.50
		curve: "ease"
	top6.animate "d",
		time: 0.50
		curve: "ease"
	top7.animate "d",
		time: 0.50
		curve: "ease"
	topdot0.animate "d",
		time: 0.50
		curve: "ease"
	topdot00.animate "d",
		time: 0.50
		curve: "ease"
	
num4.onClick (event, layer) ->
	topdot0.states.e = 
		y: 391
		opacity: 0.00
	
	topdot4.states.e =
		y: 328
		opacity: 1

	topdot0.animate "e",
		time: 0.50
		curve: "ease"
	topdot4.animate "e",
		time: 0.50
		curve: "ease"
	
back.onClick (event, layer) ->
	topdot00.states.f = 
		y: 260
		opacity: 0
	
	topdot4.states.f =
		y: 260
		opacity: 0

	topdot00.animate "f",
		time: 0.50
		curve: "ease"
	topdot4.animate "f",
		time: 0.50
		curve: "ease"
	
	top7.states.c =
		x: 445

	top6.states.c = 
		x: 335
	
	top1.states.c = 
		x: 250
	
	top$.states.c = 
		x: 190

	top7.animate "c",
		time: 0.50
		curve: "ease"
	top6.animate "c",
		time: 0.50
		curve: "ease"
	top1.animate "c",
		time: 0.50
		curve: "ease"
	top$.animate "c",
		time: 0.50
		curve: "ease"
	

	
