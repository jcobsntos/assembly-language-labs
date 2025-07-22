.model SMALL
    .stack 100h
    .data
    
Rule1  db "San Miguel consortium wins bid to rehabilitate NAIA.$"
Rule1a db "Among the improvements in NAIA which the passengers and other stakeholders can expect include expansion of the$"
Rule1b db "Passenger Terminal Buildings (PTBs), additional aircraft parking bays, increase in vehicular parking slots,$"
Rule1c db "installation of world-class systems and technology, more food and beverage F&B and retail options, more convenient$"
Rule1d db "Land transport connectivity, among others. Furthermore, flight delays and cancellations due issues with airport facilities$"
Rule1e db "are expected to be significantly reduced, the Manila International Airport Authority (MIAA) said in a statement.$"
Rule1f db "Authorities assured that these employees will be incentivized and be handed out salary increases during the process.$"
Rule1g db "MIAA spokesperson Atty. Chris Bendijo said around 400 of the employees have signed their contracts with$"
CRLF   db 13,10,"$"

    .code
    BEGIN:mov ax, @data
          mov ds, ax
          mov es, ax
          
          mov al, 03h     
          mov ah, 00h
          int 10h
    
          mov dx, OFFSET Rule1   ;print 
          mov ah, 09h
          int 21h   
		  
		   mov dx, OFFSET CRLF
      mov ah, 09h
      int 21h 
  
          mov dx, OFFSET Rule1a  ;print
          mov ah, 09h
          int 21h
          mov dx, OFFSET CRLF
      mov ah, 09h
      int 21h 
	  
          mov dx, OFFSET Rule1b  
          mov ah, 09h
          int 21h
          mov dx, OFFSET CRLF       ;print\n
      mov ah,09h
      int 21h  
	  
          mov dx, OFFSET Rule1c  	
          mov ah, 09h
          int 21h
          mov dx, OFFSET CRLF       ;print\n
      mov ah,09h
      int 21h 
		   mov dx, OFFSET CRLF
      mov ah, 09h
      int 21h 	
	  
          mov dx, OFFSET Rule1d  
          mov ah, 09h
          int 21h
          mov dx, OFFSET CRLF       ;print\n
      mov ah,09h
      int 21h   
	  
          mov dx, OFFSET Rule1e 
          mov ah, 09h
          int 21h
          mov dx, OFFSET CRLF       ;print\n
      mov ah,09h
      int 21h  
	  
          mov dx, OFFSET Rule1f
          mov ah, 09h
          int 21h
          mov dx, OFFSET CRLF       ;print\n
      mov ah,09h
      int 21h   
	 
          mov dx, OFFSET Rule1g  
          mov ah, 09h
          int 21h
          mov dx, OFFSET CRLF       ;print\n
	  mov ah,09h
      int 21h   
  
          
         mov ah, 4ch
         int 21h
         end BEGIN          
