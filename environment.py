
class Environment:
    def __init__(self, xdim, ydim):
        self.xdim = xdim
        self.ydim = ydim
        self.agents = []

    def add_agent(self, agent):
        self.agents.append(agent)
