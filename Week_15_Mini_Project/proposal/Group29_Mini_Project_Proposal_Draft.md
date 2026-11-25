# COU 07506 Digital Signal Processing - Mini-Project Proposal Draft (Week 4)

* **Institution:** Dar es Salaam Institute of Technology (DIT) - Computer Studies Department
* **Module:** COU 07506 Digital Signal Processing (NTA Level 7, Semester I, 2026/27)
* **Lecturer:** Dr. Haji Fimbombaya
* **Class & Group:** `BENG24COE-2` - `Group 29`

## Group 29 Members
1. GOODLUCK EMILIAN LUSELO
2. ADINAN ATHUMAN SENZOTA
3. FRANK HERMAN KAEMBESI
4. DAUD SELEMANI DAUD (`250242485225`)
5. ARON JULIUS NGOWI

---

## 1. Proposed Project Title
**Real-Time Acoustic and Vibration Fault Diagnosis for Community Water Pumps in Tanzania Using Spectral Features and an Int8-Quantized 1-D CNN on ESP32**

## 2. Problem Statement and Tanzanian Context
Rural and peri-urban water supply schemes across Tanzania (managed by RUWASA and DAWASA) depend heavily on electrical centrifugal and borehole water pumps. Mechanical faults such as **impeller imbalance, shaft misalignment, and rolling-element bearing wear** develop gradually and emit distinct vibration and acoustic signatures weeks before catastrophic breakdown. Currently, most community pumps lack condition-monitoring instrumentation and are operated until complete failure, causing prolonged water outages and expensive emergency repairs.

## 3. Data Acquisition and Sampling Plan (Units 1-2)
* **Sensor & Target Signal:** 1-D vibration / acoustic signal $x(n)$ captured from a pump casing (or laboratory rotating motor/fan bench + synthetic/open bearing fault dataset from Week 12 `vibration_data.py`).
* **Sampling Rate & Resolution:** $f_s = 4,000\text{ Hz}$ (Nyquist frequency $f_s/2 = 2,000\text{ Hz}$) with 12-bit/16-bit ADC quantization, capturing fundamental shaft rotation ($25-50\text{ Hz}$), low-order harmonics ($2\times, 3\times$ shaft speed for imbalance/misalignment), and high-frequency bearing structural resonance ($\sim 1,000\text{ Hz}$).
* **Fault Classes (4 Classes):** `healthy`, `imbalance`, `misalignment`, and `bearing fault`.

## 4. Proposed DSP and Edge-AI Pipeline (Units 2-6)
1. **Pre-processing & Digital Filtering (Unit 3):**
   * Mean (DC offset) removal and second-order IIR $50\text{ Hz}$ notch filter ($r = 0.97$) to reject TANESCO mains hum.
2. **Framing & Spectral Analysis (Units 2 & 5):**
   * Segment continuous signals into $B = 256$ or $1024$-sample frames with Hann windowing to suppress spectral leakage.
3. **Feature-Based Baseline vs. 1-D CNN (Unit 5):**
   * Extract 11 interpretable DSP features (RMS, crest factor, kurtosis, spectral centroid, and 7 log-band energies) to train a baseline **Random Forest / SVM** classifier (using recording-level `GroupShuffleSplit` to prevent data leakage).
   * Train a compact **1-D Convolutional Neural Network (CNN)** on raw frames and interpret its first-layer kernels as learned FIR band-pass filters.
4. **Embedded Microcontroller Deployment (Unit 6):**
   * Quantize the trained model to `int8` and deploy a real-time block-processing monitor on an **ESP32** development board within the $64\text{ ms}$ per-block cycle budget.
