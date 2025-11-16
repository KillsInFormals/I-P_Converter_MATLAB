# MATLAB Simulation of I/P (Current-to-Pressure) Converter

## Project Overview
This project simulates a general I/P (Current-to-Pressure) converter, a key component in process instrumentation and control systems. The project demonstrates both **linear signal conversion** and **dynamic (first-order) response** using MATLAB.

The simulation helps visualize how a 4–20 mA electrical input signal is converted to a 3–15 psi pneumatic output signal for actuators, including transient behavior.

---

## Features
- Linear conversion of input current (4–20 mA) to output pressure (3–15 psi)
- First-order dynamic simulation of pneumatic actuator response
- Plots showing input-output characteristics and step response
- Table generation for lab-style results
- MATLAB code is modular and well-commented for learning and reproducibility

---

## Skills Demonstrated
- MATLAB programming and simulation
- Process instrumentation modeling
- Signal conversion (I → P)
- Understanding of control systems and actuator dynamics
- Data visualization and lab report generation

---

## Files
- `IP_Converter.m` — MATLAB script for linear and dynamic simulation
- `IP_Converter_Plots.png` — Sample plots of linear and dynamic responses


---

## Usage
1. Open `IP_Converter.m` in MATLAB.
2. Run the script to generate:
   - Linear conversion plot (Input Current vs. Output Pressure)
   - Dynamic response plot (Step input response)
   - Results table in MATLAB console
3. Modify parameters such as input current range, output pressure range, or actuator time constant (`tau`) to simulate different scenarios.

---

## References
- Basic control system theory for first-order actuator response
- MATLAB documentation for plotting and numerical simulations
