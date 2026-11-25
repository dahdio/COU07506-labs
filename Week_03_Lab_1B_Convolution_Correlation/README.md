# Week 3 - Lab 1B: Convolution, Correlation and Difference Equations

* **Unit & Topic:** Unit 1 - Signals, systems, convolution, correlation, difference equations
* **Handout Reference:** §1.3-1.9; Listings 1.4-1.7; Examples 1.9 and 1.10
* **Module Outcomes:** LO2
* **Deliverable Notebook:** [`COU07506_Week03_250242485225.ipynb`](./COU07506_Week03_250242485225.ipynb)
* **Student:** DAUD SELEMANI DAUD (`250242485225`, `BENG24COE-2`, `Group 29`)

## Contents in this Folder
* [`COU07506_Week03_250242485225.ipynb`](./COU07506_Week03_250242485225.ipynb) - Executed Jupyter Notebook containing:
  * **Pre-lab Questions (a) & (b):** Step-by-step hand convolution of $x(n) = \{1, -1, 2\}$ with $h(n) = \{2, 1, 0, 1\} \rightarrow y(n) = \{2, -1, 3, 3, -1, 2\}$, and analytical proof that $y(n) = n\,x(n)$ is time-varying (not time-invariant).
  * **Task 3.1 - Convolution from the definition:** Nested-loop `conv(x, h)` implementation, verification against `np.convolve`, and execution timing benchmark on length-2000 random sequences via `time.perf_counter()`.
  * **Task 3.2 - Smoothing a noisy signal by convolution:** Filtering $x(n) = \sin(2\pi n/50) + 0.5w(n)$ with moving-average filters ($M = 3, 9, 25$, `mode="same"`) and quantitative noise-reduction vs. signal-distortion analysis.
  * **Task 3.3 - Testing linearity and time-invariance numerically:** Numerical superposition and shift-invariance tests on $x^2(n)$, $n\,x(n)$, and a 3-tap moving average filter, with formal mathematical proofs from Handout §1.7.
  * **Task 3.4 - Finding a hidden delay with cross-correlation:** Delay estimation (`true_delay = 37` samples at $f_s = 1000\text{ Hz}$) using `signal.correlate`, noise standard deviation sweep ($\sigma \in \{0.5, 1, 2, 4, 5, 6, 8\}$), and conversion to distance at $343\text{ m/s}$ ($12.691\text{ m}$ one-way / $6.3455\text{ m}$ pulse-echo range).
  * **Task 3.5 - Difference equation:** Solving $y(n) - \frac{3}{4}y(n-1) + \frac{1}{8}y(n-2) = x(n) + x(n-1)$ for $h(n)$ ($0 \le n \le 9$) via direct recursion, `signal.lfilter`, and closed form $6(0.5)^n - 5(0.25)^n$, plus unit step response steady-state verification against $H(1) = \sum b / \sum a = 16/3 \approx 5.3333$.
  * **Checkpoint 3 Summary, Analysis Questions (1-4) & AI-Use Statement.**
* [`figures/`](./figures/) - High-resolution exported plots:
  * `task3_1_convolution_verification.png`
  * `task3_2_moving_average_smoothing.png`
  * `task3_4_crosscorrelation_sigma05.png`
  * `task3_4_noise_sweep.png`
  * `task3_5_difference_equation.png`
