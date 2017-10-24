
import graphics


class Visualizer:  # default point visualizer
    def __init__(self, agent, gw, env):
        self.agent = agent
        self.gw = gw
        self.env = env
        self.initShape()
        self.shape.draw(self.gw.win)

    def initShape(self):
        (x, y) = self.get_graphical_coordinates()
        self.shape = graphics.Point(x, y)

    def get_graphical_coordinates(self):
        return self.agent.x * self.gw.dimfactor, self.agent.y * self.gw.dimfactor


class CircleVisualizer(Visualizer):
    def __init__(self, agent, gw, env, radius):
        self.radius = radius
        super().__init__(agent, gw, env)

    def initShape(self):
        self.point = graphics.Point(self.get_graphical_coordinates())
        self.shape = graphics.Circle(self.point, self.radius)
