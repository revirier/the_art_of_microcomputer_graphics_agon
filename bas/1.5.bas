10 MODE 0
20 INPUT sx, sy, r
30 xc = sx : yc = sy
40 MOVE xc + r, yc
50 FOR theta = 10 TO 360 STEP 10
60  x = r*COS(RAD(theta)): y = r*SIN(RAD(theta))
70  DRAW xc + x, yc + y
80 NEXT theta
90 FOR circle = 0 TO 320 STEP 60
100     xc = sx + r*COS(RAD(circle))
110     yc = sy + r*SIN(RAD(circle))
120     MOVE xc + r , yc
130     FOR theta = 10 TO 360 STEP 10
140         x = r*COS(RAD(theta)): y = r*SIN(RAD(theta))
150         DRAW xc+x , yc + y
160     NEXT theta
170 NEXT circle