# COU 07506 - Digital Signal Processing Laboratory Repository (`COU07506-labs`)

**Dar es Salaam Institute of Technology (DIT)**  
**Computer Studies Department**  
**Academic Year:** 2026/27, Semester I  
**Module Code:** COU 07506 (NTA Level 7)  
**Lecturer:** Dr. Haji Fimbombaya  

---

## Student Information

| Field | Details |
| :--- | :--- |
| **Student Name** | DAUD SELEMANI DAUD |
| **Registration Number** | `250242485225` |
| **Class** | `BENG24COE-2` |
| **Group** | `Group 29` (1. Goodluck Emilian Luselo, 2. Adinan Athuman Senzota, 3. Frank Herman Kaembesi, 4. Daud Selemani Daud, 5. Aron Julius Ngowi) |
| **Repository URL** | [https://github.com/dahdio/COU07506-labs.git](https://github.com/dahdio/COU07506-labs.git) |

---

## Week 1 - Lab 0: Setting Up the DSP Laboratory

### Contents in this Repository
* [`COU07506_Week01_250242485225.ipynb`](./COU07506_Week01_250242485225.ipynb) - Complete executed Jupyter Notebook for **Week 1 (Lab 0)** covering:
  * **Pre-lab Question:** Three everyday DSP-enabled devices and the signals they process.
  * **Task 1.1 - Your first notebook:** Generation and stem plotting of the four elementary discrete-time sequences $\delta(n)$, $u(n)$, $r(n)$, and $(0.8)^n u(n)$ for $-5 \le n \le 10$.
  * **Task 1.2 - Change the parameters:** Causal real exponentials $(a)^n u(n)$ for $a \in \{0.5, -0.8, 1.1\}$ and periodicity comparison of $\cos(2\pi n/8)$ vs. $\cos(2\pi n/7.5)$ for $0 \le n \le 40$.
  * **Task 1.3 - Working with audio:** Loading, stereo-to-mono conversion, normalization, time-domain waveform plotting, and audio playback of [`my_voice.wav`](./my_voice.wav) ($f_s = 44,100\text{ Hz}$, duration $= 4.00\text{ s}$, $176,400\text{ samples}$).
  * **Task 1.4 - The same in Octave:** GNU Octave implementation ([`task1_4_octave.m`](./task1_4_octave.m)) and Python vs. GNU Octave syntax comparison table.
  * **Task 1.5 - Repository and submission:** Checkpoint 1 verification summary and proposed mini-project topics.
  * **Analysis Questions (1-3):** Detailed answers with full mathematical derivations and units.
  * **AI-Use Statement:** Completed in accordance with Appendix A of the Laboratory Manual.
* [`task1_4_octave.m`](./task1_4_octave.m) - GNU Octave script reproducing Task 1.1 (`task1_4_octave.png`).
* [`my_voice.wav`](./my_voice.wav) - 4.00-second voice audio recording sampled at $44,100\text{ Hz}$.
* Generated Figures:
  * `task1_1_sequences.png`
  * `task1_2_exponentials.png`
  * `task1_2_cosines.png`
  * `task1_3_recording.png`
  * `task1_4_octave.png`

---

## Week 2 - Lab 1A: Sampling, Aliasing and Quantization

### Contents in [`Week_02_Lab_1A_Sampling_Quantization/`](./Week_02_Lab_1A_Sampling_Quantization/)
* [`COU07506_Week02_250242485225.ipynb`](./Week_02_Lab_1A_Sampling_Quantization/COU07506_Week02_250242485225.ipynb) - Complete executed Jupyter Notebook for **Week 2 (Lab 1A)** covering:
  * **Pre-lab Questions (a) & (b):** Alias frequency prediction for a $7\text{ kHz}$ tone sampled at $10\text{ kHz}$ ($3\text{ kHz}$), and step size $\Delta = 7.8125\text{ mV}$ & theoretical $\text{SQNR} = 49.92\text{ dB}$ for an 8-bit $\pm 1\text{ V}$ quantizer.
  * **Task 2.1 - Aliasing of a sinusoid:** Continuous vs. aliased cosine plots for $f_0 = 7.0\text{ Hz}$ sampled at $f_s \in \{10, 12, 14, 20\}\text{ Hz}$ and comparison table with $|F - k f_s|$.
  * **Task 2.2 - Hear aliasing:** Naive sample dropping (`x[::k]`) vs. FIR anti-aliased decimation (`signal.decimate`) of `my_voice.wav` for $k \in \{2, 4, 8\}$, spectral comparison, and listening observations for $k = 8$.
  * **Task 2.3 - A uniform quantizer:** 3-bit uniform quantization of a $300\text{ Hz}$ sinusoid ($f_s = 8000\text{ Hz}$, $\Delta = 0.25\text{ V}$) with staircase and error waveform plots.
  * **Task 2.4 - Verify the 6 dB-per-bit rule:** Measured vs. theoretical SQNR ($6.02B + 1.76\text{ dB}$) across $B = 2, 4, \dots, 16\text{ bits}$.
  * **Task 2.5 - Quantize your voice:** 4-, 8-, and 12-bit voice quantization, SQNR table, crest-factor analysis, and listening observations.
  * **Checkpoint 2 Summary, Analysis Questions (1-4) & AI-Use Statement.**
* Generated Figures in [`Week_02_Lab_1A_Sampling_Quantization/figures/`](./Week_02_Lab_1A_Sampling_Quantization/figures/):
  * `task2_1_aliasing_10Hz.png`
  * `task2_1_aliasing_comparison.png`
  * `task2_2_decimation_spectra.png`
  * `task2_3_quantizer_3bit.png`
  * `task2_4_sqnr_rule.png`
  * `task2_5_voice_quantization.png`
  * `analysis_q1_frequency_sketch.png`

---

## Week 3 - Lab 1B: Convolution, Correlation and Difference Equations

### Contents in [`Week_03_Lab_1B_Convolution_Correlation/`](./Week_03_Lab_1B_Convolution_Correlation/)
* [`COU07506_Week03_250242485225.ipynb`](./Week_03_Lab_1B_Convolution_Correlation/COU07506_Week03_250242485225.ipynb) - Complete executed Jupyter Notebook for **Week 3 (Lab 1B)** covering:
  * **Pre-lab Questions (a) & (b):** Hand convolution of $\{1, -1, 2\} * \{2, 1, 0, 1\} = \{2, -1, 3, 3, -1, 2\}$, and time-invariance test proving $y(n) = n\,x(n)$ is time-varying.
  * **Task 3.1 - Convolution from the definition:** Nested-loop `conv(x, h)` vs. `np.convolve` verification and `time.perf_counter()` speed benchmark on length-2000 random arrays.
  * **Task 3.2 - Smoothing a noisy signal by convolution:** Moving-average filtering ($M = 3, 9, 25$) of a noisy sinusoid and analysis of noise reduction vs. amplitude distortion.
  * **Task 3.3 - Testing linearity and time-invariance numerically:** Superposition and shift-invariance tests for $x^2(n)$, $n\,x(n)$, and a 3-tap moving average filter.
  * **Task 3.4 - Finding a hidden delay with cross-correlation:** Recovery of a 37-sample echo delay across noise levels ($\sigma \in \{0.5, 1, 2, 4, 5, 6, 8\}$) and conversion to acoustic distance at $343\text{ m/s}$ ($12.691\text{ m}$ one-way / $6.3455\text{ m}$ round-trip).
  * **Task 3.5 - Difference equation:** Direct recursion, `signal.lfilter`, and closed-form $h(n) = 6(0.5)^n - 5(0.25)^n$ comparison, plus unit step response steady-state verification against $H(1) = \sum b / \sum a = 16/3 \approx 5.3333$.
  * **Checkpoint 3 Summary, Analysis Questions (1-4) & AI-Use Statement.**
* Generated Figures in [`Week_03_Lab_1B_Convolution_Correlation/figures/`](./Week_03_Lab_1B_Convolution_Correlation/figures/):
  * `task3_1_convolution_verification.png`
  * `task3_2_moving_average_smoothing.png`
  * `task3_4_crosscorrelation_sigma05.png`
  * `task3_4_noise_sweep.png`
  * `task3_5_difference_equation.png`

---

## Week 4 - z-Transform Laboratory: Poles, Zeros and Stability

### Contents in [`Week_04_zTransform_Poles_Zeros/`](./Week_04_zTransform_Poles_Zeros/)
* [`COU07506_Week04_250242485225.ipynb`](./Week_04_zTransform_Poles_Zeros/COU07506_Week04_250242485225.ipynb) - Complete executed Jupyter Notebook for **Week 4 (z-Transform Laboratory)** covering:
  * **Pre-lab Questions (a) & (b):** Poles and stability of $H(z) = 1 / (1 - 0.9z^{-1} + 0.81z^{-2})$ ($p_{1,2} = 0.9\,e^{\pm j\pi/3}$, stable), and partial-fraction expansion of $X(z) = 1 / [(1 - 0.5z^{-1})(1 - 0.25z^{-1})]$.
  * **Task 4.1 - A pole-zero plotting function:** `zplane(b, a)` implementation and frequency response plot (`signal.freqz`).
  * **Task 4.2 - Inverse z-transform with `residuez`:** Partial-fraction expansion verification against `signal.lfilter` for $b = [1]$ and $b = [1, 1]$ ($h(n) = 6(0.5)^n - 5(0.25)^n$).
  * **Task 4.3 - Pole position and the impulse response:** Sweep across pole radii $r \in \{0.5, 0.8, 0.95, 1.0, 1.05\}$ at $\theta = \pm \pi/4$.
  * **Task 4.4 - Stability of given systems:** Pole-zero and impulse response stability classification of $H_1(z)$ through $H_4(z)$.
  * **Task 4.5 - Design a resonator:** Second-order $1\text{ kHz}$ band-pass resonator ($f_s = 8\text{ kHz}, r = 0.97$) with zeros at $z = \pm 1$ applied to white noise.
  * **Checkpoint 4 Summary, Group 29 Mini-Project Proposal Draft, Analysis Questions (1-4) & AI-Use Statement.**
* Generated Figures in [`Week_04_zTransform_Poles_Zeros/figures/`](./Week_04_zTransform_Poles_Zeros/figures/):
  * `task4_1_pole_zero_freqz.png`
  * `task4_2_residuez_verification.png`
  * `task4_3_pole_radius_sweep.png`
  * `task4_4_zplane_stability.png`
  * `task4_4_impulse_responses.png`
  * `task4_5_resonator_design.png`
  * `analysis_q4_stability_triangle.png`



