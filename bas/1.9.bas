10 MODE 0
20 INPUT sx, sy, r
30 xc = sx : yc = sy
40 PROCdrawcircle(sx, sy, r)
50 FOR circle = 0 TO 320 STEP 60
60  xc = sx + r*COS(RAD(circle)): yc = sy + r*SIN(RAD(circle))
70  PROCdrawcircle(xc, yc, r)
80 NEXT circle
90 END


100 DEF PROCdrawcircle(xc, yc, r)
110    MOVE xc + r, yc
120    FOR theta = 10 TO 360 STEP 10
130       x = r*COS(RAD(theta)): y = r*SIN(RAD(theta)) 
140       DRAW xc + x, yc + y
150    NEXT theta
160 ENDPROC
