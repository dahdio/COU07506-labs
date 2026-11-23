# COU 07506 — Digital Signal Processing Laboratory Repository (`COU07506-labs`)

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
| **Repository URL** | [https://github.com/dahdio/COU07506-labs.git](https://github.com/dahdio/COU07506-labs.git) |

---

## Week 1 — Lab 0: Setting Up the DSP Laboratory

### Contents in this Repository
* [`COU07506_Week01_250242485225.ipynb`](./COU07506_Week01_250242485225.ipynb) — Complete executed Jupyter Notebook for **Week 1 (Lab 0)** covering:
  * **Pre-lab Question:** Three everyday DSP-enabled devices and the signals they process.
  * **Task 1.1 — Your first notebook:** Generation and stem plotting of the four elementary discrete-time sequences $\delta(n)$, $u(n)$, $r(n)$, and $(0.8)^n u(n)$ for $-5 \le n \le 10$.
  * **Task 1.2 — Change the parameters:** Causal real exponentials $(a)^n u(n)$ for $a \in \{0.5, -0.8, 1.1\}$ and periodicity comparison of $\cos(2\pi n/8)$ vs. $\cos(2\pi n/7.5)$ for $0 \le n \le 40$.
  * **Task 1.3 — Working with audio:** Loading, stereo-to-mono conversion, normalization, time-domain waveform plotting, and audio playback of [`my_voice.wav`](./my_voice.wav) ($f_s = 44,100\text{ Hz}$, duration $= 4.00\text{ s}$, $176,400\text{ samples}$).
  * **Task 1.4 — The same in Octave:** GNU Octave implementation ([`task1_4_octave.m`](./task1_4_octave.m)) and Python vs. GNU Octave syntax comparison table.
  * **Task 1.5 — Repository and submission:** Checkpoint 1 verification summary and proposed mini-project topics.
  * **Analysis Questions (1–3):** Detailed answers with full mathematical derivations and units.
  * **AI-Use Statement:** Completed in accordance with Appendix A of the Laboratory Manual.
* [`task1_4_octave.m`](./task1_4_octave.m) — GNU Octave script reproducing Task 1.1 (`task1_4_octave.png`).
* [`my_voice.wav`](./my_voice.wav) — 4.00-second voice audio recording sampled at $44,100\text{ Hz}$.
* Generated Figures:
  * `task1_1_sequences.png`
  * `task1_2_exponentials.png`
  * `task1_2_cosines.png`
  * `task1_3_recording.png`
  * `task1_4_octave.png`
