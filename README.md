# Analysis-and-Design-of-Advanced-Digital-Integrated-Circuits

This repository includes the solutions to the questions in "Analysis and Design of Advanced Digital Integrated Circuits" in UCAS 2021. 

There are three folders responding to three tasks. 
1. I realized Two Stage Pipeline of Multiplication, where data is expressed in IEEE754 32 bit.
  a) When one of inputs is detected as zero, the implementation directly gives zero as a result in one execution cycle.
  b) When one of inputs is detected as 1 or -1, the implementation directly gives (+/-)<another input> as a result in one execution cycle.
  c) Besides above conditions, the implementation gives the result in two execution cycle.

2. Simple implementation of AHB to APB (comparing with ARM AHB to APB IP, my work realize the simple functions including single write, single read, burst write and burst read)

3. FFT based on 64 points with 8bit input and 20bit output. I compared the Verilog results with MATLAB results.
  note a: You can run several batches in the Seven Pipeline and exploit data parallism.

Details of above three tasks could be found in report.pdf. 

The Programming solutions include Verilog HDL code (and MATLAB code) and experimental report written in Chinese language in .pdf file format.

This repository is hopefully used to be a reference! Thank you :)
