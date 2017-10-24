
import graphics
from visualizer import *


class GraphicWindow:
    def __init__(self, dimfactor, env):
        self.xdim = env.xdim * dimfactor
        self.ydim = env.ydim * dimfactor
        self.dimfactor = dimfactor
        self.environment = env
        self.win = graphics.GraphWin("PDCST", self.xdim, self.ydim)
        self.visualizers = []
        for a in env.agents:
            self.visualizers.append(Visualizer(a, self, env))

    def wait_click(self):
        self.win.getMouse()

    def close(self):
        self.win.close()
