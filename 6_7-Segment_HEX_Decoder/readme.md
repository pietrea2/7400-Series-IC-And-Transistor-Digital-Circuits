## 6: Seven Segment HEX Decoder

This is a custom combinational circuit created using only basic logic gates (NOT, AND, OR) that can drive a CA (Common Anode) 7 Segment Display to display 0-9, A-F.

![Seven Segment Truth Table (Common Cathode)](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/truth_table_common_cathode.png)

The minimized algebraic expressions for the 7 segments are as follows:

![Seven Segment Algebraic Expression (Common Cathode)](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/algebraic_solution_7_seg.png)

a = (b0 ∧ ¬b1 ∧ ¬b2 ∧ ¬b3) ∨ (¬b0 ∧ ¬b1 ∧ b2 ∧ ¬b3) ∨ (b0 ∧ b1 ∧ ¬b2 ∧ b3) ∨ (b0 ∧ ¬b1 ∧ b2 ∧ b3)
b = (b0 ∧ ¬b1 ∧ b2 ∧ ¬b3) ∨ (¬b0 ∧ b1 ∧ b2) ∨ (b0 ∧ b1 ∧ b3) ∨ (¬b0 ∧ b2 ∧ b3)
c = (¬b0 ∧ b1 ∧ ¬b2 ∧ ¬b3) ∨ (¬b0 ∧ b2 ∧ b3) ∨ (b1 ∧ b2 ∧ b3)
d = (b0 ∧ ¬b1 ∧ ¬b2 ∧ ¬b3) ∨ (¬b0 ∧ ¬b1 ∧ b2 ∧ ¬b3) ∨ (b0 ∧ b1 ∧ b2) ∨ (¬b0 ∧ b1 ∧ ¬b2 ∧ b3)
e = (b0 ∧ ¬b3) ∨ (b0 ∧ ¬b1 ∧ ¬b2) ∨ (¬b1 ∧ b2 ∧ ¬b3)
f = (b0 ∧ ¬b2 ∧ ¬b3) ∨ (b0 ∧ b1 ∧ ¬b3) ∨ (b0 ∧ ¬b1 ∧ b2 ∧ b3) ∨ (b1 ∧ ¬b2 ∧ ¬b3)
g = (b0 ∧ b1 ∧ b2 ∧ ¬b3) ∨ (¬b0 ∧ ¬b1 ∧ b2 ∧ b3) ∨ (¬b1 ∧ ¬b2 ∧ ¬b3)




I have algebraically minimized the combinational logic necessary to:
  - 4 NOT gates
  - 23 AND gates
  - 22 OR gates

To physically build this decoder using 7400 Series IC chips it would require:
  - 1x 7404 (NOT)
  - 6x 7408 (AND)
  - 6x 7432 (OR)

The **digital** folder holds the circuit built/simulated using [Digital](https://github.com/hneemann/Digital) circuit simulator! It is an easy to use digital logic designer and circuit simulator and it includes a large library of 7400 seriec IC chips.

The **quartus** folder holds a schematic developed using Quartus Prime, and includes a waveform simulation.

![Seven Segment Decoder Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/decoder_7_seg_digital_schematic.png)

*7-Segment HEX decoder circuit Digital schematic*

![Seven Segment Decoder Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/decoder_7_seg_quartus_schematic.png)

*7-Segment HEX decoder circuit Quartus schematic*
