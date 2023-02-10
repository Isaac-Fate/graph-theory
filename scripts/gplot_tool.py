import matplotlib.pyplot as plt
import matplotlib.patches as patches
import numpy as np

def add_loop(
        point, 
        width=0.1, 
        ratio=0.5, 
        angle=45, 
        ax: plt.Axes | None = None, 
        **kwargs
    ) -> None:
    
    if ax is None:
        ax = plt.gca()
    
    # convert point to NumPy array
    point = np.array(point)
    
    # set height of ellipse
    height = width * ratio
    
    # compute the directional vector of the given angle
    rad = np.deg2rad(angle)
    direction = np.array([np.cos(rad), np.sin(rad)])

    # compute center of ellipse
    center = point + (width / 2) * direction
    
    # draw closed loop about the given point
    loop = patches.Arc(center, width, height, angle, **kwargs)
    ax.add_patch(loop)