10  MODE 0
20  PROCinitialise 
30  PROCdrawhouse
40  END

50 	DEF PROCdrawhouse
60 		PROCdrawafront
70  	PROCdrawacentre 
80 	ENDPROC

90  DEF PROCdrawafront
100 	PROCdrawawing(startx, starty, winglenght, height)
110     PROCdrawawing(startx+centrelenght+winglenght, starty, winglenght, height)
120 ENDPROC

130 DEF PROCdrawacentre
140 	PROCdrawabox(startx + winglenght, starty, centrelenght, height)
150 	PROCdrawcentreroof
160 	PROCdrawcentrewindows
170 	PROCdrawadoor
180 ENDPROC

190 DEF PROCdrawawing(startx, starty, winglenght, heigth)
200 	PROCdrawabox(startx, starty, winglenght, height)
210 	PROCdrawwingwindows (startx, starty) 
220 	PROCdrawawingroof(startx, starty+height)
230 	PROCdrawacircle(startx+winglenght/2,starty+height+height/8,30)
240 ENDPROC

250 DEF PROCdrawcentrewindows
260 	LOCAL x, y, width, wheight 
270 	x = startx + winglenght + centrelenght/10
280 	y = starty + height/7 
290 	width = centrelenght/7: wheight = height/3
300 	PROCdrawawindow (x, y, width, wheight)
310 	PROCdrawawindow (x,y+wheight+height/8, width, wheight)
320 	x = winglenght+ startx + centrelenght/2 -width/2
330 	PROCdrawawindow(x,y+wheight+height/8, width, wheight)
340 	x = startx+winglenght+ centrelenght-centrelenght/10 - width
350 	PROCdrawawindow(x,y+wheight+height/8, width, wheight) 
360 	PROCdrawawindow(x, y, width, wheight)
370 ENDPROC

380 DEF PROCdrawwingwindows(startx, starty)
390 	LOCAL x, y, width, wheight
400 	x = startx+winglenght/5 
410 	y = starty+height/7
420 	width = winglenght/5
430 	wheight = height/3
440 	PROCdrawawindow(x, y, width, wheight)
450 	PROCdrawawindow(x+2*width, y, width, wheight) 
460 	PROCdrawawindow(x+2*width,y+wheight+height/8, width, wheight)
470 	PROCdrawawindow(x,y+wheight+height/8, width, wheight) 
480 ENDPROC

490 DEF PROCdrawabox(startx, starty, lenght, height)
500 	MOVE startx, starty
510 	PLOT 1,lenght,0 : PLOT 1,0,height 
520 	PLOT 1,-lenght,0 : PLOT 1,0,-height
530 ENDPROC

540 DEF PROCinitialise
550 	startx = 50: starty = 200
560 	winglenght = 300: height = 480 
570		centrelenght = 480
580 ENDPROC

590 DEF PROCdrawawingroof(startx, starty)
600 	MOVE startx, starty 
610 	PLOT1,winglenght/2,height/3
620 	PLOT1,winglenght/2,-height/3 
630 ENDPROC

640 DEF PROCdrawadoor
650 	LOCAL x, y, dheight, dwidth
660 	dwidth = centrelenght/3.5: dheight = height/2.1 
670 	x=startx+winglenght+centrelenght/2-dwidth/2: y = starty 
680		PROCdrawabox(x, y, dwidth, dheight)
690 	PROCdrawabox(x+dwidth/5, y+dheight/6, dwidth/5, 0.7*dheight) 
700		PROCdrawabox(x+3*dwidth/5, y+dheight/6, dwidth/5, 0.7*dheight) 
710 	MOVE x,y+dheight: PLOT 1,dwidth/2,dheight/7
720 	PLOT 1,dwidth/2,-dheight/7
730 ENDPROC 

740 DEF PROCdrawawindow(startx, starty, width, wheight) 
750 	LOCAL x, y
760 	PROCdrawabox(startx, starty, width, wheight) 
770		xpane = width/4: ypane = wheight/5
780 	y= starty
790		FOR pane = 1 TO 5
800 		y = y + ypane: MOVE startx,y: PLOT 1,width,0
810 	NEXT pane 
820 	MOVE startx, starty
830 	x = startx
840 	FOR pane = 1 TO 3 
850 		x = x + xpane: MOVE x, starty: PLOT 1,0,wheight
860 	NEXT pane
870 ENDPROC

880 DEF PROCdrawcentreroof
890 	LOCAL lenght, y, x, dx, dy 
900 	y = starty+ height + height/3: dy = height/30
910 	x = startx + winglenght/2: dx = winglenght/20 
920 	lenght = centrelenght+winglenght
930 	FOR i = 1 TO 10
940 		MOVE x, y
950 		PLOT 1, lenght, 0
960 		x = x + dx : lenght = lenght - 2*dx : y = y - dy
970 	NEXT i
980 ENDPROC


990 DEF PROCdrawacircle(xc, yc, r)
1000 	LOCAL x, y
1010	MOVE xc + r, yc
1020 	FOR theta = 10 TO 360 STEP 5 
1030		x = r*COS(RAD (theta)): y = r*SIN(RAD (theta))
1040 		DRAW xc + x, yc + y
1050 	NEXT theta
1060 ENDPROC