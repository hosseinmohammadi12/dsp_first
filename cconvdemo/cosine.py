#!/bin/usr/env python3


import sys



import numpy as np
import matplotlib.pyplot as plt

class Cosine:
    
    def __init__(self):
        self.name = 'Cosine'
        self.amplitude = 1
        self.period = 10
        self.phase = 0
        self.length = 10
        self.delay = 0
        self.t = 0
        self.init()
        self.y = 0
        
    
    def init(self):
        print('init')
        t = np.arange(self.delay-5,self.delay+15, 0.01)
        self.t = t
        y = self.amplitude*np.cos(2*np.pi/self.period*(t - self.delay)+self.phase)*np.logical_and(self.delay <= t,(t <= self.delay+self.length)) 
        self.y = y
        # plt.plot(t, y)
        # plt.show()
    
    def cosine(self, amplitude, period, phase, length, delay):
        print('cosine')
        self.amplitude = amplitude
        self.period = period
        self.phase = phase
        self.length = length
        self.delay = delay

        t = np.arange(self.delay-5,self.delay+15, 0.01)
        self.t = t
        y = self.amplitude*np.cos(2*np.pi/self.period*(t - self.delay)+self.phase)*np.logical_and(self.delay <= t,(t <= self.delay+self.length))
        self.y = y

if __name__ == "__main__":
    cos = Cosine()
    cos.init()


