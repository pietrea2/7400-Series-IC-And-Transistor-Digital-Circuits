## 6: Seven Segment HEX Decoder

This is my custom implementation of a decoder for a CA (Common Anode) 7-segment display module that can display **0-9, A-F (all HEX symbols).** A common anode HEX display means that providing a volgate level of 0 turns on the segment LED (active low).

![Common Cathode](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/common_anode.png)

![HEX Symbols](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/hex_symbols.png)

![Seven Segment Truth Table (Common Cathode)](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/truth_table_common_cathode.png)

*Full truth table for 7-segment decoder*

The minimized algebraic expressions for the 7 segments are as follows:

![Seven Segment Algebraic Expression (Common Cathode)](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/algebraic_solution_7_seg.png)

a = (b0 ∧ ¬b1 ∧ ¬b2 ∧ ¬b3) ∨ (¬b0 ∧ ¬b1 ∧ b2 ∧ ¬b3) ∨ (b0 ∧ b1 ∧ ¬b2 ∧ b3) ∨ (b0 ∧ ¬b1 ∧ b2 ∧ b3)

b = (b0 ∧ ¬b1 ∧ b2 ∧ ¬b3) ∨ (¬b0 ∧ b1 ∧ b2) ∨ (b0 ∧ b1 ∧ b3) ∨ (¬b0 ∧ b2 ∧ b3) 

c = (¬b0 ∧ b1 ∧ ¬b2 ∧ ¬b3) ∨ (¬b0 ∧ b2 ∧ b3) ∨ (b1 ∧ b2 ∧ b3) 

d = (b0 ∧ ¬b1 ∧ ¬b2 ∧ ¬b3) ∨ (¬b0 ∧ ¬b1 ∧ b2 ∧ ¬b3) ∨ (b0 ∧ b1 ∧ b2) ∨ (¬b0 ∧ b1 ∧ ¬b2 ∧ b3) 

e = (b0 ∧ ¬b3) ∨ (b0 ∧ ¬b1 ∧ ¬b2) ∨ (¬b1 ∧ b2 ∧ ¬b3) 

f = (b0 ∧ ¬b2 ∧ ¬b3) ∨ (b0 ∧ b1 ∧ ¬b3) ∨ (b0 ∧ ¬b1 ∧ b2 ∧ b3) ∨ (b1 ∧ ¬b2 ∧ ¬b3) 

g = (b0 ∧ b1 ∧ b2 ∧ ¬b3) ∨ (¬b0 ∧ ¬b1 ∧ b2 ∧ b3) ∨ (¬b1 ∧ ¬b2 ∧ ¬b3) 

- ¬ = NOT (complement)
- ∧ = AND
- ∨ = OR


I have algebraically minimized the combinational logic necessary to:
  - 4 NOT gates
  - 23 AND gates
  - 22 OR gates
  - **Total: 49 logic gates**

To physically build this decoder using 7400 Series IC chips it would require:
  - 1x 7404 (NOT)
  - 6x 7408 (AND)
  - 6x 7432 (OR)
  - **Total: 13 IC chips**

I managed to minimize this 7-segment HEX decoder even more than the solution provided/designed by [Ben Eater](https://shop.eater.net/) from his [Youtube video](https://www.youtube.com/watch?v=7zffjsXqATg) (his videos and projects inspired me to develop digital circuits on the breadboard!). His circuit uses:
  - 4 NOT gates
  - 33 AND gates
  - 17 OR gates
  - **Total: 54 logic gates**
  - 1x 7404 (NOT)
  - 9x 7408 (AND)
  - 5x 7432 (OR)
  - **Total: 15 IC chips**

The **digital** folder holds the circuit built/simulated using [Digital](https://github.com/hneemann/Digital) circuit simulator! It is an easy to use digital logic designer and circuit simulator and it includes a large library of 7400 seriec IC chips.

The **quartus** folder holds a schematic developed using Quartus Prime, and includes a waveform simulation.

![Seven Segment Decoder Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/decoder_7_seg_digital_schematic.png)

*7-Segment HEX decoder circuit Digital schematic*

![Seven Segment Decoder Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/decoder_7_seg_quartus_schematic.png)

*7-Segment HEX decoder circuit Quartus schematic*
