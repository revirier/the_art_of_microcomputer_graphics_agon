10 MODE 0
20 VDU 29,640;512;
30 r=200: MOVE r,0
40 FOR theta = 0 TO 360 STEP 10
50 x = r*COS(RAD(theta)): y = r*SIN(RAD(theta))
60 DRAW x,y
70 NEXT theta
80 END