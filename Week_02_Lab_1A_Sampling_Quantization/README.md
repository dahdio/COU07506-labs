# Week 2 - Lab 1A: Sampling, Aliasing and Quantization

* **Unit & Topic:** Unit 1 - Sampling, aliasing, quantization, ADC/DAC
* **Handout Reference:** §1.2; Listings 1.1 and 1.2; Example 1.1
* **Module Outcomes:** LO1
* **Deliverable Notebook:** [`COU07506_Week02_250242485225.ipynb`](./COU07506_Week02_250242485225.ipynb)
* **Student:** DAUD SELEMANI DAUD (`250242485225`, `BENG24COE-2`, `Group 29`)

## Contents in this Folder
* [`COU07506_Week02_250242485225.ipynb`](./COU07506_Week02_250242485225.ipynb) - Executed Jupyter Notebook containing:
  * **Pre-lab Questions (a) & (b):** Alias frequency prediction for a $7\text{ kHz}$ tone sampled at $10\text{ kHz}$ ($3\text{ kHz}$), and step size $\Delta = 7.8125\text{ mV}$ & theoretical $\text{SQNR} = 49.92\text{ dB}$ for an 8-bit $\pm 1\text{ V}$ quantizer.
  * **Task 2.1 - Aliasing of a sinusoid:** Simulation of a $7.0\text{ Hz}$ cosine wave sampled at $f_s \in \{10, 12, 14, 20\}\text{ Hz}$ and comparison table against $|F - k f_s|$.
  * **Task 2.2 - Hear aliasing:** Downsampling `my_voice.wav` ($f_s = 44.1\text{ kHz}$) by $k \in \{2, 4, 8\}$ naively (`x[::k]`) vs. with the FIR anti-aliasing low-pass filter (`signal.decimate`), including magnitude spectrum comparison and listening observations for $k = 8$.
  * **Task 2.3 - A uniform quantizer:** 3-bit uniform quantization of a $300\text{ Hz}$ sinusoid ($f_s = 8000\text{ Hz}$, $\Delta = 0.25\text{ V}$) showing staircase waveform and quantization error $e(n) = x(n) - x_q(n)$.
  * **Task 2.4 - Verify the 6 dB-per-bit rule:** Experimental vs. theoretical SQNR ($6.02B + 1.76\text{ dB}$) across $B = 2, 4, \dots, 16\text{ bits}$.
  * **Task 2.5 - Quantize your voice:** 4-, 8-, and 12-bit quantization of `my_voice.wav`, empirical SQNR measurements, crest-factor analysis explaining the $\sim 16\text{-}17\text{ dB}$ difference vs. a full-scale sine wave, and listening observations.
  * **Checkpoint 2 Summary, Analysis Questions (1-4) & AI-Use Statement.**
* [`my_voice.wav`](./my_voice.wav) - 4.00 s voice recording ($f_s = 44,100\text{ Hz}$, $176,400\text{ samples}$).
* [`figures/`](./figures/) - High-resolution exported plots:
  * `task2_1_aliasing_10Hz.png`
  * `task2_1_aliasing_comparison.png`
  * `task2_2_decimation_spectra.png`
  * `task2_3_quantizer_3bit.png`
  * `task2_4_sqnr_rule.png`
  * `task2_5_voice_quantization.png`
  * `analysis_q1_frequency_sketch.png`
