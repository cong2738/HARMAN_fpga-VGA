
r
Command: %s
53*	vivadotcl2A
-write_bitstream -force OV7670_VGA_Display.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2d
 "N
U_QVGA_MemController/rAddr0	U_QVGA_MemController/rAddr02default:default2default:default2n
 "X
#U_QVGA_MemController/rAddr0/A[29:0]U_QVGA_MemController/rAddr0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2d
 "N
U_QVGA_MemController/rAddr0	U_QVGA_MemController/rAddr02default:default2default:default2n
 "X
#U_QVGA_MemController/rAddr0/C[47:0]U_QVGA_MemController/rAddr0/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2d
 "N
U_QVGA_MemController/rAddr0	U_QVGA_MemController/rAddr02default:default2default:default2n
 "X
#U_QVGA_MemController/rAddr0/P[47:0]U_QVGA_MemController/rAddr0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2d
 "N
U_QVGA_MemController/rAddr0	U_QVGA_MemController/rAddr02default:default2default:default2n
 "X
#U_QVGA_MemController/rAddr0/P[47:0]U_QVGA_MemController/rAddr0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[12]U_Frame_Buffer/wAddr[12]2default:default2default:default2|
 "f
'U_OV7670_MemController/h_counter_reg[7]	'U_OV7670_MemController/h_counter_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[12]U_Frame_Buffer/wAddr[12]2default:default2default:default2|
 "f
'U_OV7670_MemController/h_counter_reg[8]	'U_OV7670_MemController/h_counter_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[12]U_Frame_Buffer/wAddr[12]2default:default2default:default2|
 "f
'U_OV7670_MemController/h_counter_reg[9]	'U_OV7670_MemController/h_counter_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[12]U_Frame_Buffer/wAddr[12]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[0]	'U_OV7670_MemController/v_counter_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[12]U_Frame_Buffer/wAddr[12]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[2]	'U_OV7670_MemController/v_counter_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[12]U_Frame_Buffer/wAddr[12]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[3]	'U_OV7670_MemController/v_counter_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[12]U_Frame_Buffer/wAddr[12]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[4]	'U_OV7670_MemController/v_counter_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[12]U_Frame_Buffer/wAddr[12]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[5]	'U_OV7670_MemController/v_counter_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[14]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[12]U_Frame_Buffer/wAddr[12]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[7]	'U_OV7670_MemController/v_counter_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/h_counter_reg[7]	'U_OV7670_MemController/h_counter_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/h_counter_reg[8]	'U_OV7670_MemController/h_counter_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/h_counter_reg[9]	'U_OV7670_MemController/h_counter_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[0]	'U_OV7670_MemController/v_counter_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[1]	'U_OV7670_MemController/v_counter_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[2]	'U_OV7670_MemController/v_counter_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[3]	'U_OV7670_MemController/v_counter_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[4]	'U_OV7670_MemController/v_counter_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[5]	'U_OV7670_MemController/v_counter_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[6]	'U_OV7670_MemController/v_counter_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2b
 "L
U_Frame_Buffer/mem_reg_0_1	U_Frame_Buffer/mem_reg_0_12default:default2default:default2�
 "l
*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]*U_Frame_Buffer/mem_reg_0_1/ADDRARDADDR[15]2default:default2default:default2^
 "H
U_Frame_Buffer/wAddr[13]U_Frame_Buffer/wAddr[13]2default:default2default:default2|
 "f
'U_OV7670_MemController/v_counter_reg[7]	'U_OV7670_MemController/v_counter_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg	:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg2default:default2default:default2�
 "�
Ju_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[10]Ju_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[10]2default:default2default:default2�
 "�
6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[6]6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[6]2default:default2default:default2�
 "r
-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[6]	-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg	:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg2default:default2default:default2�
 "�
Ju_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[11]Ju_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[11]2default:default2default:default2�
 "�
6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[7]6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[7]2default:default2default:default2�
 "r
-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[7]	-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg	:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg2default:default2default:default2�
 "�
Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[4]Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[4]2default:default2default:default2�
 "�
6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[0]6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[0]2default:default2default:default2�
 "r
-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[0]	-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg	:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg2default:default2default:default2�
 "�
Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[5]Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[5]2default:default2default:default2�
 "�
6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[1]6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[1]2default:default2default:default2�
 "r
-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[1]	-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg	:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg2default:default2default:default2�
 "�
Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[6]Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[6]2default:default2default:default2�
 "�
6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[2]6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[2]2default:default2default:default2�
 "r
-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[2]	-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg	:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg2default:default2default:default2�
 "�
Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[7]Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[7]2default:default2default:default2�
 "�
6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[3]6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[3]2default:default2default:default2�
 "r
-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[3]	-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg	:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg2default:default2default:default2�
 "�
Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[8]Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[8]2default:default2default:default2�
 "�
6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[4]6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[4]2default:default2default:default2�
 "r
-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[4]	-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg	:u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg2default:default2default:default2�
 "�
Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[9]Iu_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/dout_reg/ADDRARDADDR[9]2default:default2default:default2�
 "�
6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[5]6u_SCCB_core/U_SCCB_Controller/U_OV7670_config_rom/Q[5]2default:default2default:default2�
 "r
-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[5]	-u_SCCB_core/U_SCCB_Controller/rom_addr_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 33 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
f
%Bitstream compression saved %s bits.
26*	bitstream2
111854722default:defaultZ40-26h px� 
i
Writing bitstream %s...
11*	bitstream2,
./OV7670_VGA_Display.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
332default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:132default:default2
00:00:122default:default2
2279.7192default:default2
442.4692default:defaultZ17-268h px� 


End Record