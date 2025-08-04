# 6: Seven Segment HEX Decoder

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

## 2nd Alternative Circuit Minimization
```diff
a = AB'C'D' + A'B'CD' + ABC'D + AB'CD
b = AB'CD' + A'BC + ABD + A'CD
c = A'BC'D' + A'CD + BCD
d = AB'C'D' + A'B'CD' + ABC + A'BC'D
e = AD' + AB'C' + B'CD'
f = AC'D' + ABD' + AB'CD + BC'D'
g = ABCD' + A'B'CD + B'C'D'
```

## Design Files

The **digital** folder holds the circuit built/simulated using [Digital](https://github.com/hneemann/Digital) circuit simulator! It is an easy to use digital logic designer and circuit simulator and it includes a large library of 7400 seriec IC chips.

The **quartus** folder holds a schematic developed using Quartus Prime, and includes a waveform simulation.

![Seven Segment Decoder Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/decoder_7_seg_digital_schematic.png)

*7-Segment HEX decoder circuit Digital schematic*

![Seven Segment Decoder Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/decoder_7_seg_quartus_schematic.png)

*7-Segment HEX decoder circuit Quartus schematic*


## 7447 IC (BCD-7-Seg Decoder)
I also tested the 7447 7-segment decoder IC to drive common-anode HEX displays. This decoder only displays numbers **0-9**.  

![7447 HEX Displays](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/7447/hex_display_options.png)

*7447 Display options (no tail for 6 and 9 and no A-F)*

The Lamp Test (LT), Blanking Input (BI), and Ripple Blanking Input (RBI) input signals are all active-low, thus set them all to high to display your outputs.  
Files are located in the 7447 directory.

![7447 Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/7447/7-seg_decoder_7447_digital_circuit.png)

*7447 7-Segment HEX decoder circuit Digital schematic*

![7447 Quartus Logic Circuit](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/7447/7-seg_decoder_7447_quartus_circuit.png)

*7447 7-Segment HEX decoder circuit Quartus schematic*

## 74HC4511 IC (BCD-7-Seg Decoder)
I found this IC chip at the electronics store to use for more 7-segment displays I have. However, in the datasheet it doesn't specify if this is used for common anode or common cathode displays. So I have yet to test it by hand.  
The difference with this decoder (vs 7447) is that the 6 and 9 symbols have a tail!

Also Quartus and Digital do not provide a symbol/schematic for this IC. 

![74HC4511 HEX Displays](https://github.com/pietrea2/7400-Series-IC-And-Transistor-Digital-Circuits/blob/main/6_7-Segment_HEX_Decoder/744511/hex_display_list.png)

*Display options for 74HC4511 IC*