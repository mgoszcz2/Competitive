#ip 3

 0: addi 3 16 3 reg[3] += 16 //SKIP TO GEN BIG NUM

 reg[2] = BIGNUMBER

 // INIT 
 reg[1] = 1
 reg[5] = 1
 reg[0] = 0

// RESET 5
 2: seti 1 7 5 reg[5] = 1

// MAIN LOOP

reg[4] =  reg[5] * reg[1]
if reg[4] == BG:
    reg[0] += reg[1]
    reg[5] += 1
    if reg[5] > reg[2]:
        reg[1] += 1
        if reg[1] > reg[2]:
            EXIT
        else:
            GOTO RESET
    else:
        GOTO MAIN LOOP
else:
    reg[5] += 1
    if reg[5] > reg[2]:
        reg[1] += 1
        if reg[1] > reg[2]:
            EXIT
        else:
            GOTO RESET
    else:
        GOTO MAIN LOOP
    
 3: mulr 1 5 4 reg[4]  = reg[5]*reg[1]
 4: eqrr 4 2 4 reg[4] = reg[4] == reg[2]
 5: addr 4 3 3 reg[3] += reg[4]
 6: addi 3 1 3 reg[3] += 1
 7: addr 1 0 0 reg[0] += reg[1]
 8: addi 5 1 5 reg[5] += 1
 9: gtrr 5 2 4 reg[4] = reg[5] > reg[2]
10: addr 3 4 3 reg[3] += reg[4]
11: seti 2 2 3 reg[3] = 2
12: addi 1 1 1 reg[1] += 1
13: gtrr 1 2 4 reg[4] = reg[1] > reg[2]
14: addr 4 3 3 reg[3] += reg[4]
15: seti 1 5 3 reg[3] = 1

16: mulr 3 3 3 // ESCAPE

// GEN BIG NUM
17: addi 2 2 2
18: mulr 2 2 2
19: mulr 3 2 2
20: muli 2 11 2
21: addi 4 2 4
22: mulr 4 3 4
23: addi 4 2 4
24: addr 2 4 2
25: addr 3 0 3
26: seti 0 8 3
27: setr 3 8 4
28: mulr 4 3 4
29: addr 3 4 4
30: mulr 3 4 4
31: muli 4 14 4
32: mulr 4 3 4
33: addr 2 4 2
34: seti 0 7 0
35: seti 0 9 3
