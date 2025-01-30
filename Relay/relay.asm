ORG 0000H
	
	step1:
	
	mov	p1 ,#00H  ; set our port to logic 0 -->off
	
		acall delay   ; wait for a bit in off mode
	  acall delay
	  
	setb p1.0           ; set our port to logic 1 -->on
	      ;  
	acall delay		;
	acall delay    ; wait for a bit in on mode
	
	sjmp	step1
	
	delay:
	
	mov 	r0 , #255  			;outer loop count
	
	 mov	 r1, #255					;inner loop count
	
	SUBdelay: DJNZ  r1,SUBdelay 		;decrement inner loop 
	
	SUBdelay2: DJNZ  r0,SUBdelay2        ;decrement outer  loop 
	
	
	RET
	END
	
	
	
	