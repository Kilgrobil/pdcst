
class Agent:
    def __init__(self, env, x, y):
        self.environment = env
        self.x = x
        self.y = y
        env.add_agent(self)
