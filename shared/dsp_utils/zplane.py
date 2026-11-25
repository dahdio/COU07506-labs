"""Reusable pole-zero plotting utility from Week 4 (Task 4.1)."""

import numpy as np
import matplotlib.pyplot as plt
from scipy import signal


def zplane(b, a, ax=None):
    """Plot the unit circle, zeros ('o'), and poles ('x') of H(z) = B(z)/A(z)."""
    z, p, k = signal.tf2zpk(b, a)
    ax = ax or plt.gca()
    th = np.linspace(0, 2 * np.pi, 400)
    ax.plot(np.cos(th), np.sin(th), "k--", lw=0.8)
    ax.plot(z.real, z.imag, "o", mfc="none", ms=9, mew=1.8, label="zeros")
    ax.plot(p.real, p.imag, "x", ms=9, mew=2, label="poles")
    ax.set_aspect("equal")
    ax.legend(loc="best", fontsize=8.5)
    ax.set_xlabel("Re(z)")
    ax.set_ylabel("Im(z)")
    return z, p
