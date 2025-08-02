## 6: Seven Segment HEX Decoder

This is my custom implementation of a decoder for a CA (Common Anode) 7-segment display module that can display **0-9, A-F (all HEX symbols).**  
![HEX Symbols](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/hex_symbols.png)

<br>

A **common anode** HEX display means that providing a volgate level of 0 turns on the segment LED (active low).  
![Common Cathode](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/common_anode.png)



## Truth Table & Algebraic Expressions

![Seven Segment Truth Table (Common Cathode)](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/truth_table_common_cathode.png)  
*Full truth table for 7-segment decoder. Input: 0-15, Output: 0-9, A-F*

I found the following minimized algebraic expressions for the 7 segments:  
- ' = NOT
- \* = AND
- \+ = OR

```diff
a = (AB'C'D' + A'B'CD') + AB'CD + ABC'D
b = (A'B'CD + ABCD + A'BCD) + AB'CD' + A'BCD' + ABC'D
c = (A'B'CD + ABCD + A'BCD) + A'BC'D'
d = (AB'C'D' + A'B'CD') + ABCD' + ABCD + A'BC'D
e = (AB'C'D' + A'B'CD') + AB'CD' + AB'C'D + ABC'D' + ABCD'
f = (AB'C'D' + ABCD') + AB'CD + ABC'D' + A'BC'D'
g = (AB'C'D' + ABCD') + A'B'C'D' + A'B'CD
```

## Circuit Construction

Below highlights the required amount of logic gates and IC chips necessary for implementing this decoder circuit:
| Logic Gate    | Ben Eater's Version | My Version |
| -------- | ------- | -------- |
| NOT  | 4    | 4 |
| AND | 33     | 23 |
| OR    | 17    | 22 |
| **Total:** | **54** | **49** |

| IC Chip    | Ben Eater's Version | My Version |
| -------- | ------- | -------- |
| 7404 (NOT)  | 1    | 1 |
| 7408 (AND) | 9     | 6 |
| 7432 (OR)    | 5    | 6 |
| **Total:** | **15** | **13** |

I managed to minimize this 7-segment HEX decoder even more than the solution provided/designed by [Ben Eater](https://shop.eater.net/) from his [Youtube video](https://www.youtube.com/watch?v=7zffjsXqATg) (his videos and projects inspired me to develop digital circuits on the breadboard!).
 

## Design Files

The **digital** folder holds the circuit built/simulated using [Digital](https://github.com/hneemann/Digital) circuit simulator! It is an easy to use digital logic designer and circuit simulator and it includes a large library of 7400 seriec IC chips.

The **quartus** folder holds a schematic developed using Quartus Prime, and includes a waveform simulation.

![Seven Segment Decoder Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/decoder_7_seg_digital_schematic.png)

*7-Segment HEX decoder circuit Digital schematic*

![Seven Segment Decoder Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/decoder_7_seg_quartus_schematic.png)

*7-Segment HEX decoder circuit Quartus schematic*
