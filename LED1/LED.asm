

org 0000h
	
	here:
	clr p1.0
	clr p2.0
	jb p1.0 ,next
	sjmp here

	next:
	setb p2.0
	end