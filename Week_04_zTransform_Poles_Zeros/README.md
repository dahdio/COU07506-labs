# Week 4 - z-Transform Laboratory: Poles, Zeros and Stability

* **Unit & Topic:** Unit 2 - z-transform, ROC, inverse z-transform, stability
* **Handout Reference:** §2.2-2.4; Listing 2.1; Examples 2.2-2.5
* **Module Outcomes:** LO2
* **Deliverable Notebook:** [`COU07506_Week04_250242485225.ipynb`](./COU07506_Week04_250242485225.ipynb)
* **Student:** DAUD SELEMANI DAUD (`250242485225`, `BENG24COE-2`, `Group 29`)

## Contents in this Folder
* [`COU07506_Week04_250242485225.ipynb`](./COU07506_Week04_250242485225.ipynb) - Executed Jupyter Notebook containing:
  * **Pre-lab Questions (a) & (b):** Poles and BIBO stability of $H(z) = 1 / (1 - 0.9z^{-1} + 0.81z^{-2})$ ($p_{1,2} = 0.9\,e^{\pm j\pi/3}$, $|p| = 0.9 < 1$, stable), and partial-fraction expansion of $X(z) = 1 / [(1 - 0.5z^{-1})(1 - 0.25z^{-1})] = \frac{2}{1 - 0.5z^{-1}} - \frac{1}{1 - 0.25z^{-1}}$.
  * **Task 4.1 - A pole-zero plotting function:** Implementation of `zplane(b, a)` using `signal.tf2zpk` and side-by-side pole-zero and magnitude response plots (`signal.freqz`).
  * **Task 4.2 - Inverse z-transform with `residuez`:** Partial-fraction residue verification with `signal.residuez` and comparison against `signal.lfilter` for $b = [1]$ and $b = [1, 1]$ ($h(n) = 6(0.5)^n - 5(0.25)^n$).
  * **Task 4.3 - Pole position and the impulse response:** Effect of pole radius $r \in \{0.5, 0.8, 0.95, 1.0, 1.05\}$ for $p = r\,e^{\pm j\pi/4}$ on impulse response damping, resonance peak sharpness, and stability.
  * **Task 4.4 - Stability of given systems:** Pole-zero maps, maximum pole radii, and impulse response verification for $H_1(z)$, $H_2(z)$, $H_3(z)$, and $H_4(z)$.
  * **Task 4.5 - Design a resonator:** Second-order band-pass resonator peaking at $1\text{ kHz}$ ($f_s = 8\text{ kHz}$, $r = 0.97$) with zeros at $z = \pm 1$, white-noise filtering, and audio playback.
  * **Checkpoint 4 Summary, Group 29 Mini-Project Proposal Draft, Analysis Questions (1-4) with Schur-Cohn Stability Triangle Verification & AI-Use Statement.**
* [`figures/`](./figures/) - High-resolution exported plots:
  * `task4_1_pole_zero_freqz.png`
  * `task4_2_residuez_verification.png`
  * `task4_3_pole_radius_sweep.png`
  * `task4_4_zplane_stability.png`
  * `task4_4_impulse_responses.png`
  * `task4_5_resonator_design.png`
  * `analysis_q4_stability_triangle.png`
