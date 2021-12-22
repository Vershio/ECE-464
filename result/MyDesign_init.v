/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1
// Date      : Mon Nov 15 20:22:36 2021
/////////////////////////////////////////////////////////////


module MyDesign ( dut_run, dut_busy, reset_b, clk, dut_sram_write_address, 
        dut_sram_write_data, dut_sram_write_enable, dut_sram_read_address, 
        sram_dut_read_data, dut_wmem_read_address, wmem_dut_read_data );
  output [11:0] dut_sram_write_address;
  output [15:0] dut_sram_write_data;
  output [11:0] dut_sram_read_address;
  input [15:0] sram_dut_read_data;
  output [11:0] dut_wmem_read_address;
  input [15:0] wmem_dut_read_data;
  input dut_run, reset_b, clk;
  output dut_busy, dut_sram_write_enable;
  wire   n95, n100, n101, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668;
  wire   [1:0] state;
  wire   [8:0] convolution0;
  wire   [8:0] convolution1;
  wire   [8:0] convolution2;
  wire   [8:0] convolution3;

  DFF_X1 \state_reg[1]  ( .D(n100), .CK(clk), .Q(state[1]), .QN(n643) );
  DFF_X2 \dut_sram_write_data_reg[3]  ( .D(n667), .CK(clk), .Q(
        dut_sram_write_data[3]) );
  DFF_X2 \dut_sram_write_data_reg[2]  ( .D(n666), .CK(clk), .Q(
        dut_sram_write_data[2]) );
  DFF_X2 dut_sram_write_enable_reg ( .D(n95), .CK(clk), .Q(
        dut_sram_write_enable), .QN(n633) );
  DFF_X2 \convolution1_reg[4]  ( .D(n115), .CK(clk), .QN(n664) );
  DFF_X2 \convolution3_reg[4]  ( .D(n133), .CK(clk), .QN(n663) );
  DFF_X2 \convolution2_reg[4]  ( .D(n124), .CK(clk), .Q(convolution2[4]), .QN(
        n662) );
  DFF_X2 \convolution1_reg[2]  ( .D(n113), .CK(clk), .Q(n299), .QN(n661) );
  DFF_X2 \convolution2_reg[2]  ( .D(n122), .CK(clk), .Q(n442), .QN(n660) );
  DFF_X2 \convolution3_reg[2]  ( .D(n131), .CK(clk), .Q(convolution3[2]), .QN(
        n659) );
  DFF_X2 \convolution1_reg[0]  ( .D(n111), .CK(clk), .Q(convolution1[0]), .QN(
        n657) );
  DFF_X2 \convolution3_reg[0]  ( .D(n129), .CK(clk), .Q(convolution3[0]), .QN(
        n655) );
  DFF_X2 \convolution0_reg[7]  ( .D(n109), .CK(clk), .QN(n654) );
  DFF_X2 \convolution0_reg[2]  ( .D(n104), .CK(clk), .QN(n653) );
  DFF_X2 \convolution3_reg[7]  ( .D(n136), .CK(clk), .Q(convolution3[7]), .QN(
        n649) );
  DFF_X2 \convolution2_reg[7]  ( .D(n127), .CK(clk), .Q(convolution2[7]), .QN(
        n650) );
  DFF_X2 \convolution0_reg[4]  ( .D(n106), .CK(clk), .Q(convolution0[4]), .QN(
        n652) );
  DFF_X2 \convolution0_reg[0]  ( .D(n138), .CK(clk), .QN(n651) );
  DFF_X2 \convolution1_reg[3]  ( .D(n114), .CK(clk), .QN(n648) );
  DFF_X2 \convolution2_reg[1]  ( .D(n121), .CK(clk), .Q(convolution2[1]), .QN(
        n646) );
  DFF_X2 dut_busy_reg ( .D(n139), .CK(clk), .Q(dut_busy), .QN(n630) );
  DFF_X2 \dut_sram_write_data_reg[1]  ( .D(n665), .CK(clk), .Q(
        dut_sram_write_data[1]) );
  DFF_X2 \dut_sram_write_data_reg[0]  ( .D(n668), .CK(clk), .Q(
        dut_sram_write_data[0]) );
  DFF_X1 \convolution1_reg[6]  ( .D(n117), .CK(clk), .Q(convolution1[6]), .QN(
        n638) );
  DFF_X1 \state_reg[0]  ( .D(n101), .CK(clk), .Q(state[0]), .QN(n632) );
  DFF_X1 \convolution2_reg[8]  ( .D(n128), .CK(clk), .QN(n642) );
  DFF_X1 \convolution3_reg[8]  ( .D(n137), .CK(clk), .Q(convolution3[8]), .QN(
        n629) );
  DFF_X1 \convolution3_reg[5]  ( .D(n134), .CK(clk), .Q(convolution3[5]), .QN(
        n635) );
  DFF_X1 \convolution1_reg[8]  ( .D(n119), .CK(clk), .QN(n641) );
  DFF_X1 \convolution0_reg[3]  ( .D(n105), .CK(clk), .Q(convolution0[3]), .QN(
        n301) );
  DFF_X1 \convolution2_reg[0]  ( .D(n120), .CK(clk), .Q(convolution2[0]), .QN(
        n656) );
  DFF_X1 \convolution3_reg[1]  ( .D(n130), .CK(clk), .Q(convolution3[1]), .QN(
        n645) );
  DFF_X1 \convolution3_reg[6]  ( .D(n135), .CK(clk), .Q(convolution3[6]), .QN(
        n628) );
  DFF_X1 \convolution0_reg[8]  ( .D(n110), .CK(clk), .Q(convolution0[8]), .QN(
        n640) );
  DFF_X1 \convolution2_reg[6]  ( .D(n126), .CK(clk), .Q(convolution2[6]), .QN(
        n631) );
  DFF_X1 \convolution0_reg[1]  ( .D(n103), .CK(clk), .Q(convolution0[1]) );
  DFF_X1 \convolution3_reg[3]  ( .D(n132), .CK(clk), .Q(convolution3[3]), .QN(
        n647) );
  DFF_X1 \convolution2_reg[3]  ( .D(n123), .CK(clk), .Q(convolution2[3]), .QN(
        n644) );
  DFF_X1 \convolution1_reg[1]  ( .D(n112), .CK(clk), .Q(convolution1[1]) );
  DFF_X1 \convolution2_reg[5]  ( .D(n125), .CK(clk), .Q(convolution2[5]), .QN(
        n639) );
  DFF_X1 \convolution0_reg[5]  ( .D(n107), .CK(clk), .Q(convolution0[5]), .QN(
        n636) );
  DFF_X1 \convolution1_reg[5]  ( .D(n116), .CK(clk), .Q(convolution1[5]), .QN(
        n634) );
  DFF_X1 \convolution0_reg[6]  ( .D(n108), .CK(clk), .Q(convolution0[6]), .QN(
        n637) );
  DFF_X1 \convolution1_reg[7]  ( .D(n118), .CK(clk), .Q(n140), .QN(n658) );
  INV_X2 U143 ( .A(n535), .ZN(n143) );
  INV_X4 U144 ( .A(n298), .ZN(n625) );
  INV_X4 U145 ( .A(1'b1), .ZN(dut_wmem_read_address[0]) );
  INV_X4 U146 ( .A(1'b1), .ZN(dut_wmem_read_address[1]) );
  INV_X4 U147 ( .A(1'b1), .ZN(dut_wmem_read_address[2]) );
  INV_X1 U148 ( .A(n657), .ZN(n295) );
  INV_X1 U149 ( .A(n664), .ZN(n446) );
  NAND2_X1 U150 ( .A1(n465), .A2(n281), .ZN(n280) );
  NOR2_X1 U151 ( .A1(n483), .A2(n433), .ZN(n437) );
  INV_X1 U152 ( .A(n280), .ZN(n480) );
  INV_X1 U153 ( .A(n526), .ZN(n522) );
  NAND2_X1 U154 ( .A1(n508), .A2(n274), .ZN(n273) );
  NAND2_X1 U155 ( .A1(n271), .A2(n261), .ZN(n260) );
  NAND2_X1 U156 ( .A1(n439), .A2(n353), .ZN(n272) );
  INV_X1 U157 ( .A(n456), .ZN(n271) );
  INV_X2 U158 ( .A(n483), .ZN(n141) );
  INV_X1 U159 ( .A(n489), .ZN(n488) );
  NAND2_X1 U160 ( .A1(n253), .A2(n487), .ZN(n489) );
  INV_X1 U161 ( .A(n287), .ZN(n491) );
  INV_X2 U162 ( .A(n478), .ZN(n354) );
  INV_X2 U163 ( .A(n364), .ZN(n439) );
  INV_X1 U164 ( .A(n471), .ZN(n281) );
  INV_X2 U165 ( .A(n626), .ZN(n535) );
  NAND2_X1 U166 ( .A1(n446), .A2(n140), .ZN(n447) );
  INV_X1 U167 ( .A(n486), .ZN(n291) );
  INV_X2 U168 ( .A(n490), .ZN(n144) );
  NAND2_X1 U169 ( .A1(n662), .A2(n650), .ZN(n325) );
  NAND2_X1 U170 ( .A1(n658), .A2(n664), .ZN(n373) );
  NAND2_X1 U171 ( .A1(n652), .A2(n654), .ZN(n270) );
  AOI21_X2 U172 ( .B1(n318), .B2(n517), .A(convolution3[8]), .ZN(n317) );
  NAND2_X1 U173 ( .A1(n520), .A2(n519), .ZN(n440) );
  AOI21_X2 U174 ( .B1(n359), .B2(n522), .A(n474), .ZN(n358) );
  OAI211_X2 U175 ( .C1(n243), .C2(n497), .A(n496), .B(n495), .ZN(n498) );
  NAND2_X1 U176 ( .A1(n496), .A2(n494), .ZN(n249) );
  INV_X2 U177 ( .A(n266), .ZN(n303) );
  INV_X2 U178 ( .A(n243), .ZN(n251) );
  OAI211_X2 U179 ( .C1(n456), .C2(n445), .A(n641), .B(n439), .ZN(n263) );
  NAND2_X1 U180 ( .A1(n457), .A2(n459), .ZN(n265) );
  INV_X1 U181 ( .A(n516), .ZN(n334) );
  AOI21_X2 U182 ( .B1(n476), .B2(n475), .A(n480), .ZN(n279) );
  NAND2_X2 U183 ( .A1(n241), .A2(n489), .ZN(n496) );
  INV_X2 U184 ( .A(n527), .ZN(n523) );
  NAND2_X1 U185 ( .A1(n286), .A2(n355), .ZN(n285) );
  NAND2_X1 U186 ( .A1(n254), .A2(convolution2[1]), .ZN(n253) );
  INV_X2 U187 ( .A(n291), .ZN(n290) );
  INV_X1 U188 ( .A(n482), .ZN(n269) );
  NAND2_X1 U189 ( .A1(n293), .A2(n656), .ZN(n254) );
  NAND2_X1 U190 ( .A1(n325), .A2(n486), .ZN(n289) );
  NAND2_X1 U191 ( .A1(n373), .A2(n372), .ZN(n448) );
  INV_X4 U192 ( .A(n484), .ZN(n142) );
  XNOR2_X1 U193 ( .A(n462), .B(convolution0[1]), .ZN(n478) );
  NAND2_X1 U194 ( .A1(convolution2[4]), .A2(n324), .ZN(n288) );
  NAND2_X1 U195 ( .A1(convolution0[3]), .A2(n270), .ZN(n328) );
  NAND2_X1 U196 ( .A1(n661), .A2(n657), .ZN(n296) );
  INV_X1 U197 ( .A(n442), .ZN(n293) );
  INV_X2 U198 ( .A(n649), .ZN(n274) );
  INV_X2 U199 ( .A(n631), .ZN(n257) );
  INV_X1 U200 ( .A(n653), .ZN(n467) );
  INV_X1 U201 ( .A(n651), .ZN(n468) );
  XNOR2_X1 U202 ( .A(convolution3[6]), .B(n635), .ZN(n505) );
  CLKBUF_X3 U203 ( .A(reset_b), .Z(n371) );
  INV_X2 U204 ( .A(1'b1), .ZN(dut_sram_write_address[11]) );
  INV_X2 U205 ( .A(1'b1), .ZN(dut_sram_write_address[10]) );
  INV_X2 U206 ( .A(1'b1), .ZN(dut_sram_write_address[9]) );
  INV_X2 U207 ( .A(1'b1), .ZN(dut_sram_write_address[8]) );
  INV_X2 U208 ( .A(1'b1), .ZN(dut_sram_write_address[7]) );
  INV_X2 U209 ( .A(1'b1), .ZN(dut_sram_write_address[6]) );
  INV_X2 U210 ( .A(1'b1), .ZN(dut_sram_write_address[5]) );
  INV_X2 U211 ( .A(1'b1), .ZN(dut_sram_write_address[4]) );
  INV_X2 U212 ( .A(1'b1), .ZN(dut_sram_write_address[3]) );
  INV_X2 U213 ( .A(1'b1), .ZN(dut_sram_write_address[2]) );
  INV_X2 U214 ( .A(1'b1), .ZN(dut_sram_write_address[1]) );
  INV_X2 U215 ( .A(1'b1), .ZN(dut_sram_write_address[0]) );
  INV_X2 U216 ( .A(1'b1), .ZN(dut_sram_write_data[15]) );
  INV_X2 U217 ( .A(1'b1), .ZN(dut_sram_write_data[14]) );
  INV_X2 U218 ( .A(1'b1), .ZN(dut_sram_write_data[13]) );
  INV_X2 U219 ( .A(1'b1), .ZN(dut_sram_write_data[12]) );
  INV_X2 U220 ( .A(1'b1), .ZN(dut_sram_write_data[11]) );
  INV_X2 U221 ( .A(1'b1), .ZN(dut_sram_write_data[10]) );
  INV_X2 U222 ( .A(1'b1), .ZN(dut_sram_write_data[9]) );
  INV_X2 U223 ( .A(1'b1), .ZN(dut_sram_write_data[8]) );
  INV_X2 U224 ( .A(1'b1), .ZN(dut_sram_write_data[7]) );
  INV_X2 U225 ( .A(1'b1), .ZN(dut_sram_write_data[6]) );
  INV_X2 U226 ( .A(1'b1), .ZN(dut_sram_write_data[5]) );
  INV_X2 U227 ( .A(1'b1), .ZN(dut_sram_write_data[4]) );
  INV_X2 U228 ( .A(1'b1), .ZN(dut_sram_read_address[11]) );
  INV_X2 U229 ( .A(1'b1), .ZN(dut_sram_read_address[10]) );
  INV_X2 U230 ( .A(1'b1), .ZN(dut_sram_read_address[9]) );
  INV_X2 U231 ( .A(1'b1), .ZN(dut_sram_read_address[8]) );
  INV_X2 U232 ( .A(1'b1), .ZN(dut_sram_read_address[7]) );
  INV_X2 U233 ( .A(1'b1), .ZN(dut_sram_read_address[6]) );
  INV_X2 U234 ( .A(1'b1), .ZN(dut_sram_read_address[5]) );
  INV_X2 U235 ( .A(1'b1), .ZN(dut_sram_read_address[4]) );
  INV_X2 U236 ( .A(1'b1), .ZN(dut_sram_read_address[3]) );
  INV_X2 U237 ( .A(1'b1), .ZN(dut_sram_read_address[2]) );
  INV_X2 U238 ( .A(1'b1), .ZN(dut_sram_read_address[1]) );
  INV_X2 U239 ( .A(1'b1), .ZN(dut_sram_read_address[0]) );
  INV_X2 U240 ( .A(1'b1), .ZN(dut_wmem_read_address[11]) );
  INV_X2 U241 ( .A(1'b1), .ZN(dut_wmem_read_address[10]) );
  INV_X2 U242 ( .A(1'b1), .ZN(dut_wmem_read_address[9]) );
  INV_X2 U243 ( .A(1'b1), .ZN(dut_wmem_read_address[8]) );
  INV_X2 U244 ( .A(1'b1), .ZN(dut_wmem_read_address[7]) );
  INV_X2 U245 ( .A(1'b1), .ZN(dut_wmem_read_address[6]) );
  INV_X2 U246 ( .A(1'b1), .ZN(dut_wmem_read_address[5]) );
  INV_X2 U247 ( .A(1'b1), .ZN(dut_wmem_read_address[4]) );
  INV_X2 U248 ( .A(1'b1), .ZN(dut_wmem_read_address[3]) );
  NAND2_X2 U297 ( .A1(n488), .A2(n242), .ZN(n494) );
  INV_X2 U298 ( .A(n242), .ZN(n241) );
  XNOR2_X2 U299 ( .A(n287), .B(n144), .ZN(n242) );
  NAND2_X2 U300 ( .A1(n434), .A2(n252), .ZN(n243) );
  NAND2_X2 U301 ( .A1(convolution2[5]), .A2(convolution2[6]), .ZN(n490) );
  NAND4_X2 U302 ( .A1(n248), .A2(n245), .A3(n642), .A4(n244), .ZN(n499) );
  NAND3_X2 U303 ( .A1(n496), .A2(n494), .A3(n493), .ZN(n244) );
  NAND3_X2 U304 ( .A1(n247), .A2(n436), .A3(n246), .ZN(n245) );
  NAND3_X2 U305 ( .A1(n141), .A2(n433), .A3(n142), .ZN(n246) );
  NAND3_X2 U306 ( .A1(n250), .A2(n252), .A3(n483), .ZN(n247) );
  NAND2_X2 U307 ( .A1(n251), .A2(n249), .ZN(n248) );
  NAND2_X2 U308 ( .A1(n142), .A2(n433), .ZN(n252) );
  INV_X1 U309 ( .A(n256), .ZN(n250) );
  XNOR2_X2 U310 ( .A(n255), .B(n290), .ZN(n483) );
  XNOR2_X2 U311 ( .A(n662), .B(n650), .ZN(n255) );
  NOR2_X2 U312 ( .A1(n142), .A2(n433), .ZN(n256) );
  INV_X4 U313 ( .A(n485), .ZN(n433) );
  XNOR2_X2 U314 ( .A(n257), .B(n639), .ZN(n485) );
  NAND3_X2 U315 ( .A1(n264), .A2(n259), .A3(n258), .ZN(n307) );
  NAND3_X2 U316 ( .A1(n457), .A2(n459), .A3(n438), .ZN(n258) );
  NAND2_X2 U317 ( .A1(n263), .A2(n260), .ZN(n259) );
  INV_X2 U318 ( .A(n262), .ZN(n261) );
  NAND3_X2 U319 ( .A1(n364), .A2(n353), .A3(n641), .ZN(n262) );
  NAND2_X2 U320 ( .A1(n303), .A2(n265), .ZN(n264) );
  NAND2_X2 U321 ( .A1(n327), .A2(n453), .ZN(n459) );
  NAND2_X2 U322 ( .A1(n326), .A2(n375), .ZN(n457) );
  NAND2_X2 U323 ( .A1(n272), .A2(n271), .ZN(n266) );
  INV_X4 U324 ( .A(n363), .ZN(n342) );
  XNOR2_X2 U325 ( .A(n479), .B(n475), .ZN(n363) );
  NAND2_X2 U326 ( .A1(n267), .A2(n341), .ZN(n348) );
  NAND2_X2 U327 ( .A1(n342), .A2(n268), .ZN(n267) );
  NOR2_X2 U328 ( .A1(n476), .A2(n269), .ZN(n268) );
  XNOR2_X2 U329 ( .A(n465), .B(n471), .ZN(n476) );
  NAND2_X1 U330 ( .A1(n303), .A2(n457), .ZN(n306) );
  NAND2_X2 U331 ( .A1(n275), .A2(n273), .ZN(n516) );
  INV_X4 U332 ( .A(n663), .ZN(n508) );
  NAND2_X2 U333 ( .A1(n277), .A2(n276), .ZN(n275) );
  INV_X1 U334 ( .A(n647), .ZN(n276) );
  NAND2_X2 U335 ( .A1(n507), .A2(n649), .ZN(n277) );
  INV_X2 U336 ( .A(n319), .ZN(n318) );
  NAND2_X2 U337 ( .A1(n518), .A2(n520), .ZN(n319) );
  NAND2_X2 U338 ( .A1(n513), .A2(n514), .ZN(n520) );
  NAND2_X2 U339 ( .A1(n278), .A2(n515), .ZN(n518) );
  INV_X2 U340 ( .A(n513), .ZN(n278) );
  NAND2_X2 U341 ( .A1(n282), .A2(n279), .ZN(n359) );
  NAND2_X2 U342 ( .A1(convolution0[5]), .A2(convolution0[6]), .ZN(n471) );
  NAND3_X2 U343 ( .A1(n285), .A2(n284), .A3(n283), .ZN(n282) );
  NAND2_X2 U344 ( .A1(n357), .A2(n350), .ZN(n283) );
  INV_X4 U345 ( .A(n476), .ZN(n357) );
  NAND2_X1 U346 ( .A1(n354), .A2(n479), .ZN(n284) );
  NAND2_X1 U347 ( .A1(n478), .A2(n356), .ZN(n286) );
  XNOR2_X2 U348 ( .A(n651), .B(n653), .ZN(n462) );
  NAND2_X2 U349 ( .A1(n289), .A2(n288), .ZN(n287) );
  INV_X1 U350 ( .A(n292), .ZN(n374) );
  INV_X2 U351 ( .A(n327), .ZN(n326) );
  XNOR2_X2 U352 ( .A(n454), .B(n292), .ZN(n327) );
  NAND2_X2 U353 ( .A1(convolution1[5]), .A2(convolution1[6]), .ZN(n292) );
  NAND2_X2 U354 ( .A1(n448), .A2(n447), .ZN(n454) );
  NAND2_X2 U355 ( .A1(n294), .A2(n295), .ZN(n297) );
  NAND2_X2 U356 ( .A1(n296), .A2(n297), .ZN(n308) );
  INV_X2 U357 ( .A(n661), .ZN(n294) );
  XNOR2_X2 U358 ( .A(n335), .B(n301), .ZN(n355) );
  NAND2_X2 U359 ( .A1(n643), .A2(dut_busy), .ZN(n626) );
  NOR2_X2 U360 ( .A1(n503), .A2(n336), .ZN(n337) );
  XNOR2_X2 U361 ( .A(n340), .B(n508), .ZN(n503) );
  NAND2_X2 U362 ( .A1(n329), .A2(n455), .ZN(n353) );
  NAND2_X2 U363 ( .A1(n504), .A2(n505), .ZN(n338) );
  XNOR2_X2 U364 ( .A(n352), .B(n140), .ZN(n364) );
  XNOR2_X2 U365 ( .A(n664), .B(n648), .ZN(n352) );
  BUF_X4 U366 ( .A(n392), .Z(n298) );
  XNOR2_X1 U367 ( .A(convolution1[6]), .B(n634), .ZN(n455) );
  NAND2_X1 U368 ( .A1(n328), .A2(n464), .ZN(n465) );
  NAND2_X1 U369 ( .A1(convolution0[4]), .A2(n463), .ZN(n464) );
  NAND2_X1 U370 ( .A1(n632), .A2(state[1]), .ZN(n481) );
  INV_X1 U371 ( .A(n644), .ZN(n486) );
  NAND2_X1 U372 ( .A1(n505), .A2(n504), .ZN(n365) );
  NAND2_X1 U373 ( .A1(n509), .A2(n516), .ZN(n519) );
  XNOR2_X1 U374 ( .A(n647), .B(n649), .ZN(n340) );
  NOR2_X1 U375 ( .A1(n504), .A2(n505), .ZN(n506) );
  NOR3_X1 U376 ( .A1(n481), .A2(n630), .A3(convolution0[8]), .ZN(n482) );
  NAND2_X1 U377 ( .A1(n468), .A2(n467), .ZN(n469) );
  NAND2_X1 U378 ( .A1(n466), .A2(convolution0[1]), .ZN(n470) );
  NAND2_X1 U379 ( .A1(n452), .A2(n451), .ZN(n453) );
  NAND2_X1 U380 ( .A1(n299), .A2(convolution1[0]), .ZN(n451) );
  NAND2_X1 U381 ( .A1(n449), .A2(n561), .ZN(n450) );
  INV_X1 U382 ( .A(n453), .ZN(n375) );
  NAND2_X1 U383 ( .A1(n442), .A2(convolution2[0]), .ZN(n487) );
  NAND2_X1 U384 ( .A1(n300), .A2(n551), .ZN(n605) );
  INV_X1 U385 ( .A(sram_dut_read_data[5]), .ZN(n551) );
  NAND2_X1 U386 ( .A1(n300), .A2(n443), .ZN(n596) );
  NAND2_X1 U387 ( .A1(n300), .A2(n540), .ZN(n610) );
  INV_X1 U388 ( .A(sram_dut_read_data[6]), .ZN(n540) );
  NAND2_X1 U389 ( .A1(n460), .A2(n371), .ZN(n527) );
  INV_X1 U390 ( .A(n472), .ZN(n460) );
  NAND2_X1 U391 ( .A1(n144), .A2(n492), .ZN(n495) );
  NAND2_X1 U392 ( .A1(n300), .A2(n556), .ZN(n622) );
  INV_X1 U393 ( .A(sram_dut_read_data[10]), .ZN(n556) );
  INV_X1 U394 ( .A(n648), .ZN(n372) );
  NAND2_X1 U395 ( .A1(n516), .A2(n635), .ZN(n332) );
  NAND2_X1 U396 ( .A1(n516), .A2(n628), .ZN(n331) );
  NAND2_X1 U397 ( .A1(n509), .A2(n334), .ZN(n333) );
  NAND2_X1 U398 ( .A1(n512), .A2(n511), .ZN(n514) );
  NAND2_X1 U399 ( .A1(n510), .A2(convolution3[2]), .ZN(n512) );
  NAND2_X1 U400 ( .A1(convolution3[1]), .A2(convolution3[0]), .ZN(n511) );
  NAND2_X1 U401 ( .A1(n655), .A2(n645), .ZN(n510) );
  INV_X1 U402 ( .A(n503), .ZN(n441) );
  INV_X1 U403 ( .A(n458), .ZN(n438) );
  NOR2_X1 U404 ( .A1(n481), .A2(n630), .ZN(n472) );
  NAND2_X1 U405 ( .A1(n437), .A2(n484), .ZN(n436) );
  INV_X1 U406 ( .A(n495), .ZN(n493) );
  INV_X1 U407 ( .A(n506), .ZN(n366) );
  NAND2_X1 U408 ( .A1(n502), .A2(n441), .ZN(n322) );
  INV_X1 U409 ( .A(n365), .ZN(n502) );
  NAND2_X1 U410 ( .A1(n506), .A2(n441), .ZN(n321) );
  INV_X1 U411 ( .A(n519), .ZN(n517) );
  NOR2_X2 U412 ( .A1(n337), .A2(n506), .ZN(n316) );
  INV_X1 U413 ( .A(n338), .ZN(n336) );
  INV_X1 U414 ( .A(sram_dut_read_data[13]), .ZN(n395) );
  INV_X1 U415 ( .A(sram_dut_read_data[4]), .ZN(n432) );
  INV_X1 U416 ( .A(sram_dut_read_data[11]), .ZN(n408) );
  INV_X1 U417 ( .A(sram_dut_read_data[15]), .ZN(n405) );
  INV_X1 U418 ( .A(sram_dut_read_data[14]), .ZN(n412) );
  INV_X1 U419 ( .A(sram_dut_read_data[8]), .ZN(n398) );
  OAI211_X1 U420 ( .C1(n479), .C2(n350), .A(n349), .B(n482), .ZN(n341) );
  INV_X1 U421 ( .A(n480), .ZN(n349) );
  NAND2_X1 U422 ( .A1(n344), .A2(n343), .ZN(n346) );
  NAND2_X1 U423 ( .A1(n356), .A2(n355), .ZN(n343) );
  NAND2_X1 U424 ( .A1(n354), .A2(n362), .ZN(n344) );
  NOR2_X1 U425 ( .A1(n473), .A2(n472), .ZN(n474) );
  NAND2_X1 U426 ( .A1(n371), .A2(dut_sram_write_data[0]), .ZN(n473) );
  NOR2_X1 U427 ( .A1(dut_run), .A2(dut_busy), .ZN(n528) );
  NAND2_X1 U428 ( .A1(n595), .A2(wmem_dut_read_data[3]), .ZN(n370) );
  INV_X1 U429 ( .A(sram_dut_read_data[0]), .ZN(n425) );
  INV_X1 U430 ( .A(sram_dut_read_data[2]), .ZN(n415) );
  INV_X1 U431 ( .A(sram_dut_read_data[1]), .ZN(n428) );
  INV_X1 U432 ( .A(sram_dut_read_data[7]), .ZN(n422) );
  INV_X1 U433 ( .A(n299), .ZN(n449) );
  INV_X1 U434 ( .A(sram_dut_read_data[3]), .ZN(n418) );
  NAND2_X1 U435 ( .A1(n311), .A2(n522), .ZN(n310) );
  NAND2_X1 U436 ( .A1(n312), .A2(n521), .ZN(n311) );
  INV_X1 U437 ( .A(n440), .ZN(n312) );
  NOR2_X1 U438 ( .A1(n316), .A2(n440), .ZN(n313) );
  NAND3_X1 U439 ( .A1(reset_b), .A2(n444), .A3(dut_busy), .ZN(n392) );
  NOR2_X1 U440 ( .A1(state[0]), .A2(state[1]), .ZN(n444) );
  INV_X1 U441 ( .A(sram_dut_read_data[12]), .ZN(n402) );
  OAI22_X1 U442 ( .A1(n616), .A2(n626), .B1(n625), .B2(n628), .ZN(n135) );
  NAND2_X1 U443 ( .A1(n394), .A2(n393), .ZN(n616) );
  NAND2_X1 U444 ( .A1(n615), .A2(n395), .ZN(n394) );
  NAND2_X1 U445 ( .A1(n400), .A2(sram_dut_read_data[13]), .ZN(n393) );
  OAI22_X1 U446 ( .A1(n613), .A2(n143), .B1(n625), .B2(n645), .ZN(n130) );
  NAND2_X1 U447 ( .A1(n612), .A2(n611), .ZN(n613) );
  NAND2_X1 U448 ( .A1(n610), .A2(n585), .ZN(n611) );
  OAI22_X1 U449 ( .A1(n584), .A2(n143), .B1(n625), .B2(n656), .ZN(n120) );
  NAND2_X1 U450 ( .A1(n431), .A2(n429), .ZN(n584) );
  NAND2_X1 U451 ( .A1(n583), .A2(n432), .ZN(n431) );
  NAND2_X1 U452 ( .A1(n430), .A2(sram_dut_read_data[4]), .ZN(n429) );
  NAND2_X1 U453 ( .A1(n389), .A2(n388), .ZN(n105) );
  NAND2_X1 U454 ( .A1(n555), .A2(n625), .ZN(n389) );
  NAND2_X1 U455 ( .A1(n298), .A2(convolution0[3]), .ZN(n388) );
  XNOR2_X1 U456 ( .A(sram_dut_read_data[4]), .B(wmem_dut_read_data[3]), .ZN(
        n555) );
  OAI22_X1 U457 ( .A1(n569), .A2(n143), .B1(n625), .B2(n641), .ZN(n119) );
  NAND2_X1 U458 ( .A1(n407), .A2(n406), .ZN(n569) );
  NAND2_X1 U459 ( .A1(n617), .A2(n408), .ZN(n407) );
  NAND2_X1 U460 ( .A1(n410), .A2(sram_dut_read_data[11]), .ZN(n406) );
  NAND2_X1 U461 ( .A1(n385), .A2(n384), .ZN(n134) );
  NAND2_X1 U462 ( .A1(n614), .A2(n625), .ZN(n385) );
  NAND2_X1 U463 ( .A1(n298), .A2(convolution3[5]), .ZN(n384) );
  XNOR2_X1 U464 ( .A(sram_dut_read_data[11]), .B(wmem_dut_read_data[5]), .ZN(
        n614) );
  OAI22_X1 U465 ( .A1(n618), .A2(n626), .B1(n625), .B2(n629), .ZN(n137) );
  NAND2_X1 U466 ( .A1(n404), .A2(n403), .ZN(n618) );
  NAND2_X1 U467 ( .A1(n617), .A2(n405), .ZN(n404) );
  NAND2_X1 U468 ( .A1(n410), .A2(sram_dut_read_data[15]), .ZN(n403) );
  OAI22_X1 U469 ( .A1(n593), .A2(n143), .B1(n625), .B2(n642), .ZN(n128) );
  NAND2_X1 U470 ( .A1(n411), .A2(n409), .ZN(n593) );
  NAND2_X1 U471 ( .A1(n617), .A2(n412), .ZN(n411) );
  NAND2_X1 U472 ( .A1(n410), .A2(sram_dut_read_data[14]), .ZN(n409) );
  OAI22_X1 U473 ( .A1(n546), .A2(n143), .B1(n625), .B2(n637), .ZN(n108) );
  NAND2_X1 U474 ( .A1(n397), .A2(n396), .ZN(n546) );
  NAND2_X1 U475 ( .A1(n615), .A2(n398), .ZN(n397) );
  NAND2_X1 U476 ( .A1(n400), .A2(sram_dut_read_data[8]), .ZN(n396) );
  NAND2_X1 U477 ( .A1(n381), .A2(n380), .ZN(n116) );
  NAND2_X1 U478 ( .A1(n564), .A2(n625), .ZN(n381) );
  NAND2_X1 U479 ( .A1(n298), .A2(convolution1[5]), .ZN(n380) );
  XNOR2_X1 U480 ( .A(sram_dut_read_data[7]), .B(wmem_dut_read_data[5]), .ZN(
        n564) );
  OAI22_X1 U481 ( .A1(n544), .A2(n143), .B1(n625), .B2(n636), .ZN(n107) );
  NAND2_X1 U482 ( .A1(n543), .A2(n542), .ZN(n544) );
  OAI22_X1 U483 ( .A1(n591), .A2(n143), .B1(n625), .B2(n639), .ZN(n125) );
  NAND2_X1 U484 ( .A1(n590), .A2(n589), .ZN(n591) );
  NAND2_X1 U485 ( .A1(n530), .A2(n298), .ZN(n101) );
  OAI21_X1 U486 ( .B1(n529), .B2(n528), .A(state[0]), .ZN(n530) );
  OAI21_X1 U487 ( .B1(dut_run), .B2(n643), .A(n371), .ZN(n529) );
  OAI22_X1 U488 ( .A1(n567), .A2(n143), .B1(n625), .B2(n638), .ZN(n117) );
  NAND2_X1 U489 ( .A1(n566), .A2(n565), .ZN(n567) );
  NAND2_X1 U490 ( .A1(n596), .A2(n545), .ZN(n565) );
  NAND2_X1 U491 ( .A1(n523), .A2(dut_sram_write_data[1]), .ZN(n461) );
  NAND3_X1 U492 ( .A1(n306), .A2(n458), .A3(n459), .ZN(n305) );
  NOR2_X1 U493 ( .A1(n528), .A2(n527), .ZN(n139) );
  NAND2_X1 U494 ( .A1(n379), .A2(n378), .ZN(n112) );
  NAND2_X1 U495 ( .A1(n563), .A2(n625), .ZN(n379) );
  NAND2_X1 U496 ( .A1(n298), .A2(convolution1[1]), .ZN(n378) );
  XNOR2_X1 U497 ( .A(sram_dut_read_data[2]), .B(wmem_dut_read_data[1]), .ZN(
        n563) );
  NAND2_X1 U498 ( .A1(n391), .A2(n390), .ZN(n123) );
  NAND2_X1 U499 ( .A1(n601), .A2(n625), .ZN(n391) );
  NAND2_X1 U500 ( .A1(n298), .A2(convolution2[3]), .ZN(n390) );
  XNOR2_X1 U501 ( .A(sram_dut_read_data[8]), .B(wmem_dut_read_data[3]), .ZN(
        n601) );
  NAND2_X1 U502 ( .A1(n587), .A2(n586), .ZN(n588) );
  NAND2_X1 U503 ( .A1(n368), .A2(n367), .ZN(n132) );
  NAND2_X1 U504 ( .A1(n298), .A2(convolution3[3]), .ZN(n367) );
  NAND3_X1 U505 ( .A1(n370), .A2(n369), .A3(n535), .ZN(n368) );
  NAND2_X1 U506 ( .A1(n596), .A2(n576), .ZN(n369) );
  OAI22_X1 U507 ( .A1(n579), .A2(n143), .B1(n625), .B2(n648), .ZN(n114) );
  NAND2_X1 U508 ( .A1(n578), .A2(n577), .ZN(n579) );
  NAND2_X1 U509 ( .A1(n605), .A2(n576), .ZN(n577) );
  OAI22_X1 U510 ( .A1(n538), .A2(n143), .B1(n625), .B2(n651), .ZN(n138) );
  NAND2_X1 U511 ( .A1(n424), .A2(n423), .ZN(n538) );
  NAND2_X1 U512 ( .A1(n583), .A2(n425), .ZN(n424) );
  NAND2_X1 U513 ( .A1(n430), .A2(sram_dut_read_data[0]), .ZN(n423) );
  OAI22_X1 U514 ( .A1(n554), .A2(n143), .B1(n625), .B2(n652), .ZN(n106) );
  NAND2_X1 U515 ( .A1(n553), .A2(n552), .ZN(n554) );
  NAND2_X1 U516 ( .A1(n605), .A2(n621), .ZN(n552) );
  NAND2_X1 U517 ( .A1(n383), .A2(n382), .ZN(n127) );
  NAND2_X1 U518 ( .A1(n594), .A2(n625), .ZN(n383) );
  NAND2_X1 U519 ( .A1(n298), .A2(convolution2[7]), .ZN(n382) );
  XNOR2_X1 U520 ( .A(sram_dut_read_data[13]), .B(wmem_dut_read_data[7]), .ZN(
        n594) );
  NAND2_X1 U521 ( .A1(n387), .A2(n386), .ZN(n136) );
  NAND2_X1 U522 ( .A1(n619), .A2(n625), .ZN(n387) );
  NAND2_X1 U523 ( .A1(n298), .A2(convolution3[7]), .ZN(n386) );
  XNOR2_X1 U524 ( .A(sram_dut_read_data[14]), .B(wmem_dut_read_data[7]), .ZN(
        n619) );
  OAI22_X1 U525 ( .A1(n536), .A2(n143), .B1(n625), .B2(n653), .ZN(n104) );
  NAND2_X1 U526 ( .A1(n414), .A2(n413), .ZN(n536) );
  NAND2_X1 U527 ( .A1(n602), .A2(n415), .ZN(n414) );
  NAND2_X1 U528 ( .A1(n420), .A2(sram_dut_read_data[2]), .ZN(n413) );
  OAI22_X1 U529 ( .A1(n550), .A2(n143), .B1(n625), .B2(n654), .ZN(n109) );
  NAND2_X1 U530 ( .A1(n549), .A2(n548), .ZN(n550) );
  NAND2_X1 U531 ( .A1(n596), .A2(n547), .ZN(n548) );
  OAI22_X1 U532 ( .A1(n608), .A2(n143), .B1(n625), .B2(n655), .ZN(n129) );
  NAND2_X1 U533 ( .A1(n607), .A2(n606), .ZN(n608) );
  OAI22_X1 U534 ( .A1(n562), .A2(n143), .B1(n625), .B2(n561), .ZN(n111) );
  NAND2_X1 U535 ( .A1(n427), .A2(n426), .ZN(n562) );
  NAND2_X1 U536 ( .A1(n583), .A2(n428), .ZN(n427) );
  NAND2_X1 U537 ( .A1(n430), .A2(sram_dut_read_data[1]), .ZN(n426) );
  OAI22_X1 U538 ( .A1(n572), .A2(n143), .B1(n625), .B2(n658), .ZN(n118) );
  NAND2_X1 U539 ( .A1(n571), .A2(n570), .ZN(n572) );
  NAND2_X1 U540 ( .A1(n622), .A2(n547), .ZN(n570) );
  OAI22_X1 U541 ( .A1(n603), .A2(n143), .B1(n625), .B2(n659), .ZN(n131) );
  NAND2_X1 U542 ( .A1(n421), .A2(n419), .ZN(n603) );
  NAND2_X1 U543 ( .A1(n602), .A2(n422), .ZN(n421) );
  NAND2_X1 U544 ( .A1(n420), .A2(sram_dut_read_data[7]), .ZN(n419) );
  OAI22_X1 U545 ( .A1(n582), .A2(n143), .B1(n625), .B2(n293), .ZN(n122) );
  NAND2_X1 U546 ( .A1(n581), .A2(n580), .ZN(n582) );
  NAND2_X1 U547 ( .A1(n610), .A2(n534), .ZN(n580) );
  OAI22_X1 U548 ( .A1(n560), .A2(n143), .B1(n625), .B2(n449), .ZN(n113) );
  NAND2_X1 U549 ( .A1(n417), .A2(n416), .ZN(n560) );
  NAND2_X1 U550 ( .A1(n602), .A2(n418), .ZN(n417) );
  NAND2_X1 U551 ( .A1(n420), .A2(sram_dut_read_data[3]), .ZN(n416) );
  OAI22_X1 U552 ( .A1(n600), .A2(n143), .B1(n625), .B2(n599), .ZN(n124) );
  INV_X1 U553 ( .A(convolution2[4]), .ZN(n599) );
  NAND2_X1 U554 ( .A1(n598), .A2(n597), .ZN(n600) );
  NAND2_X1 U555 ( .A1(n596), .A2(n621), .ZN(n597) );
  OAI22_X1 U556 ( .A1(n627), .A2(n626), .B1(n625), .B2(n507), .ZN(n133) );
  NAND2_X1 U557 ( .A1(n624), .A2(n623), .ZN(n627) );
  NAND2_X1 U558 ( .A1(n620), .A2(wmem_dut_read_data[4]), .ZN(n624) );
  OAI22_X1 U559 ( .A1(n575), .A2(n143), .B1(n625), .B2(n664), .ZN(n115) );
  NAND2_X1 U560 ( .A1(n574), .A2(n573), .ZN(n575) );
  NAND2_X1 U561 ( .A1(n610), .A2(n621), .ZN(n573) );
  OAI21_X1 U562 ( .B1(n527), .B2(n633), .A(n526), .ZN(n95) );
  NAND2_X1 U563 ( .A1(n523), .A2(dut_sram_write_data[2]), .ZN(n500) );
  NAND2_X1 U564 ( .A1(n533), .A2(n532), .ZN(n100) );
  NAND2_X1 U565 ( .A1(n531), .A2(state[1]), .ZN(n533) );
  NAND3_X1 U566 ( .A1(n535), .A2(n371), .A3(state[0]), .ZN(n532) );
  NAND2_X1 U567 ( .A1(n371), .A2(dut_run), .ZN(n531) );
  NAND2_X1 U568 ( .A1(n377), .A2(n376), .ZN(n103) );
  NAND2_X1 U569 ( .A1(n539), .A2(n625), .ZN(n377) );
  NAND2_X1 U570 ( .A1(n298), .A2(convolution0[1]), .ZN(n376) );
  XNOR2_X1 U571 ( .A(sram_dut_read_data[1]), .B(wmem_dut_read_data[1]), .ZN(
        n539) );
  OAI22_X1 U572 ( .A1(n592), .A2(n143), .B1(n625), .B2(n631), .ZN(n126) );
  NAND2_X1 U573 ( .A1(n401), .A2(n399), .ZN(n592) );
  NAND2_X1 U574 ( .A1(n615), .A2(n402), .ZN(n401) );
  NAND2_X1 U575 ( .A1(n400), .A2(sram_dut_read_data[12]), .ZN(n399) );
  OAI22_X1 U576 ( .A1(n559), .A2(n143), .B1(n625), .B2(n640), .ZN(n110) );
  NAND2_X1 U577 ( .A1(n558), .A2(n557), .ZN(n559) );
  NAND2_X1 U578 ( .A1(n622), .A2(n568), .ZN(n557) );
  INV_X1 U579 ( .A(n654), .ZN(n463) );
  AND2_X4 U580 ( .A1(reset_b), .A2(n632), .ZN(n300) );
  NAND2_X1 U581 ( .A1(n472), .A2(reset_b), .ZN(n526) );
  INV_X1 U582 ( .A(wmem_dut_read_data[3]), .ZN(n576) );
  NAND2_X1 U583 ( .A1(n470), .A2(n469), .ZN(n475) );
  INV_X1 U584 ( .A(n475), .ZN(n350) );
  INV_X1 U585 ( .A(n355), .ZN(n477) );
  NAND2_X1 U586 ( .A1(n374), .A2(n454), .ZN(n458) );
  INV_X1 U587 ( .A(n353), .ZN(n445) );
  NAND2_X2 U588 ( .A1(n304), .A2(n461), .ZN(n665) );
  NAND3_X2 U589 ( .A1(n307), .A2(n305), .A3(n522), .ZN(n304) );
  XNOR2_X2 U590 ( .A(n308), .B(convolution1[1]), .ZN(n329) );
  NAND2_X2 U591 ( .A1(n314), .A2(n309), .ZN(n525) );
  NOR2_X2 U592 ( .A1(n313), .A2(n310), .ZN(n309) );
  NAND3_X2 U593 ( .A1(n320), .A2(n317), .A3(n315), .ZN(n314) );
  NAND2_X2 U594 ( .A1(n316), .A2(n319), .ZN(n315) );
  NAND3_X2 U595 ( .A1(n323), .A2(n322), .A3(n321), .ZN(n320) );
  NAND3_X1 U596 ( .A1(n366), .A2(n503), .A3(n365), .ZN(n323) );
  INV_X1 U597 ( .A(n650), .ZN(n324) );
  NOR2_X2 U598 ( .A1(n329), .A2(n455), .ZN(n456) );
  XNOR2_X2 U599 ( .A(n330), .B(convolution2[0]), .ZN(n484) );
  XNOR2_X2 U600 ( .A(n646), .B(n660), .ZN(n330) );
  NAND3_X2 U601 ( .A1(n333), .A2(n332), .A3(n331), .ZN(n513) );
  NOR2_X1 U602 ( .A1(n628), .A2(n635), .ZN(n509) );
  XNOR2_X2 U603 ( .A(n654), .B(n652), .ZN(n335) );
  XNOR2_X2 U604 ( .A(n339), .B(convolution3[1]), .ZN(n504) );
  XNOR2_X2 U605 ( .A(n655), .B(n659), .ZN(n339) );
  NAND2_X2 U606 ( .A1(n342), .A2(n357), .ZN(n351) );
  NAND2_X2 U607 ( .A1(n347), .A2(n345), .ZN(n360) );
  NAND2_X2 U608 ( .A1(n348), .A2(n346), .ZN(n345) );
  NAND3_X2 U609 ( .A1(n348), .A2(n351), .A3(n361), .ZN(n347) );
  INV_X1 U610 ( .A(n479), .ZN(n356) );
  XNOR2_X2 U611 ( .A(convolution0[5]), .B(convolution0[6]), .ZN(n479) );
  NOR2_X2 U612 ( .A1(n360), .A2(n358), .ZN(n668) );
  NAND2_X1 U613 ( .A1(n363), .A2(n476), .ZN(n361) );
  NAND2_X1 U614 ( .A1(n477), .A2(n479), .ZN(n362) );
  NAND2_X1 U615 ( .A1(n300), .A2(wmem_dut_read_data[6]), .ZN(n400) );
  NAND2_X1 U616 ( .A1(n300), .A2(wmem_dut_read_data[8]), .ZN(n410) );
  NAND2_X1 U617 ( .A1(n300), .A2(wmem_dut_read_data[2]), .ZN(n420) );
  NAND2_X1 U618 ( .A1(n300), .A2(wmem_dut_read_data[0]), .ZN(n430) );
  NAND2_X2 U619 ( .A1(n141), .A2(n435), .ZN(n434) );
  NAND2_X1 U620 ( .A1(n484), .A2(n485), .ZN(n435) );
  INV_X1 U621 ( .A(wmem_dut_read_data[2]), .ZN(n534) );
  INV_X1 U622 ( .A(wmem_dut_read_data[1]), .ZN(n585) );
  INV_X1 U623 ( .A(wmem_dut_read_data[0]), .ZN(n537) );
  INV_X1 U624 ( .A(wmem_dut_read_data[8]), .ZN(n568) );
  INV_X1 U625 ( .A(wmem_dut_read_data[7]), .ZN(n547) );
  INV_X1 U626 ( .A(wmem_dut_read_data[6]), .ZN(n545) );
  INV_X1 U627 ( .A(convolution1[0]), .ZN(n561) );
  NAND2_X1 U628 ( .A1(n651), .A2(n653), .ZN(n466) );
  NAND2_X1 U629 ( .A1(n450), .A2(convolution1[1]), .ZN(n452) );
  INV_X1 U630 ( .A(sram_dut_read_data[9]), .ZN(n443) );
  INV_X1 U631 ( .A(wmem_dut_read_data[5]), .ZN(n541) );
  INV_X1 U632 ( .A(wmem_dut_read_data[4]), .ZN(n621) );
  NAND2_X1 U633 ( .A1(n610), .A2(n541), .ZN(n542) );
  NAND2_X1 U634 ( .A1(n622), .A2(n541), .ZN(n589) );
  NAND2_X1 U635 ( .A1(n605), .A2(n585), .ZN(n586) );
  NAND2_X1 U636 ( .A1(n605), .A2(n537), .ZN(n606) );
  NAND2_X1 U637 ( .A1(n622), .A2(n621), .ZN(n623) );
  NAND2_X1 U638 ( .A1(n523), .A2(dut_sram_write_data[3]), .ZN(n524) );
  OAI22_X1 U639 ( .A1(n588), .A2(n143), .B1(n625), .B2(n646), .ZN(n121) );
  NAND2_X1 U640 ( .A1(n300), .A2(sram_dut_read_data[9]), .ZN(n595) );
  INV_X1 U641 ( .A(n491), .ZN(n492) );
  INV_X1 U642 ( .A(n494), .ZN(n497) );
  NAND3_X2 U643 ( .A1(n499), .A2(n498), .A3(n522), .ZN(n501) );
  NAND2_X2 U644 ( .A1(n501), .A2(n500), .ZN(n666) );
  INV_X2 U645 ( .A(n508), .ZN(n507) );
  INV_X1 U646 ( .A(n514), .ZN(n515) );
  INV_X1 U647 ( .A(n518), .ZN(n521) );
  NAND2_X2 U648 ( .A1(n525), .A2(n524), .ZN(n667) );
  NAND2_X1 U649 ( .A1(n300), .A2(n534), .ZN(n602) );
  NAND2_X1 U650 ( .A1(n300), .A2(n537), .ZN(n583) );
  NAND2_X1 U651 ( .A1(n300), .A2(sram_dut_read_data[6]), .ZN(n609) );
  NAND2_X1 U652 ( .A1(n609), .A2(wmem_dut_read_data[5]), .ZN(n543) );
  NAND2_X1 U653 ( .A1(n300), .A2(n545), .ZN(n615) );
  NAND2_X1 U654 ( .A1(n595), .A2(wmem_dut_read_data[7]), .ZN(n549) );
  NAND2_X1 U655 ( .A1(n300), .A2(sram_dut_read_data[5]), .ZN(n604) );
  NAND2_X1 U656 ( .A1(n604), .A2(wmem_dut_read_data[4]), .ZN(n553) );
  NAND2_X1 U657 ( .A1(n300), .A2(sram_dut_read_data[10]), .ZN(n620) );
  NAND2_X1 U658 ( .A1(n620), .A2(wmem_dut_read_data[8]), .ZN(n558) );
  NAND2_X1 U659 ( .A1(n595), .A2(wmem_dut_read_data[6]), .ZN(n566) );
  NAND2_X1 U660 ( .A1(n300), .A2(n568), .ZN(n617) );
  NAND2_X1 U661 ( .A1(n620), .A2(wmem_dut_read_data[7]), .ZN(n571) );
  NAND2_X1 U662 ( .A1(n609), .A2(wmem_dut_read_data[4]), .ZN(n574) );
  NAND2_X1 U663 ( .A1(n604), .A2(wmem_dut_read_data[3]), .ZN(n578) );
  NAND2_X1 U664 ( .A1(n609), .A2(wmem_dut_read_data[2]), .ZN(n581) );
  NAND2_X1 U665 ( .A1(n604), .A2(wmem_dut_read_data[1]), .ZN(n587) );
  NAND2_X1 U666 ( .A1(n620), .A2(wmem_dut_read_data[5]), .ZN(n590) );
  NAND2_X1 U667 ( .A1(n595), .A2(wmem_dut_read_data[4]), .ZN(n598) );
  NAND2_X1 U668 ( .A1(n604), .A2(wmem_dut_read_data[0]), .ZN(n607) );
  NAND2_X1 U669 ( .A1(n609), .A2(wmem_dut_read_data[1]), .ZN(n612) );
endmodule

