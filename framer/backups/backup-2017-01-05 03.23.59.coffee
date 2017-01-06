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

num1.onClick (event, layer) ->
	top0.states.a =
		y: 391
		opacity: 0.00
		
	top1.states.b = 
		y: 312
		opacity: 1
	
	top0.animate "a"
	top1.animate "b"
	
num6.onClick (event, layer) ->
	top6.states.c =
		y: 312
		opacity: 1
	
	top0.states.aa = 
		x: 336
	
	top$.states.
	