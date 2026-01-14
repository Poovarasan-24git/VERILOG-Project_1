# VERILOG-Project_1
# **Verilog Projects: Binary to Gray Code Converter and Parity Generator & Checker**
## **Project Description**
This repository contains two Verilog HDL projects designed to understand
**combinational logic**, **XOR operations**, and **basic error detection techniques**
used in digital systems.

## **1. Binary to Gray Code Converter**

### **Overview**

The Binary to Gray Code Converter converts a binary input into its corresponding
Gray code output. Gray code is a special binary numbering system where only one bit
changes between consecutive values.

### **Working Principle**

* The **Most Significant Bit (MSB)** of the Gray code is the same as the MSB of the binary input.
* Each remaining Gray bit is obtained by **XORing adjacent binary bits**.

### **Truth table**

| Binary Input (a3 a2 a1 a0) | Gray Output (b3 b2 b1b0) |
|--------------------------- |--------------------------|
|           0000             |           0000           |
|           0001             |           0001                                           |
|           0010             |           0011           |
|           0011             |           0010           |
|           0100             |           0110           |
|           0101             |           0111           |
|           0110             |           0101           |
|           0111             |           0100           |
|           1000             |           1100           |
|           1001             |           1101           |
|           1010             |           1111           |
|           1011             |           1110           |
|           1100             |           1010           |
|           1101             |           1011           |
|           1110             |           1001           |
|           1111             |           1000           |

**Formula:**

  *  B[n] = B[n+1] ⊕ B[n]               
  *  assign b[3] = a[3];
  *  assign b[2] = a[3]^a[2];
  * assign b[1] = a[2]^a[1];
  *  assign b[0] = a[1]^a[0];
### It is 4-bit grey code converter.So,there are only 4 bits so that a[0],a[1],a[2],a[3] are present

### **Why Gray Code is Used**

* Reduces switching errors during transitions
* Minimizes noise and glitches
* Used in encoders, ADCs, and communication systems

### **Implementation Details**

* Designed using **combinational logic**
* Implemented using **continuous assignment (`assign`)**
* Verified using a Verilog **testbench**

### APPLICATION:
## **2. EVEN ODD PARITY GENERATOR & CHECKER**

### **Overview**

This project generates **even and odd parity bits** for a given data input and
checks whether the received data is error-free.
Parity checking is a simple and commonly used **error detection method**.

### **Working Principle**

#### **Parity Generator**

* **Even Parity:** Parity bit is generated so that the total number of 1s (data + parity) is even
* **Odd Parity:** Parity bit is generated so that the total number of 1s (data + parity) is odd
* XOR operation is used to generate the parity bit

#### **Parity Checker**

* XORs all received data bits including the parity bit
* If result is:

  * `0` → No error
  * `1` → Error detected

  #### **TRUTH TABLE FOR PARITY GENERATOR**
| Data (A3 A2 A1 A0)| No. of 1s | Even Parity Bit | Odd Parity Bit |
| ------------------| --------- | --------------- | -------------- |
|        000        |     0     |       0         |       1        |
|        001        |     1     |       1         |       0        |
|        010        |     1     |       1         |       0        |
|        011        |     2     |       0         |       1        |
|        100        |     1     |       1         |       0        |
|        101        |     2     |       0         |       1        |
|        110        |     2     |       0         |       1        |
|        111        |     3     |       1         |       0        |

#### **TRUTH TABLE FOR EVEN PARITY CHECKER**
| Received Data + Parity | XOR Result |   Error  |
| ---------------------- | ---------- | -------- |
|   Correct even parity  |     0      | No Error |
|    Incorrect parity    |     1      |   Error  |

#### **TRUTH TABLE FOR ODD PARITY CHECKER**
| Received Data + Parity | XOR Result |   Error  |
| ---------------------- | ---------- | -------- |
|   Correct odd parity   |     1      | No Error |
|    Incorrect parity    |     0      |   Error  |

#### **FOR EXAMPLE**
COMBINED EXAMPLE
| Data | Parity Bit | Total 1s | Checker Output |
| ---- | ---------- | -------- | -------------- |
| 1010 |     0      |     2    |   No Error     |
| 1010 |     1      |     3    |     Error      |


### **Why Parity is Important**

* Detects single-bit transmission errors
* Used in data communication systems
* Used in memory and storage devices

### **Implementation Details**

* Implemented using **XOR-based combinational logic**
* Separate modules for **parity generation** and **parity checking**
* `$monitor` used in testbench to observe real-time signal changes

## **Tools and Technologies Used**

* **Verilog HDL**
* **VS Code**
* **ModelSim / Vivado Simulator**
* **Git & GitHub**

## **Repository Structure**

VERILOG-Project_1/
│
├── docs/       
│   ├── bin_to_grey_console.png
│   ├── bin_to_grey_design.png
│   ├── bin_to_grey_schematic.png
│   ├── bin_to_grey_tb.png
│   ├── bin_to_grey_waveform.png
│   │
│   ├── even_odd_console.png
│   ├── even_odd_design.png
│   ├── even_odd_schematic.png
│   ├── even_odd_simulation.png
│   └── even_odd_tb.png
│
├── src/            # DESIGN CODE 
│   ├── binary_to_grey.v
│   └── even_odd.v
│
├── tb/             # TESTBRANCH FOR VERIFICATION
│   ├── bin_grey.v
│   └── even_odd_tb.v
│
└── README.md
