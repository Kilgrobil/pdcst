
from graphics import *

win = GraphWin("test", 500, 500)

pt = Point(50,50)
cir = Circle(pt, 25)
cir.draw(win)


win.getMouse()
win.close()
