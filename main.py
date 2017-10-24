
from agent import *
from environment import *
from graphicwindow import *

tokyo = Environment(1., 1.)
yakuza = Agent(tokyo, .1, .1)
police = Agent(tokyo, .9, .9)

pretty = GraphicWindow(500, tokyo)
pretty.wait_click()
