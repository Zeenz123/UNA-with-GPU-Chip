/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Comparator                                                   **
 **                                                                          **
 *****************************************************************************/

module Comparator( aEqualsB,
                   aGreaterThanB,
                   aLessThanB,
                   dataA,
                   dataB );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter nrOfBits = 1;
   parameter twosComplement = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [nrOfBits-1:0] dataA;
   input [nrOfBits-1:0] dataB;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output aEqualsB;
   output aGreaterThanB;
   output aLessThanB;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_signedGreater;
   wire s_signedLess;
   wire s_unsignedGreater;
   wire s_unsignedLess;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   assign s_signedLess      = ($signed(dataA) < $signed(dataB));
   assign s_unsignedLess    = (dataA < dataB);
   assign s_signedGreater   = ($signed(dataA) > $signed(dataB));
   assign s_unsignedGreater = (dataA > dataB);

   assign aEqualsB      = (dataA == dataB);
   assign aGreaterThanB = (twosComplement==1) ? s_signedGreater : s_unsignedGreater;
   assign aLessThanB    = (twosComplement==1) ? s_signedLess : s_unsignedLess;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ADDSUB                                                       **
 **                                                                          **
 *****************************************************************************/

module ADDSUB( A,
               B,
               CIN,
               COUT,
               INVERTB,
               SUM );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] A;
   input [7:0] B;
   input       CIN;
   input       INVERTB;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       COUT;
   output [7:0] SUM;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus41;
   wire [7:0] s_logisimBus44;
   wire [7:0] s_logisimBus8;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus41[7:0] = A;
   assign s_logisimBus44[7:0] = B;
   assign s_logisimNet14      = INVERTB;
   assign s_logisimNet29      = CIN;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign COUT = s_logisimNet30;
   assign SUM  = s_logisimBus8[7:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimBus44[0]),
               .input2(s_logisimNet14),
               .result(s_logisimNet37));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimBus44[1]),
               .input2(s_logisimNet14),
               .result(s_logisimNet20));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimBus44[2]),
               .input2(s_logisimNet14),
               .result(s_logisimNet38));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimBus44[3]),
               .input2(s_logisimNet14),
               .result(s_logisimNet23));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimBus44[4]),
               .input2(s_logisimNet14),
               .result(s_logisimNet7));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimBus44[5]),
               .input2(s_logisimNet14),
               .result(s_logisimNet27));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimBus44[6]),
               .input2(s_logisimNet14),
               .result(s_logisimNet39));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimBus44[7]),
               .input2(s_logisimNet14),
               .result(s_logisimNet32));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   FA   FA_1 (.A(s_logisimBus41[0]),
              .B(s_logisimNet37),
              .C(s_logisimNet29),
              .COUT(s_logisimNet0),
              .SUM(s_logisimBus8[0]));

   FA   FA_2 (.A(s_logisimBus41[1]),
              .B(s_logisimNet20),
              .C(s_logisimNet0),
              .COUT(s_logisimNet1),
              .SUM(s_logisimBus8[1]));

   FA   FA_3 (.A(s_logisimBus41[2]),
              .B(s_logisimNet38),
              .C(s_logisimNet1),
              .COUT(s_logisimNet2),
              .SUM(s_logisimBus8[2]));

   FA   FA_4 (.A(s_logisimBus41[3]),
              .B(s_logisimNet23),
              .C(s_logisimNet2),
              .COUT(s_logisimNet3),
              .SUM(s_logisimBus8[3]));

   FA   FA_5 (.A(s_logisimBus41[4]),
              .B(s_logisimNet7),
              .C(s_logisimNet3),
              .COUT(s_logisimNet4),
              .SUM(s_logisimBus8[4]));

   FA   FA_6 (.A(s_logisimBus41[5]),
              .B(s_logisimNet27),
              .C(s_logisimNet4),
              .COUT(s_logisimNet5),
              .SUM(s_logisimBus8[5]));

   FA   FA_7 (.A(s_logisimBus41[6]),
              .B(s_logisimNet39),
              .C(s_logisimNet5),
              .COUT(s_logisimNet6),
              .SUM(s_logisimBus8[6]));

   FA   FA_8 (.A(s_logisimBus41[7]),
              .B(s_logisimNet32),
              .C(s_logisimNet6),
              .COUT(s_logisimNet30),
              .SUM(s_logisimBus8[7]));

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ALU                                                          **
 **                                                                          **
 *****************************************************************************/

module ALU( ALUOUT,
            CLK,
            CNTRL,
            DATAIN,
            FLAGS,
            RST,
            SVACC,
            SVFLAGS );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input [7:0] CNTRL;
   input [7:0] DATAIN;
   input       RST;
   input       SVACC;
   input       SVFLAGS;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] ALUOUT;
   output [7:0] FLAGS;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus13;
   wire [7:0] s_logisimBus14;
   wire [7:0] s_logisimBus20;
   wire [7:0] s_logisimBus22;
   wire [7:0] s_logisimBus25;
   wire [7:0] s_logisimBus26;
   wire [7:0] s_logisimBus28;
   wire [2:0] s_logisimBus42;
   wire [7:0] s_logisimBus44;
   wire [7:0] s_logisimBus46;
   wire [7:0] s_logisimBus50;
   wire [1:0] s_logisimBus51;
   wire [7:0] s_logisimBus59;
   wire [7:0] s_logisimBus61;
   wire [7:0] s_logisimBus63;
   wire [7:0] s_logisimBus68;
   wire [7:0] s_logisimBus80;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet21;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet27;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet43;
   wire       s_logisimNet45;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet49;
   wire       s_logisimNet5;
   wire       s_logisimNet52;
   wire       s_logisimNet53;
   wire       s_logisimNet54;
   wire       s_logisimNet55;
   wire       s_logisimNet56;
   wire       s_logisimNet57;
   wire       s_logisimNet58;
   wire       s_logisimNet6;
   wire       s_logisimNet60;
   wire       s_logisimNet62;
   wire       s_logisimNet64;
   wire       s_logisimNet65;
   wire       s_logisimNet66;
   wire       s_logisimNet67;
   wire       s_logisimNet69;
   wire       s_logisimNet7;
   wire       s_logisimNet70;
   wire       s_logisimNet71;
   wire       s_logisimNet72;
   wire       s_logisimNet73;
   wire       s_logisimNet74;
   wire       s_logisimNet75;
   wire       s_logisimNet76;
   wire       s_logisimNet77;
   wire       s_logisimNet78;
   wire       s_logisimNet79;
   wire       s_logisimNet8;
   wire       s_logisimNet81;
   wire       s_logisimNet82;
   wire       s_logisimNet83;
   wire       s_logisimNet84;
   wire       s_logisimNet85;
   wire       s_logisimNet86;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus42[0] = s_logisimNet5;
   assign s_logisimBus42[1] = s_logisimNet7;
   assign s_logisimBus42[2] = s_logisimNet9;
   assign s_logisimBus44[0] = s_logisimNet2;
   assign s_logisimBus44[1] = s_logisimNet72;
   assign s_logisimBus44[2] = s_logisimNet48;
   assign s_logisimBus44[3] = s_logisimNet82;
   assign s_logisimBus44[4] = s_logisimNet65;
   assign s_logisimBus44[5] = s_logisimNet36;
   assign s_logisimBus44[6] = s_logisimNet75;
   assign s_logisimBus44[7] = s_logisimNet56;
   assign s_logisimBus46[0] = s_logisimNet74;
   assign s_logisimBus46[1] = s_logisimNet55;
   assign s_logisimBus46[2] = s_logisimNet17;
   assign s_logisimBus46[3] = s_logisimNet71;
   assign s_logisimBus46[4] = s_logisimNet47;
   assign s_logisimBus46[5] = s_logisimNet81;
   assign s_logisimBus46[6] = s_logisimNet64;
   assign s_logisimBus46[7] = s_logisimNet2;
   assign s_logisimBus50[0] = s_logisimNet62;
   assign s_logisimBus50[1] = s_logisimNet18;
   assign s_logisimBus50[2] = s_logisimNet73;
   assign s_logisimBus50[3] = s_logisimNet49;
   assign s_logisimBus50[4] = s_logisimNet83;
   assign s_logisimBus50[5] = s_logisimNet66;
   assign s_logisimBus50[6] = s_logisimNet37;
   assign s_logisimBus50[7] = s_logisimNet76;
   assign s_logisimBus59[0] = s_logisimNet84;
   assign s_logisimBus59[1] = s_logisimNet67;
   assign s_logisimBus59[2] = s_logisimNet38;
   assign s_logisimBus59[3] = s_logisimNet77;
   assign s_logisimBus59[4] = s_logisimNet57;
   assign s_logisimBus59[5] = s_logisimNet16;
   assign s_logisimBus59[6] = s_logisimNet70;
   assign s_logisimBus59[7] = s_logisimNet53;
   assign s_logisimBus63[1] = s_logisimNet8;
   assign s_logisimNet16    = s_logisimBus20[6];
   assign s_logisimNet17    = s_logisimBus20[3];
   assign s_logisimNet18    = s_logisimBus20[0];
   assign s_logisimNet2     = s_logisimBus25[0];
   assign s_logisimNet36    = s_logisimBus20[4];
   assign s_logisimNet37    = s_logisimBus20[5];
   assign s_logisimNet38    = s_logisimBus20[3];
   assign s_logisimNet47    = s_logisimBus20[5];
   assign s_logisimNet48    = s_logisimBus20[1];
   assign s_logisimNet49    = s_logisimBus20[2];
   assign s_logisimNet5     = s_logisimBus61[5];
   assign s_logisimNet53    = s_logisimBus20[0];
   assign s_logisimNet55    = s_logisimBus20[2];
   assign s_logisimNet56    = s_logisimBus20[6];
   assign s_logisimNet57    = s_logisimBus20[5];
   assign s_logisimNet62    = s_logisimBus20[7];
   assign s_logisimNet64    = s_logisimBus20[7];
   assign s_logisimNet65    = s_logisimBus20[3];
   assign s_logisimNet66    = s_logisimBus20[4];
   assign s_logisimNet67    = s_logisimBus20[2];
   assign s_logisimNet7     = s_logisimBus61[6];
   assign s_logisimNet70    = s_logisimBus20[7];
   assign s_logisimNet71    = s_logisimBus20[4];
   assign s_logisimNet72    = s_logisimBus20[0];
   assign s_logisimNet73    = s_logisimBus20[1];
   assign s_logisimNet74    = s_logisimBus20[1];
   assign s_logisimNet75    = s_logisimBus20[5];
   assign s_logisimNet76    = s_logisimBus20[6];
   assign s_logisimNet77    = s_logisimBus20[4];
   assign s_logisimNet8     = s_logisimBus13[0];
   assign s_logisimNet81    = s_logisimBus20[6];
   assign s_logisimNet82    = s_logisimBus20[2];
   assign s_logisimNet83    = s_logisimBus20[3];
   assign s_logisimNet84    = s_logisimBus20[1];
   assign s_logisimNet9     = s_logisimBus61[7];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus20[7:0] = DATAIN;
   assign s_logisimBus61[7:0] = CNTRL;
   assign s_logisimNet11      = SVACC;
   assign s_logisimNet23      = SVFLAGS;
   assign s_logisimNet31      = CLK;
   assign s_logisimNet35      = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ALUOUT = s_logisimBus13[7:0];
   assign FLAGS  = s_logisimBus25[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimNet86  =  1'b0;


   // Ground
   assign  s_logisimNet85  =  1'b0;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimBus61[0]),
               .input2(s_logisimNet35),
               .result(s_logisimNet12));

   NOR_GATE_8_INPUTS #(.BubblesMask(8'h00))
      GATES_2 (.input1(s_logisimNet8),
               .input2(s_logisimBus13[1]),
               .input3(s_logisimBus13[2]),
               .input4(s_logisimBus13[3]),
               .input5(s_logisimBus13[4]),
               .input6(s_logisimBus13[5]),
               .input7(s_logisimBus13[6]),
               .input8(s_logisimBus13[7]),
               .result(s_logisimBus63[7]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimBus61[0]),
               .input2(s_logisimNet35),
               .result(s_logisimNet79));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet2),
               .input2(s_logisimBus61[1]),
               .result(s_logisimNet52));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet52),
               .input2(s_logisimBus61[2]),
               .result(s_logisimNet0));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet7),
               .input2(s_logisimNet9),
               .result(s_logisimBus51[1]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet5),
               .input2(s_logisimBus51[1]),
               .result(s_logisimBus51[0]));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(8))
      GATES_8 (.input1(s_logisimBus20[7:0]),
               .input2(s_logisimBus13[7:0]),
               .result(s_logisimBus14[7:0]));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(8))
      GATES_9 (.input1(s_logisimBus20[7:0]),
               .input2(s_logisimBus13[7:0]),
               .result(s_logisimBus26[7:0]));

   XOR_GATE_BUS_ONEHOT #(.BubblesMask(2'b00),
                         .NrOfBits(8))
      GATES_10 (.input1(s_logisimBus20[7:0]),
                .input2(s_logisimBus13[7:0]),
                .result(s_logisimBus22[7:0]));

   Multiplexer_bus_8 #(.nrOfBits(8))
      PLEXERS_11 (.enable(1'b1),
                  .muxIn_0(s_logisimBus80[7:0]),
                  .muxIn_1(s_logisimBus14[7:0]),
                  .muxIn_2(s_logisimBus26[7:0]),
                  .muxIn_3(s_logisimBus22[7:0]),
                  .muxIn_4(s_logisimBus50[7:0]),
                  .muxIn_5(s_logisimBus59[7:0]),
                  .muxIn_6(s_logisimBus46[7:0]),
                  .muxIn_7(s_logisimBus44[7:0]),
                  .muxOut(s_logisimBus28[7:0]),
                  .sel(s_logisimBus42[2:0]));

   Multiplexer_4   PLEXERS_12 (.enable(1'b1),
                               .muxIn_0(s_logisimNet24),
                               .muxIn_1(1'b0),
                               .muxIn_2(s_logisimBus20[0]),
                               .muxIn_3(s_logisimBus20[7]),
                               .muxOut(s_logisimNet40),
                               .sel(s_logisimBus51[1:0]));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_13 (.enable(1'b1),
                  .muxIn_0(s_logisimBus28[7:0]),
                  .muxIn_1(s_logisimBus20[7:0]),
                  .muxOut(s_logisimBus68[7:0]),
                  .sel(s_logisimBus61[4]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_14 (.aEqualsB(),
                .aGreaterThanB(s_logisimBus63[2]),
                .aLessThanB(s_logisimBus63[3]),
                .dataA(s_logisimBus20[7:0]),
                .dataB(s_logisimBus13[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_15 (.aEqualsB(s_logisimBus63[5]),
                .aGreaterThanB(s_logisimBus63[4]),
                .aLessThanB(s_logisimBus63[6]),
                .dataA(s_logisimBus20[7:0]),
                .dataB(s_logisimBus13[7:0]));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_16 (.clock(s_logisimNet11),
                 .d(s_logisimNet40),
                 .preset(s_logisimNet86),
                 .q(s_logisimBus63[0]),
                 .qBar(),
                 .reset(s_logisimNet85),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_17 (.clock(s_logisimNet31),
                 .clockEnable(s_logisimNet11),
                 .d(s_logisimBus68[7:0]),
                 .q(s_logisimBus13[7:0]),
                 .reset(s_logisimNet12),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_18 (.clock(s_logisimNet31),
                 .clockEnable(s_logisimNet23),
                 .d(s_logisimBus63[7:0]),
                 .q(s_logisimBus25[7:0]),
                 .reset(s_logisimNet79),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   ADDSUB   ADDSUB_1 (.A(s_logisimBus13[7:0]),
                      .B(s_logisimBus20[7:0]),
                      .CIN(s_logisimNet0),
                      .COUT(s_logisimNet24),
                      .INVERTB(s_logisimBus61[3]),
                      .SUM(s_logisimBus80[7:0]));

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : CPU                                                          **
 **                                                                          **
 *****************************************************************************/

module CPU( BIDIRIN,
            BIDIROUT,
            BUTTON,
            CLK,
            EXTERNALCNTRL,
            RST );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] BIDIRIN;
   input       BUTTON;
   input       CLK;
   input       RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] BIDIROUT;
   output [3:0] EXTERNALCNTRL;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0]  s_logisimBus1;
   wire [7:0]  s_logisimBus11;
   wire [15:0] s_logisimBus12;
   wire [2:0]  s_logisimBus15;
   wire [7:0]  s_logisimBus16;
   wire [3:0]  s_logisimBus17;
   wire [7:0]  s_logisimBus19;
   wire [7:0]  s_logisimBus2;
   wire [7:0]  s_logisimBus20;
   wire [7:0]  s_logisimBus22;
   wire [3:0]  s_logisimBus4;
   wire [7:0]  s_logisimBus6;
   wire        s_logisimNet0;
   wire        s_logisimNet10;
   wire        s_logisimNet13;
   wire        s_logisimNet14;
   wire        s_logisimNet18;
   wire        s_logisimNet21;
   wire        s_logisimNet23;
   wire        s_logisimNet3;
   wire        s_logisimNet5;
   wire        s_logisimNet7;
   wire        s_logisimNet8;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus2[7:0] = BIDIRIN;
   assign s_logisimNet10     = RST;
   assign s_logisimNet21     = BUTTON;
   assign s_logisimNet23     = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign BIDIROUT      = s_logisimBus11[7:0];
   assign EXTERNALCNTRL = s_logisimBus4[3:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_8 #(.nrOfBits(8))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus16[7:0]),
                 .muxIn_1(s_logisimBus1[7:0]),
                 .muxIn_2(s_logisimBus2[7:0]),
                 .muxIn_3(s_logisimBus2[7:0]),
                 .muxIn_4(s_logisimBus2[7:0]),
                 .muxIn_5(s_logisimBus2[7:0]),
                 .muxIn_6(s_logisimBus22[7:0]),
                 .muxIn_7(s_logisimBus20[7:0]),
                 .muxOut(s_logisimBus19[7:0]),
                 .sel(s_logisimBus15[2:0]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   DLY   DLY_1 (.ADDRESS(s_logisimBus12[15:0]),
                .CLK(s_logisimNet23),
                .ENCLK(s_logisimNet3),
                .RST(s_logisimNet10),
                .SET(s_logisimNet0));

   PC   PC_1 (.ADDRESS(s_logisimBus12[15:0]),
              .CLK(s_logisimNet3),
              .CNTRL(s_logisimBus1[7:0]),
              .COUT(s_logisimNet8),
              .ENPC(s_logisimNet5),
              .JMPPC(s_logisimNet18),
              .LOWADDRESS(s_logisimBus22[7:0]),
              .RST(s_logisimNet10),
              .SUB(s_logisimNet14),
              .UPADDRESS(s_logisimBus20[7:0]));

   CU   CU_1 (.ALU(s_logisimNet13),
              .ALUSVFLAG(s_logisimNet9),
              .BUTTONIN(s_logisimNet21),
              .CARRY(s_logisimNet8),
              .CLK(s_logisimNet3),
              .DATAIN(s_logisimBus2[7:0]),
              .DELAY(s_logisimNet0),
              .EXTERNALCNTRL(s_logisimBus4[3:0]),
              .FLAGS(s_logisimBus6[7:0]),
              .JMP(s_logisimNet18),
              .MUX(s_logisimBus15[2:0]),
              .OPERAND(s_logisimBus1[7:0]),
              .PC(s_logisimNet5),
              .REGADD(s_logisimBus17[3:0]),
              .RST(s_logisimNet10),
              .SUBROUTE(s_logisimNet14),
              .SVREG(s_logisimNet7));

   INTERNALREG   INTERNALREG_1 (.ADDRESS(s_logisimBus17[3:0]),
                                .CLK(s_logisimNet3),
                                .DATAIN(s_logisimBus19[7:0]),
                                .DATAOUT(s_logisimBus11[7:0]),
                                .FULLADDRESS(s_logisimBus12[15:0]),
                                .RST(s_logisimNet10),
                                .SV(s_logisimNet7));

   ALU   ALU_1 (.ALUOUT(s_logisimBus16[7:0]),
                .CLK(s_logisimNet3),
                .CNTRL(s_logisimBus1[7:0]),
                .DATAIN(s_logisimBus11[7:0]),
                .FLAGS(s_logisimBus6[7:0]),
                .RST(s_logisimNet10),
                .SVACC(s_logisimNet13),
                .SVFLAGS(s_logisimNet9));

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : CU                                                           **
 **                                                                          **
 *****************************************************************************/

module CU( ALU,
           ALUSVFLAG,
           BUTTONIN,
           CARRY,
           CLK,
           DATAIN,
           DELAY,
           EXTERNALCNTRL,
           FLAGS,
           JMP,
           MUX,
           OPERAND,
           PC,
           REGADD,
           RST,
           SUBROUTE,
           SVREG );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       BUTTONIN;
   input       CARRY;
   input       CLK;
   input [7:0] DATAIN;
   input [7:0] FLAGS;
   input       RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       ALU;
   output       ALUSVFLAG;
   output       DELAY;
   output [3:0] EXTERNALCNTRL;
   output       JMP;
   output [2:0] MUX;
   output [7:0] OPERAND;
   output       PC;
   output [3:0] REGADD;
   output       SUBROUTE;
   output       SVREG;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus15;
   wire [7:0] s_logisimBus26;
   wire [2:0] s_logisimBus28;
   wire [7:0] s_logisimBus31;
   wire [3:0] s_logisimBus33;
   wire [2:0] s_logisimBus34;
   wire [7:0] s_logisimBus35;
   wire [3:0] s_logisimBus4;
   wire [2:0] s_logisimBus44;
   wire [7:0] s_logisimBus49;
   wire [7:0] s_logisimBus64;
   wire [3:0] s_logisimBus65;
   wire [2:0] s_logisimBus7;
   wire [3:0] s_logisimBus71;
   wire [7:0] s_logisimBus75;
   wire [3:0] s_logisimBus77;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet27;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet32;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet51;
   wire       s_logisimNet52;
   wire       s_logisimNet53;
   wire       s_logisimNet54;
   wire       s_logisimNet55;
   wire       s_logisimNet56;
   wire       s_logisimNet59;
   wire       s_logisimNet6;
   wire       s_logisimNet60;
   wire       s_logisimNet61;
   wire       s_logisimNet62;
   wire       s_logisimNet63;
   wire       s_logisimNet66;
   wire       s_logisimNet67;
   wire       s_logisimNet68;
   wire       s_logisimNet69;
   wire       s_logisimNet70;
   wire       s_logisimNet72;
   wire       s_logisimNet73;
   wire       s_logisimNet74;
   wire       s_logisimNet76;
   wire       s_logisimNet78;
   wire       s_logisimNet79;
   wire       s_logisimNet8;
   wire       s_logisimNet80;
   wire       s_logisimNet81;
   wire       s_logisimNet82;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus28[0] = s_logisimNet25;
   assign s_logisimBus28[1] = s_logisimNet25;
   assign s_logisimBus28[2] = s_logisimNet25;
   assign s_logisimBus71[0] = s_logisimNet29;
   assign s_logisimBus71[1] = s_logisimNet29;
   assign s_logisimBus71[2] = s_logisimNet29;
   assign s_logisimBus71[3] = s_logisimNet29;
   assign s_logisimBus75[0] = s_logisimNet37;
   assign s_logisimBus75[1] = s_logisimNet37;
   assign s_logisimBus75[2] = s_logisimNet37;
   assign s_logisimBus75[3] = s_logisimNet37;
   assign s_logisimBus75[4] = s_logisimNet37;
   assign s_logisimBus75[5] = s_logisimNet37;
   assign s_logisimBus75[6] = s_logisimNet37;
   assign s_logisimBus75[7] = s_logisimNet37;
   assign s_logisimBus77[0] = s_logisimNet18;
   assign s_logisimBus77[1] = s_logisimNet18;
   assign s_logisimBus77[2] = s_logisimNet18;
   assign s_logisimBus77[3] = s_logisimNet18;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus26[7:0] = FLAGS;
   assign s_logisimBus35[7:0] = DATAIN;
   assign s_logisimNet10      = CLK;
   assign s_logisimNet19      = RST;
   assign s_logisimNet42      = BUTTONIN;
   assign s_logisimNet60      = CARRY;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ALU           = s_logisimNet16;
   assign ALUSVFLAG     = s_logisimNet62;
   assign DELAY         = s_logisimNet20;
   assign EXTERNALCNTRL = s_logisimBus33[3:0];
   assign JMP           = s_logisimNet36;
   assign MUX           = s_logisimBus7[2:0];
   assign OPERAND       = s_logisimBus15[7:0];
   assign PC            = s_logisimNet72;
   assign REGADD        = s_logisimBus65[3:0];
   assign SUBROUTE      = s_logisimNet70;
   assign SVREG         = s_logisimNet21;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Power
   assign  s_logisimNet79  =  1'b1;


   // Power
   assign  s_logisimNet80  =  1'b1;


   // Constant
   assign  s_logisimBus34[2:0]  =  3'b110;


   // Power
   assign  s_logisimNet82  =  1'b1;


   // Power
   assign  s_logisimNet81  =  1'b1;


   // NOT Gate
   assign s_logisimNet53 = ~s_logisimBus31[7];

   // NOT Gate
   assign s_logisimNet25 = ~s_logisimBus33[3];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet53),
               .input2(s_logisimNet39),
               .result(s_logisimNet40));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(8))
      GATES_2 (.input1(s_logisimBus15[7:0]),
               .input2(s_logisimBus26[7:0]),
               .result(s_logisimBus49[7:0]));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(4))
      GATES_3 (.input1(s_logisimBus31[3:0]),
               .input2(s_logisimBus71[3:0]),
               .result(s_logisimBus4[3:0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet39),
               .input2(s_logisimNet17),
               .result(s_logisimNet61));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet32),
               .input2(s_logisimNet11),
               .result(s_logisimNet59));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(4))
      GATES_6 (.input1(s_logisimBus4[3:0]),
               .input2(s_logisimBus77[3:0]),
               .result(s_logisimBus65[3:0]));

   OR_GATE_8_INPUTS #(.BubblesMask(8'h00))
      GATES_7 (.input1(s_logisimBus49[0]),
               .input2(s_logisimBus49[1]),
               .input3(s_logisimBus49[2]),
               .input4(s_logisimBus49[3]),
               .input5(s_logisimBus49[4]),
               .input6(s_logisimBus49[5]),
               .input7(s_logisimBus49[6]),
               .input8(s_logisimBus49[7]),
               .result(s_logisimNet48));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet42),
               .input2(s_logisimBus4[1]),
               .result(s_logisimNet51));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_9 (.input1(s_logisimNet51),
               .input2(s_logisimBus4[0]),
               .input3(s_logisimNet48),
               .result(s_logisimNet8));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet5),
                .input2(s_logisimNet13),
                .result(s_logisimNet72));

   OR_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_11 (.input1(s_logisimNet2),
                .input2(s_logisimNet43),
                .input3(s_logisimNet50),
                .input4(s_logisimNet23),
                .input5(s_logisimNet12),
                .result(s_logisimNet21));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet18),
                .input2(s_logisimNet8),
                .result(s_logisimNet36));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet36),
                .input2(s_logisimNet9),
                .result(s_logisimNet52));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(8))
      GATES_14 (.input1(s_logisimBus75[7:0]),
                .input2(s_logisimBus15[7:0]),
                .result(s_logisimBus64[7:0]));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(3))
      GATES_15 (.input1(s_logisimBus33[2:0]),
                .input2(s_logisimBus28[2:0]),
                .result(s_logisimBus7[2:0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet19),
                .input2(s_logisimNet27),
                .result(s_logisimNet67));

   Decoder_2   PLEXERS_17 (.decoderOut_0(s_logisimNet55),
                           .decoderOut_1(s_logisimNet41),
                           .enable(s_logisimNet29),
                           .sel(s_logisimBus31[7]));

   Decoder_8   PLEXERS_18 (.decoderOut_0(s_logisimNet32),
                           .decoderOut_1(s_logisimNet5),
                           .decoderOut_2(s_logisimNet39),
                           .decoderOut_3(s_logisimNet11),
                           .decoderOut_4(s_logisimNet13),
                           .decoderOut_5(s_logisimNet17),
                           .decoderOut_6(s_logisimNet29),
                           .decoderOut_7(s_logisimNet27),
                           .enable(1'b1),
                           .sel(s_logisimBus44[2:0]));

   Decoder_8   PLEXERS_19 (.decoderOut_0(s_logisimNet43),
                           .decoderOut_1(s_logisimNet16),
                           .decoderOut_2(s_logisimNet18),
                           .decoderOut_3(s_logisimNet70),
                           .decoderOut_4(s_logisimNet37),
                           .decoderOut_5(),
                           .decoderOut_6(),
                           .decoderOut_7(),
                           .enable(s_logisimNet41),
                           .sel(s_logisimBus31[6:4]));

   Decoder_8   PLEXERS_20 (.decoderOut_0(),
                           .decoderOut_1(s_logisimNet50),
                           .decoderOut_2(s_logisimNet23),
                           .decoderOut_3(s_logisimNet2),
                           .decoderOut_4(s_logisimNet12),
                           .decoderOut_5(s_logisimNet20),
                           .decoderOut_6(s_logisimNet62),
                           .decoderOut_7(),
                           .enable(s_logisimNet55),
                           .sel(s_logisimBus31[6:4]));

   Demultiplexer_2   PLEXERS_21 (.demuxIn(s_logisimNet61),
                                 .demuxOut_0(s_logisimNet1),
                                 .demuxOut_1(s_logisimNet9),
                                 .enable(1'b1),
                                 .sel(s_logisimNet60));

   Priority_Encoder #(.nrOfInputBits(16),
                      .nrOfSelectBits(4))
      PLEXERS_22 (.address(s_logisimBus33[3:0]),
                  .enable(s_logisimNet80),
                  .enableOut(),
                  .groupSelect(),
                  .inputVector({s_logisimBus64[7],
                                s_logisimBus64[6],
                                s_logisimBus64[5],
                                s_logisimBus64[4],
                                s_logisimBus64[3],
                                s_logisimBus64[2],
                                s_logisimBus64[1],
                                s_logisimBus64[0],
                                s_logisimNet52,
                                s_logisimNet1,
                                s_logisimNet59,
                                s_logisimNet12,
                                s_logisimNet2,
                                s_logisimNet23,
                                s_logisimBus31[7],
                                s_logisimNet79}));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      OPCODE (.clock(s_logisimNet10),
              .clockEnable(s_logisimNet32),
              .d(s_logisimBus35[7:0]),
              .q(s_logisimBus31[7:0]),
              .reset(s_logisimNet19),
              .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      OPERAND1 (.clock(s_logisimNet10),
                .clockEnable(s_logisimNet11),
                .d(s_logisimBus35[7:0]),
                .q(s_logisimBus15[7:0]),
                .reset(s_logisimNet19),
                .tick(1'b1));

   LogisimCounter #(.invertClock(0),
                    .maxVal(3'b111),
                    .mode(0),
                    .width(3))
      MEMORY_25 (.clear(s_logisimNet67),
                 .clock(s_logisimNet10),
                 .compareOut(),
                 .countValue(s_logisimBus44[2:0]),
                 .enable(s_logisimNet82),
                 .load(s_logisimNet40),
                 .loadData(s_logisimBus34[2:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet81));


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : DLY                                                          **
 **                                                                          **
 *****************************************************************************/

module DLY( ADDRESS,
            CLK,
            ENCLK,
            RST,
            SET );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [15:0] ADDRESS;
   input        CLK;
   input        RST;
   input        SET;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output ENCLK;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [24:0] s_logisimBus5;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet2;
   wire        s_logisimNet3;
   wire        s_logisimNet4;
   wire        s_logisimNet6;
   wire        s_logisimNet7;
   wire        s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus5[24:9] = ADDRESS;
   assign s_logisimNet1       = SET;
   assign s_logisimNet4       = CLK;
   assign s_logisimNet6       = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ENCLK = s_logisimNet2;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimBus5[8:0]  =  {1'b0, 8'h00};


   // Ground
   assign  s_logisimNet10  =  1'b0;


   // NOT Gate
   assign s_logisimNet8 = ~s_logisimNet4;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet3),
               .input2(s_logisimNet1),
               .result(s_logisimNet7));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet3),
               .input2(s_logisimNet4),
               .result(s_logisimNet2));

   LogisimCounter #(.invertClock(0),
                    .maxVal({1'b1, 24'hFFFFFF}),
                    .mode(0),
                    .width(25))
      MEMORY_3 (.clear(s_logisimNet6),
                .clock(s_logisimNet8),
                .compareOut(s_logisimNet3),
                .countValue(),
                .enable(s_logisimNet1),
                .load(s_logisimNet7),
                .loadData(s_logisimBus5[24:0]),
                .tick(1'b1),
                .upNotDown(s_logisimNet10));


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : FA                                                           **
 **                                                                          **
 *****************************************************************************/

module FA( A,
           B,
           C,
           COUT,
           SUM );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input A;
   input B;
   input C;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output COUT;
   output SUM;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet2;
   wire s_logisimNet3;
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;
   wire s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet1 = B;
   assign s_logisimNet2 = C;
   assign s_logisimNet6 = A;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign COUT = s_logisimNet5;
   assign SUM  = s_logisimNet7;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet1),
               .input2(s_logisimNet6),
               .result(s_logisimNet4));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet6),
               .input2(s_logisimNet1),
               .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet2),
               .input2(s_logisimNet3),
               .result(s_logisimNet0));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet2),
               .input2(s_logisimNet3),
               .result(s_logisimNet7));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet0),
               .input2(s_logisimNet4),
               .result(s_logisimNet5));


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : INTERNALREG                                                  **
 **                                                                          **
 *****************************************************************************/

module INTERNALREG( ADDRESS,
                    CLK,
                    DATAIN,
                    DATAOUT,
                    FULLADDRESS,
                    RST,
                    SV );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0] ADDRESS;
   input       CLK;
   input [7:0] DATAIN;
   input       RST;
   input       SV;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0]  DATAOUT;
   output [15:0] FULLADDRESS;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0]  s_logisimBus0;
   wire [7:0]  s_logisimBus1;
   wire [7:0]  s_logisimBus11;
   wire [7:0]  s_logisimBus14;
   wire [7:0]  s_logisimBus15;
   wire [7:0]  s_logisimBus16;
   wire [7:0]  s_logisimBus18;
   wire [7:0]  s_logisimBus2;
   wire [7:0]  s_logisimBus25;
   wire [7:0]  s_logisimBus27;
   wire [7:0]  s_logisimBus28;
   wire [7:0]  s_logisimBus29;
   wire [7:0]  s_logisimBus30;
   wire [7:0]  s_logisimBus31;
   wire [7:0]  s_logisimBus32;
   wire [3:0]  s_logisimBus33;
   wire [15:0] s_logisimBus36;
   wire        s_logisimNet10;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet17;
   wire        s_logisimNet19;
   wire        s_logisimNet20;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet24;
   wire        s_logisimNet26;
   wire        s_logisimNet34;
   wire        s_logisimNet35;
   wire        s_logisimNet4;
   wire        s_logisimNet6;
   wire        s_logisimNet7;
   wire        s_logisimNet8;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus0[7:0]  = DATAIN;
   assign s_logisimBus33[3:0] = ADDRESS;
   assign s_logisimNet10      = RST;
   assign s_logisimNet6       = SV;
   assign s_logisimNet9       = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign DATAOUT     = s_logisimBus1[7:0];
   assign FULLADDRESS = s_logisimBus36[15:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Decoder_16   PLEXERS_1 (.decoderOut_0(),
                           .decoderOut_1(s_logisimNet23),
                           .decoderOut_10(s_logisimNet7),
                           .decoderOut_11(s_logisimNet35),
                           .decoderOut_12(s_logisimNet24),
                           .decoderOut_13(s_logisimNet13),
                           .decoderOut_14(s_logisimNet21),
                           .decoderOut_15(s_logisimNet8),
                           .decoderOut_2(s_logisimNet12),
                           .decoderOut_3(s_logisimNet22),
                           .decoderOut_4(s_logisimNet17),
                           .decoderOut_5(s_logisimNet34),
                           .decoderOut_6(s_logisimNet4),
                           .decoderOut_7(s_logisimNet20),
                           .decoderOut_8(s_logisimNet26),
                           .decoderOut_9(s_logisimNet19),
                           .enable(s_logisimNet6),
                           .sel(s_logisimBus33[3:0]));

   Multiplexer_bus_16 #(.nrOfBits(8))
      PLEXERS_2 (.enable(1'b1),
                 .muxIn_0(s_logisimBus0[7:0]),
                 .muxIn_1(s_logisimBus32[7:0]),
                 .muxIn_10(s_logisimBus14[7:0]),
                 .muxIn_11(s_logisimBus16[7:0]),
                 .muxIn_12(s_logisimBus15[7:0]),
                 .muxIn_13(s_logisimBus18[7:0]),
                 .muxIn_14(s_logisimBus36[7:0]),
                 .muxIn_15(s_logisimBus36[15:8]),
                 .muxIn_2(s_logisimBus31[7:0]),
                 .muxIn_3(s_logisimBus30[7:0]),
                 .muxIn_4(s_logisimBus28[7:0]),
                 .muxIn_5(s_logisimBus27[7:0]),
                 .muxIn_6(s_logisimBus11[7:0]),
                 .muxIn_7(s_logisimBus2[7:0]),
                 .muxIn_8(s_logisimBus29[7:0]),
                 .muxIn_9(s_logisimBus25[7:0]),
                 .muxOut(s_logisimBus1[7:0]),
                 .sel(s_logisimBus33[3:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_3 (.clock(s_logisimNet9),
                .clockEnable(s_logisimNet20),
                .d(s_logisimBus0[7:0]),
                .q(s_logisimBus2[7:0]),
                .reset(s_logisimNet10),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_4 (.clock(s_logisimNet9),
                .clockEnable(s_logisimNet26),
                .d(s_logisimBus0[7:0]),
                .q(s_logisimBus29[7:0]),
                .reset(s_logisimNet10),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_5 (.clock(s_logisimNet9),
                .clockEnable(s_logisimNet19),
                .d(s_logisimBus0[7:0]),
                .q(s_logisimBus25[7:0]),
                .reset(s_logisimNet10),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_6 (.clock(s_logisimNet9),
                .clockEnable(s_logisimNet7),
                .d(s_logisimBus0[7:0]),
                .q(s_logisimBus14[7:0]),
                .reset(s_logisimNet10),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_7 (.clock(s_logisimNet9),
                .clockEnable(s_logisimNet35),
                .d(s_logisimBus0[7:0]),
                .q(s_logisimBus16[7:0]),
                .reset(s_logisimNet10),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_8 (.clock(s_logisimNet9),
                .clockEnable(s_logisimNet24),
                .d(s_logisimBus0[7:0]),
                .q(s_logisimBus15[7:0]),
                .reset(s_logisimNet10),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_9 (.clock(s_logisimNet9),
                .clockEnable(s_logisimNet13),
                .d(s_logisimBus0[7:0]),
                .q(s_logisimBus18[7:0]),
                .reset(s_logisimNet10),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_10 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet21),
                 .d(s_logisimBus0[7:0]),
                 .q(s_logisimBus36[7:0]),
                 .reset(s_logisimNet10),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_11 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet8),
                 .d(s_logisimBus0[7:0]),
                 .q(s_logisimBus36[15:8]),
                 .reset(s_logisimNet10),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_12 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet23),
                 .d(s_logisimBus0[7:0]),
                 .q(s_logisimBus32[7:0]),
                 .reset(s_logisimNet10),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_13 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet12),
                 .d(s_logisimBus0[7:0]),
                 .q(s_logisimBus31[7:0]),
                 .reset(s_logisimNet10),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_14 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet22),
                 .d(s_logisimBus0[7:0]),
                 .q(s_logisimBus30[7:0]),
                 .reset(s_logisimNet10),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_15 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet17),
                 .d(s_logisimBus0[7:0]),
                 .q(s_logisimBus28[7:0]),
                 .reset(s_logisimNet10),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_16 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet34),
                 .d(s_logisimBus0[7:0]),
                 .q(s_logisimBus27[7:0]),
                 .reset(s_logisimNet10),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_17 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet4),
                 .d(s_logisimBus0[7:0]),
                 .q(s_logisimBus11[7:0]),
                 .reset(s_logisimNet10),
                 .tick(1'b1));


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : PC                                                           **
 **                                                                          **
 *****************************************************************************/

module PC( ADDRESS,
           CLK,
           CNTRL,
           COUT,
           ENPC,
           JMPPC,
           LOWADDRESS,
           RST,
           SUB,
           UPADDRESS );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [15:0] ADDRESS;
   input        CLK;
   input [7:0]  CNTRL;
   input        ENPC;
   input        JMPPC;
   input        RST;
   input        SUB;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       COUT;
   output [7:0] LOWADDRESS;
   output [7:0] UPADDRESS;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [15:0] s_logisimBus13;
   wire [3:0]  s_logisimBus19;
   wire [3:0]  s_logisimBus20;
   wire [15:0] s_logisimBus24;
   wire [15:0] s_logisimBus25;
   wire [15:0] s_logisimBus6;
   wire [7:0]  s_logisimBus7;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet12;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet2;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet26;
   wire        s_logisimNet28;
   wire        s_logisimNet3;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus20[0] = s_logisimNet9;
   assign s_logisimBus20[1] = s_logisimNet9;
   assign s_logisimBus20[2] = s_logisimNet9;
   assign s_logisimBus20[3] = s_logisimNet9;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus24[15:0] = ADDRESS;
   assign s_logisimBus7[7:0]   = CNTRL;
   assign s_logisimNet0        = CLK;
   assign s_logisimNet14       = ENPC;
   assign s_logisimNet15       = RST;
   assign s_logisimNet17       = JMPPC;
   assign s_logisimNet9        = SUB;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign COUT       = s_logisimNet26;
   assign LOWADDRESS = s_logisimBus6[7:0];
   assign UPADDRESS  = s_logisimBus6[15:8];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Power
   assign  s_logisimNet28  =  1'b1;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   NOR_GATE_8_INPUTS #(.BubblesMask(8'h00))
      GATES_1 (.input1(s_logisimBus6[0]),
               .input2(s_logisimBus6[1]),
               .input3(s_logisimBus6[2]),
               .input4(s_logisimBus6[3]),
               .input5(s_logisimBus6[4]),
               .input6(s_logisimBus6[5]),
               .input7(s_logisimBus6[6]),
               .input8(s_logisimBus6[7]),
               .result(s_logisimNet26));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(4))
      GATES_2 (.input1(s_logisimBus7[3:0]),
               .input2(s_logisimBus20[3:0]),
               .result(s_logisimBus19[3:0]));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_3 (.input1(s_logisimNet16),
               .input2(s_logisimBus19[3]),
               .input3(s_logisimNet17),
               .result(s_logisimNet2));

   Multiplexer_bus_2 #(.nrOfBits(16))
      PLEXERS_4 (.enable(1'b1),
                 .muxIn_0(s_logisimBus24[15:0]),
                 .muxIn_1(s_logisimBus13[15:0]),
                 .muxOut(s_logisimBus25[15:0]),
                 .sel(s_logisimBus19[3]));

   LogisimCounter #(.invertClock(0),
                    .maxVal(16'hFFFF),
                    .mode(0),
                    .width(16))
      MEMORY_5 (.clear(s_logisimNet15),
                .clock(s_logisimNet0),
                .compareOut(),
                .countValue(s_logisimBus6[15:0]),
                .enable(s_logisimNet14),
                .load(s_logisimNet2),
                .loadData(s_logisimBus25[15:0]),
                .tick(1'b1),
                .upNotDown(s_logisimNet28));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   STACK   STACK_1 (.CLK(s_logisimNet0),
                    .CNTRL(s_logisimBus19[2:0]),
                    .DATAIN(s_logisimBus6[15:0]),
                    .DATAOUT(s_logisimBus13[15:0]),
                    .RST(s_logisimNet15),
                    .SV(s_logisimNet16));

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : STACK                                                        **
 **                                                                          **
 *****************************************************************************/

module STACK( CLK,
              CNTRL,
              DATAIN,
              DATAOUT,
              RST,
              SV );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input        CLK;
   input [2:0]  CNTRL;
   input [15:0] DATAIN;
   input        RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [15:0] DATAOUT;
   output        SV;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [2:0]  s_logisimBus1;
   wire [15:0] s_logisimBus13;
   wire [15:0] s_logisimBus14;
   wire [15:0] s_logisimBus15;
   wire [15:0] s_logisimBus16;
   wire [15:0] s_logisimBus17;
   wire [15:0] s_logisimBus18;
   wire [2:0]  s_logisimBus20;
   wire [15:0] s_logisimBus21;
   wire [15:0] s_logisimBus3;
   wire [15:0] s_logisimBus4;
   wire [15:0] s_logisimBus8;
   wire        s_logisimNet0;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet12;
   wire        s_logisimNet19;
   wire        s_logisimNet2;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet24;
   wire        s_logisimNet5;
   wire        s_logisimNet6;
   wire        s_logisimNet7;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus20[2:0] = CNTRL;
   assign s_logisimBus4[15:0] = DATAIN;
   assign s_logisimNet5       = RST;
   assign s_logisimNet7       = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign DATAOUT = s_logisimBus21[15:0];
   assign SV      = s_logisimBus20[0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_8 #(.nrOfBits(16))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus16[15:0]),
                 .muxIn_1(s_logisimBus13[15:0]),
                 .muxIn_2(s_logisimBus14[15:0]),
                 .muxIn_3(s_logisimBus17[15:0]),
                 .muxIn_4(s_logisimBus15[15:0]),
                 .muxIn_5(s_logisimBus3[15:0]),
                 .muxIn_6(s_logisimBus8[15:0]),
                 .muxIn_7(s_logisimBus18[15:0]),
                 .muxOut(s_logisimBus21[15:0]),
                 .sel(s_logisimBus1[2:0]));

   Decoder_8   PLEXERS_2 (.decoderOut_0(s_logisimNet24),
                          .decoderOut_1(s_logisimNet9),
                          .decoderOut_2(s_logisimNet2),
                          .decoderOut_3(s_logisimNet12),
                          .decoderOut_4(s_logisimNet23),
                          .decoderOut_5(s_logisimNet6),
                          .decoderOut_6(s_logisimNet19),
                          .decoderOut_7(s_logisimNet0),
                          .enable(s_logisimBus20[0]),
                          .sel(s_logisimBus1[2:0]));

   LogisimCounter #(.invertClock(0),
                    .maxVal(3'b111),
                    .mode(0),
                    .width(3))
      MEMORY_3 (.clear(s_logisimNet5),
                .clock(s_logisimNet7),
                .compareOut(),
                .countValue(s_logisimBus1[2:0]),
                .enable(s_logisimBus20[2]),
                .load(1'b0),
                .loadData(3'd0),
                .tick(1'b1),
                .upNotDown(s_logisimBus20[1]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_4 (.clock(s_logisimNet7),
                .clockEnable(s_logisimNet19),
                .d(s_logisimBus4[15:0]),
                .q(s_logisimBus8[15:0]),
                .reset(s_logisimNet5),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_5 (.clock(s_logisimNet7),
                .clockEnable(s_logisimNet0),
                .d(s_logisimBus4[15:0]),
                .q(s_logisimBus18[15:0]),
                .reset(s_logisimNet5),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_6 (.clock(s_logisimNet7),
                .clockEnable(s_logisimNet24),
                .d(s_logisimBus4[15:0]),
                .q(s_logisimBus16[15:0]),
                .reset(s_logisimNet5),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_7 (.clock(s_logisimNet7),
                .clockEnable(s_logisimNet9),
                .d(s_logisimBus4[15:0]),
                .q(s_logisimBus13[15:0]),
                .reset(s_logisimNet5),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_8 (.clock(s_logisimNet7),
                .clockEnable(s_logisimNet2),
                .d(s_logisimBus4[15:0]),
                .q(s_logisimBus14[15:0]),
                .reset(s_logisimNet5),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_9 (.clock(s_logisimNet7),
                .clockEnable(s_logisimNet12),
                .d(s_logisimBus4[15:0]),
                .q(s_logisimBus17[15:0]),
                .reset(s_logisimNet5),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_10 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet23),
                 .d(s_logisimBus4[15:0]),
                 .q(s_logisimBus15[15:0]),
                 .reset(s_logisimNet5),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_11 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet6),
                 .d(s_logisimBus4[15:0]),
                 .q(s_logisimBus3[15:0]),
                 .reset(s_logisimNet5),
                 .tick(1'b1));


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : AND_GATE                                                     **
 **                                                                          **
 *****************************************************************************/

module AND_GATE( input1,
                 input2,
                 result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [1:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1&
                   s_realInput2;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : AND_GATE_BUS                                                 **
 **                                                                          **
 *****************************************************************************/

module AND_GATE_BUS( input1,
                     input2,
                     result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter NrOfBits = 1;
   parameter [1:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [NrOfBits-1:0] input1;
   input [NrOfBits-1:0] input2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [NrOfBits-1:0] result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [NrOfBits-1:0] s_realInput1;
   wire [NrOfBits-1:0] s_realInput2;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1&
                   s_realInput2;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : NOR_GATE_8_INPUTS                                            **
 **                                                                          **
 *****************************************************************************/

module NOR_GATE_8_INPUTS( input1,
                          input2,
                          input3,
                          input4,
                          input5,
                          input6,
                          input7,
                          input8,
                          result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [7:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;
   input input3;
   input input4;
   input input5;
   input input6;
   input input7;
   input input8;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;
   wire s_realInput5;
   wire s_realInput6;
   wire s_realInput7;
   wire s_realInput8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;
   assign  s_realInput5 = (BubblesMask[4] == 1'b0) ? input5 : ~input5;
   assign  s_realInput6 = (BubblesMask[5] == 1'b0) ? input6 : ~input6;
   assign  s_realInput7 = (BubblesMask[6] == 1'b0) ? input7 : ~input7;
   assign  s_realInput8 = (BubblesMask[7] == 1'b0) ? input8 : ~input8;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = ~(s_realInput1|
                     s_realInput2|
                     s_realInput3|
                     s_realInput4|
                     s_realInput5|
                     s_realInput6|
                     s_realInput7|
                     s_realInput8);

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : OR_GATE                                                      **
 **                                                                          **
 *****************************************************************************/

module OR_GATE( input1,
                input2,
                result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [1:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : OR_GATE_3_INPUTS                                             **
 **                                                                          **
 *****************************************************************************/

module OR_GATE_3_INPUTS( input1,
                         input2,
                         input3,
                         result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [2:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;
   input input3;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;
   wire s_realInput3;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2|
                   s_realInput3;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : OR_GATE_5_INPUTS                                             **
 **                                                                          **
 *****************************************************************************/

module OR_GATE_5_INPUTS( input1,
                         input2,
                         input3,
                         input4,
                         input5,
                         result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [4:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;
   input input3;
   input input4;
   input input5;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;
   wire s_realInput5;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;
   assign  s_realInput5 = (BubblesMask[4] == 1'b0) ? input5 : ~input5;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2|
                   s_realInput3|
                   s_realInput4|
                   s_realInput5;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : OR_GATE_8_INPUTS                                             **
 **                                                                          **
 *****************************************************************************/

module OR_GATE_8_INPUTS( input1,
                         input2,
                         input3,
                         input4,
                         input5,
                         input6,
                         input7,
                         input8,
                         result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [7:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;
   input input3;
   input input4;
   input input5;
   input input6;
   input input7;
   input input8;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;
   wire s_realInput5;
   wire s_realInput6;
   wire s_realInput7;
   wire s_realInput8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;
   assign  s_realInput5 = (BubblesMask[4] == 1'b0) ? input5 : ~input5;
   assign  s_realInput6 = (BubblesMask[5] == 1'b0) ? input6 : ~input6;
   assign  s_realInput7 = (BubblesMask[6] == 1'b0) ? input7 : ~input7;
   assign  s_realInput8 = (BubblesMask[7] == 1'b0) ? input8 : ~input8;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2|
                   s_realInput3|
                   s_realInput4|
                   s_realInput5|
                   s_realInput6|
                   s_realInput7|
                   s_realInput8;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : OR_GATE_BUS                                                  **
 **                                                                          **
 *****************************************************************************/

module OR_GATE_BUS( input1,
                    input2,
                    result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter NrOfBits = 1;
   parameter [1:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [NrOfBits-1:0] input1;
   input [NrOfBits-1:0] input2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [NrOfBits-1:0] result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [NrOfBits-1:0] s_realInput1;
   wire [NrOfBits-1:0] s_realInput2;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : XOR_GATE_BUS_ONEHOT                                          **
 **                                                                          **
 *****************************************************************************/

module XOR_GATE_BUS_ONEHOT( input1,
                            input2,
                            result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter NrOfBits = 1;
   parameter [1:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [NrOfBits-1:0] input1;
   input [NrOfBits-1:0] input2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [NrOfBits-1:0] result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [NrOfBits-1:0] s_realInput1;
   wire [NrOfBits-1:0] s_realInput2;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   genvar n;
   generate
      for (n = 0 ; n < NrOfBits ; n = n + 1)
         begin: bit_gen
         assign result[n] = (s_realInput1[n]&~(s_realInput2[n]))|
                            (~(s_realInput1[n])&s_realInput2[n]);
         end
   endgenerate


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : XOR_GATE_ONEHOT                                              **
 **                                                                          **
 *****************************************************************************/

module XOR_GATE_ONEHOT( input1,
                        input2,
                        result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [1:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput2;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = (s_realInput1&~(s_realInput2))|
                   (~(s_realInput1)&s_realInput2);


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : D_FLIPFLOP                                                   **
 **                                                                          **
 *****************************************************************************/

module D_FLIPFLOP( clock,
                   d,
                   preset,
                   q,
                   qBar,
                   reset,
                   tick );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter invertClockEnable = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input clock;
   input d;
   input preset;
   input reset;
   input tick;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output q;
   output qBar;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_clock;
   wire s_nextState;

   /*******************************************************************************
   ** The registers are defined here                                             **
   *******************************************************************************/
   reg s_currentState;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the output signals are defined                                        **
   *******************************************************************************/
   assign q        = s_currentState;
   assign qBar     = ~(s_currentState);
   assign s_clock  = (invertClockEnable == 0) ? clock : ~clock;

   /*******************************************************************************
   ** Here the initial register value is defined; for simulation only            **
   *******************************************************************************/
   initial
   begin
      s_currentState = 0;
   end

   /*******************************************************************************
   ** Here the update logic is defined                                           **
   *******************************************************************************/
   assign s_nextState  =  d;

   /*******************************************************************************
   ** Here the actual state register is defined                                  **
   *******************************************************************************/
   always @(posedge s_clock)
   begin
      if (reset) s_currentState <= 1'b0;
      else if (preset) s_currentState <= 1'b1;
      else if (tick) s_currentState <= s_nextState;
   end

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : LogisimCounter                                               **
 **                                                                          **
 *****************************************************************************/

module LogisimCounter( clear,
                       clock,
                       compareOut,
                       countValue,
                       enable,
                       load,
                       loadData,
                       tick,
                       upNotDown );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [24:0] maxVal = 1;
   parameter invertClock = 1;
   parameter mode = 1;
   parameter width = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input             clear;
   input             clock;
   input             enable;
   input             load;
   input [width-1:0] loadData;
   input             tick;
   input             upNotDown;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output             compareOut;
   output [width-1:0] countValue;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_clock;
   wire s_realEnable;

   /*******************************************************************************
   ** The registers are defined here                                             **
   *******************************************************************************/
   reg             s_carry;
   reg [width-1:0] s_counterValue;
   reg [width-1:0] s_nextCounterValue;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Functionality of the counter:                                              **
   **   Load Count | mode                                                        **
   **                                                                            **
   ** -----------+-------------------                                            **
   **     0    0   | halt                                                        **
   **     0    1   | count                                                       **
   ** up (default)                                                               **
   **     1    0   | load                                                        **
   **     1    1   | count down                                                  **
   *******************************************************************************/

   assign compareOut = s_carry;
   assign countValue = s_counterValue;
   assign s_clock = (invertClock == 0) ? clock : ~clock;

   always@(*)
   begin
   if (upNotDown)
      s_carry = (s_counterValue == maxVal) ? 1'b1 : 1'b0;
   else
      s_carry = (s_counterValue == 0) ? 1'b1 : 1'b0;
   end

   assign s_realEnable = ((~(load)&~(enable))|
                           ((mode==1)&s_carry&~(load))) ? 1'b0 : tick;

   always @(*)
   begin
      if ((load)|((mode==3)&s_carry))
         s_nextCounterValue = loadData;
      else if ((mode==0)&s_carry&upNotDown)
         s_nextCounterValue = 0;
      else if ((mode==0)&s_carry)
         s_nextCounterValue = maxVal;
      else if (upNotDown)
         s_nextCounterValue = s_counterValue + 1;
      else
         s_nextCounterValue = s_counterValue - 1;
   end

   always @(posedge s_clock)
   begin
      if (clear) s_counterValue <= 0;
      else if (s_realEnable) s_counterValue <= s_nextCounterValue;
   end

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : REGISTER_FLIP_FLOP                                           **
 **                                                                          **
 *****************************************************************************/

module REGISTER_FLIP_FLOP( clock,
                           clockEnable,
                           d,
                           q,
                           reset,
                           tick );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter invertClock = 1;
   parameter nrOfBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input                clock;
   input                clockEnable;
   input [nrOfBits-1:0] d;
   input                reset;
   input                tick;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfBits-1:0] q;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_clock;

   /*******************************************************************************
   ** The registers are defined here                                             **
   *******************************************************************************/
   reg [nrOfBits-1:0] s_currentState;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   assign q = s_currentState;
   assign s_clock = invertClock == 0 ? clock : ~clock;

   always @(posedge s_clock)
   begin
      if (reset) s_currentState <= 0;
      else if (clockEnable&tick) s_currentState <= d;
   end

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Decoder_16                                                   **
 **                                                                          **
 *****************************************************************************/

module Decoder_16( decoderOut_0,
                   decoderOut_1,
                   decoderOut_10,
                   decoderOut_11,
                   decoderOut_12,
                   decoderOut_13,
                   decoderOut_14,
                   decoderOut_15,
                   decoderOut_2,
                   decoderOut_3,
                   decoderOut_4,
                   decoderOut_5,
                   decoderOut_6,
                   decoderOut_7,
                   decoderOut_8,
                   decoderOut_9,
                   enable,
                   sel );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       enable;
   input [3:0] sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output decoderOut_0;
   output decoderOut_1;
   output decoderOut_10;
   output decoderOut_11;
   output decoderOut_12;
   output decoderOut_13;
   output decoderOut_14;
   output decoderOut_15;
   output decoderOut_2;
   output decoderOut_3;
   output decoderOut_4;
   output decoderOut_5;
   output decoderOut_6;
   output decoderOut_7;
   output decoderOut_8;
   output decoderOut_9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   assign decoderOut_0  = (enable&(sel == 4'h0)) ? 1'b1 : 1'b0;
   assign decoderOut_1  = (enable&(sel == 4'h1)) ? 1'b1 : 1'b0;
   assign decoderOut_2  = (enable&(sel == 4'h2)) ? 1'b1 : 1'b0;
   assign decoderOut_3  = (enable&(sel == 4'h3)) ? 1'b1 : 1'b0;
   assign decoderOut_4  = (enable&(sel == 4'h4)) ? 1'b1 : 1'b0;
   assign decoderOut_5  = (enable&(sel == 4'h5)) ? 1'b1 : 1'b0;
   assign decoderOut_6  = (enable&(sel == 4'h6)) ? 1'b1 : 1'b0;
   assign decoderOut_7  = (enable&(sel == 4'h7)) ? 1'b1 : 1'b0;
   assign decoderOut_8  = (enable&(sel == 4'h8)) ? 1'b1 : 1'b0;
   assign decoderOut_9  = (enable&(sel == 4'h9)) ? 1'b1 : 1'b0;
   assign decoderOut_10 = (enable&(sel == 4'hA)) ? 1'b1 : 1'b0;
   assign decoderOut_11 = (enable&(sel == 4'hB)) ? 1'b1 : 1'b0;
   assign decoderOut_12 = (enable&(sel == 4'hC)) ? 1'b1 : 1'b0;
   assign decoderOut_13 = (enable&(sel == 4'hD)) ? 1'b1 : 1'b0;
   assign decoderOut_14 = (enable&(sel == 4'hE)) ? 1'b1 : 1'b0;
   assign decoderOut_15 = (enable&(sel == 4'hF)) ? 1'b1 : 1'b0;
endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Decoder_2                                                    **
 **                                                                          **
 *****************************************************************************/

module Decoder_2( decoderOut_0,
                  decoderOut_1,
                  enable,
                  sel );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input enable;
   input sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output decoderOut_0;
   output decoderOut_1;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   assign decoderOut_0  = (enable&(sel == 1'b0)) ? 1'b1 : 1'b0;
   assign decoderOut_1  = (enable&(sel == 1'b1)) ? 1'b1 : 1'b0;
endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Decoder_8                                                    **
 **                                                                          **
 *****************************************************************************/

module Decoder_8( decoderOut_0,
                  decoderOut_1,
                  decoderOut_2,
                  decoderOut_3,
                  decoderOut_4,
                  decoderOut_5,
                  decoderOut_6,
                  decoderOut_7,
                  enable,
                  sel );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       enable;
   input [2:0] sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output decoderOut_0;
   output decoderOut_1;
   output decoderOut_2;
   output decoderOut_3;
   output decoderOut_4;
   output decoderOut_5;
   output decoderOut_6;
   output decoderOut_7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   assign decoderOut_0  = (enable&(sel == 3'b000)) ? 1'b1 : 1'b0;
   assign decoderOut_1  = (enable&(sel == 3'b001)) ? 1'b1 : 1'b0;
   assign decoderOut_2  = (enable&(sel == 3'b010)) ? 1'b1 : 1'b0;
   assign decoderOut_3  = (enable&(sel == 3'b011)) ? 1'b1 : 1'b0;
   assign decoderOut_4  = (enable&(sel == 3'b100)) ? 1'b1 : 1'b0;
   assign decoderOut_5  = (enable&(sel == 3'b101)) ? 1'b1 : 1'b0;
   assign decoderOut_6  = (enable&(sel == 3'b110)) ? 1'b1 : 1'b0;
   assign decoderOut_7  = (enable&(sel == 3'b111)) ? 1'b1 : 1'b0;
endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Demultiplexer_2                                              **
 **                                                                          **
 *****************************************************************************/

module Demultiplexer_2( demuxIn,
                        demuxOut_0,
                        demuxOut_1,
                        enable,
                        sel );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input demuxIn;
   input enable;
   input sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output demuxOut_0;
   output demuxOut_1;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   assign demuxOut_0   = (enable&(sel == 1'b0 )) ? demuxIn : 0;
   assign demuxOut_1   = (enable&(sel == 1'b1 )) ? demuxIn : 0;
endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Multiplexer_4                                                **
 **                                                                          **
 *****************************************************************************/

module Multiplexer_4( enable,
                      muxIn_0,
                      muxIn_1,
                      muxIn_2,
                      muxIn_3,
                      muxOut,
                      sel );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       enable;
   input       muxIn_0;
   input       muxIn_1;
   input       muxIn_2;
   input       muxIn_3;
   input [1:0] sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output muxOut;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   reg s_selected_vector;
   assign muxOut = s_selected_vector;

   always @(*)
   begin
      if (~enable) s_selected_vector <= 0;
      else case (sel)
         2'b00:
            s_selected_vector <= muxIn_0;
         2'b01:
            s_selected_vector <= muxIn_1;
         2'b10:
            s_selected_vector <= muxIn_2;
        default:
           s_selected_vector <= muxIn_3;
      endcase
   end

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Multiplexer_bus_16                                           **
 **                                                                          **
 *****************************************************************************/

module Multiplexer_bus_16( enable,
                           muxIn_0,
                           muxIn_1,
                           muxIn_10,
                           muxIn_11,
                           muxIn_12,
                           muxIn_13,
                           muxIn_14,
                           muxIn_15,
                           muxIn_2,
                           muxIn_3,
                           muxIn_4,
                           muxIn_5,
                           muxIn_6,
                           muxIn_7,
                           muxIn_8,
                           muxIn_9,
                           muxOut,
                           sel );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter nrOfBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input                enable;
   input [nrOfBits-1:0] muxIn_0;
   input [nrOfBits-1:0] muxIn_1;
   input [nrOfBits-1:0] muxIn_10;
   input [nrOfBits-1:0] muxIn_11;
   input [nrOfBits-1:0] muxIn_12;
   input [nrOfBits-1:0] muxIn_13;
   input [nrOfBits-1:0] muxIn_14;
   input [nrOfBits-1:0] muxIn_15;
   input [nrOfBits-1:0] muxIn_2;
   input [nrOfBits-1:0] muxIn_3;
   input [nrOfBits-1:0] muxIn_4;
   input [nrOfBits-1:0] muxIn_5;
   input [nrOfBits-1:0] muxIn_6;
   input [nrOfBits-1:0] muxIn_7;
   input [nrOfBits-1:0] muxIn_8;
   input [nrOfBits-1:0] muxIn_9;
   input [3:0]          sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfBits-1:0] muxOut;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   reg [nrOfBits:0] s_selected_vector;
   assign muxOut = s_selected_vector;

   always @(*)
   begin
      if (~enable) s_selected_vector <= 0;
      else case (sel)
         4'h0:
            s_selected_vector <= muxIn_0;
         4'h1:
            s_selected_vector <= muxIn_1;
         4'h2:
            s_selected_vector <= muxIn_2;
         4'h3:
            s_selected_vector <= muxIn_3;
         4'h4:
            s_selected_vector <= muxIn_4;
         4'h5:
            s_selected_vector <= muxIn_5;
         4'h6:
            s_selected_vector <= muxIn_6;
         4'h7:
            s_selected_vector <= muxIn_7;
         4'h8:
            s_selected_vector <= muxIn_8;
         4'h9:
            s_selected_vector <= muxIn_9;
         4'hA:
            s_selected_vector <= muxIn_10;
         4'hB:
            s_selected_vector <= muxIn_11;
         4'hC:
            s_selected_vector <= muxIn_12;
         4'hD:
            s_selected_vector <= muxIn_13;
         4'hE:
            s_selected_vector <= muxIn_14;
        default:
           s_selected_vector <= muxIn_15;
      endcase
   end

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Multiplexer_bus_2                                            **
 **                                                                          **
 *****************************************************************************/

module Multiplexer_bus_2( enable,
                          muxIn_0,
                          muxIn_1,
                          muxOut,
                          sel );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter nrOfBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input                enable;
   input [nrOfBits-1:0] muxIn_0;
   input [nrOfBits-1:0] muxIn_1;
   input                sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfBits-1:0] muxOut;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   reg [nrOfBits:0] s_selected_vector;
   assign muxOut = s_selected_vector;

   always @(*)
   begin
      if (~enable) s_selected_vector <= 0;
      else case (sel)
         1'b0:
            s_selected_vector <= muxIn_0;
        default:
           s_selected_vector <= muxIn_1;
      endcase
   end

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Multiplexer_bus_8                                            **
 **                                                                          **
 *****************************************************************************/

module Multiplexer_bus_8( enable,
                          muxIn_0,
                          muxIn_1,
                          muxIn_2,
                          muxIn_3,
                          muxIn_4,
                          muxIn_5,
                          muxIn_6,
                          muxIn_7,
                          muxOut,
                          sel );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter nrOfBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input                enable;
   input [nrOfBits-1:0] muxIn_0;
   input [nrOfBits-1:0] muxIn_1;
   input [nrOfBits-1:0] muxIn_2;
   input [nrOfBits-1:0] muxIn_3;
   input [nrOfBits-1:0] muxIn_4;
   input [nrOfBits-1:0] muxIn_5;
   input [nrOfBits-1:0] muxIn_6;
   input [nrOfBits-1:0] muxIn_7;
   input [2:0]          sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfBits-1:0] muxOut;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   reg [nrOfBits:0] s_selected_vector;
   assign muxOut = s_selected_vector;

   always @(*)
   begin
      if (~enable) s_selected_vector <= 0;
      else case (sel)
         3'b000:
            s_selected_vector <= muxIn_0;
         3'b001:
            s_selected_vector <= muxIn_1;
         3'b010:
            s_selected_vector <= muxIn_2;
         3'b011:
            s_selected_vector <= muxIn_3;
         3'b100:
            s_selected_vector <= muxIn_4;
         3'b101:
            s_selected_vector <= muxIn_5;
         3'b110:
            s_selected_vector <= muxIn_6;
        default:
           s_selected_vector <= muxIn_7;
      endcase
   end

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Priority_Encoder                                             **
 **                                                                          **
 *****************************************************************************/

module Priority_Encoder( address,
                         enable,
                         enableOut,
                         groupSelect,
                         inputVector );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter nrOfInputBits = 1;
   parameter nrOfSelectBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input                     enable;
   input [nrOfInputBits-1:0] inputVector;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfSelectBits-1:0] address;
   output                      enableOut;
   output                      groupSelect;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [5:0]  s_address;
   wire        s_inIsZero;
   wire [63:0] s_selectVector0;
   wire [31:0] s_selectVector1;
   wire [15:0] s_selectVector2;
   wire [7:0]  s_selectVector3;
   wire [3:0]  s_selectVector4;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   assign groupSelect = ~s_inIsZero&enable;
   assign enableOut = s_inIsZero&enable;
   assign address = (~enable) ? 0 : s_address[nrOfSelectBits-1:0];
   assign s_inIsZero = (inputVector == 0) ? 1'b1 : 1'b0;

   assign s_selectVector0[63:nrOfInputBits] = 0;
   assign s_selectVector0[nrOfInputBits-1:0] = inputVector;
   assign s_address[5] = (s_selectVector0[63:32] == 0) ? 1'b0 : 1'b1;
   assign s_selectVector1 = (s_selectVector0[63:32] == 0) ? s_selectVector0[31:0] : s_selectVector0[63:32];
   assign s_address[4] = (s_selectVector1[31:16] == 0) ? 1'b0 : 1'b1;
   assign s_selectVector2 = (s_selectVector1[31:16] == 0) ? s_selectVector1[15:0] : s_selectVector1[31:16];
   assign s_address[3] = (s_selectVector2[15:8] == 0) ? 1'b0 : 1'b1;
   assign s_selectVector3 = (s_selectVector2[15:8] == 0) ? s_selectVector2[7:0] : s_selectVector2[15:8];
   assign s_address[2] = (s_selectVector3[7:4] == 0) ? 1'b0 : 1'b1;
   assign s_selectVector4 = (s_selectVector3[7:4] == 0) ? s_selectVector3[3:0] : s_selectVector3[7:4];
   assign s_address[1] = (s_selectVector4[3:2] == 0) ? 1'b0 : 1'b1;
   assign s_address[0] = (s_selectVector4[3:2] == 0) ? s_selectVector4[1] : s_selectVector4[3];

endmodule
`default_nettype none

module GPU_Display_Controller (
    input  wire       clk,
    input  wire       rst,
    
    // CPU Interface
    input  wire [7:0] cpu_data_in,
    input  wire [3:0] cpu_ctrl_in,
    
    // SPI input (from SD card)
    input  wire       spi_miso,
    
    // Shared outputs (VGA / SPI)
    output reg        out_sck_hsync,
    output reg        out_mosi_vsync,
    output reg        out_sd_cs_r,
    output reg        out_disp_cs_g,
    output reg        out_disp_dc_b
);

    // ==========================================
    // GPU Internal Registers
    // ==========================================
    reg [7:0] reg_x;
    reg [7:0] reg_y;
    reg [7:0] reg_w;
    reg [7:0] reg_h;
    reg [7:0] reg_color;
    reg [7:0] reg_mode;   // 0=VGA Shape, 1=SPI Bit-Bang, 2=Hardware Video Stream
    reg [7:0] reg_sector; // SD Card Sector (simplified 8-bit for addressing video chunks)

    // CPU Command Decoder
    always @(posedge clk) begin
        if (rst) begin
            reg_x <= 0;
            reg_y <= 0;
            reg_w <= 0;
            reg_h <= 0;
            reg_color <= 0;
            reg_mode <= 0;
            reg_sector <= 0;
        end else begin
            case (cpu_ctrl_in)
                4'd1: reg_x      <= cpu_data_in;
                4'd2: reg_y      <= cpu_data_in;
                4'd3: reg_w      <= cpu_data_in;
                4'd4: reg_h      <= cpu_data_in;
                4'd5: reg_color  <= cpu_data_in;
                4'd6: reg_mode   <= cpu_data_in;
                4'd7: reg_sector <= cpu_data_in; // Trigger for Mode 2 SD read
                default: ; 
            endcase
        end
    end

    // ==========================================
    // Mode 0: VGA Hardware Generator
    // ==========================================
    reg [9:0] h_count;
    reg [9:0] v_count;
    
    wire h_sync = ~(h_count >= 656 && h_count < 752);
    wire v_sync = ~(v_count >= 490 && v_count < 492);
    wire display_on = (h_count < 640 && v_count < 480);
    
    wire in_shape = (h_count[8:1] >= reg_x) && (h_count[8:1] < reg_x + reg_w) &&
                    (v_count[8:1] >= reg_y) && (v_count[8:1] < reg_y + reg_h);
                    
    wire [2:0] vga_rgb = (display_on && in_shape) ? reg_color[2:0] : 3'b000;

    always @(posedge clk) begin
        if (rst) begin
            h_count <= 0;
            v_count <= 0;
        end else if (reg_mode == 8'd0) begin
            if (h_count == 799) begin
                h_count <= 0;
                if (v_count == 524) v_count <= 0;
                else v_count <= v_count + 1;
            end else begin
                h_count <= h_count + 1;
            end
        end
    end

    // ==========================================
    // Mode 2: High-Speed Hardware Video Streamer
    // ==========================================
    // This state machine generates a 25MHz SPI clock, reads data from the SD card,
    // and instantly forwards it to the Display MOSI pin.
    reg [2:0] stream_state;
    reg [7:0] bit_counter;
    reg       spi_clk_reg;
    reg       spi_mosi_reg;
    
    always @(posedge clk) begin
        if (rst || reg_mode != 8'd2) begin
            stream_state <= 0;
            bit_counter <= 0;
            spi_clk_reg <= 0;
        end else begin
            // Toggles at half clock frequency (e.g. 25MHz if sys is 50MHz)
            spi_clk_reg <= ~spi_clk_reg;
            
            if (spi_clk_reg) begin
                // Falling edge: Shift logic
                if (stream_state == 0) begin
                    // Send CMD18 (Read Multiple Blocks) to SD Card
                    // ... Simplified hardware streaming logic ...
                    spi_mosi_reg <= 1'b1; // Send dummy byte for now
                end else begin
                    // Stream directly from MISO (SD Card) to MOSI (Display)
                    spi_mosi_reg <= spi_miso;
                end
            end
        end
    end

    // ==========================================
    // Output Multiplexer (VGA vs Bit-Bang vs Stream)
    // ==========================================
    always @(*) begin
        if (reg_mode == 8'd0) begin
            // Mode 0: VGA Hardware Shape Overlay
            out_sck_hsync  = h_sync;
            out_mosi_vsync = v_sync;
            out_sd_cs_r    = vga_rgb[2]; 
            out_disp_cs_g  = vga_rgb[1]; 
            out_disp_dc_b  = vga_rgb[0]; 
        end else if (reg_mode == 8'd1) begin
            // Mode 1: SPI Bit-Bang (CPU driven)
            out_sck_hsync  = reg_color[0]; // SPI SCK
            out_mosi_vsync = reg_color[1]; // SPI MOSI
            out_sd_cs_r    = reg_color[2]; // SD Card CS
            out_disp_cs_g  = reg_color[3]; // Display CS
            out_disp_dc_b  = reg_color[4]; // Display DC
        end else begin
            // Mode 2: High-Speed Video Stream (Hardware driven)
            out_sck_hsync  = spi_clk_reg;  // Hardware generated high-speed clock
            out_mosi_vsync = spi_mosi_reg; // Data streaming to Display
            out_sd_cs_r    = 1'b0;         // SD Card CS active (low)
            out_disp_cs_g  = 1'b0;         // Display CS active (low)
            out_disp_dc_b  = 1'b1;         // Display DC Data mode
        end
    end

endmodule
default_nettype none

module tt_um_una2_system (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // ==========================================
    // Internal Wires for CPU <-> GPU connection
    // ==========================================
    wire [7:0] cpu_bidir_out;
    wire [7:0] cpu_bidir_in;
    wire [3:0] cpu_ext_ctrl;
    wire       cpu_button;
    
    // Invert reset for Logisim (TinyTapeout uses active-low RST_N)
    wire rst = ~rst_n;

    // ==========================================
    // 1. CPU Instantiation (Exported from Logisim)
    // ==========================================
    CPU my_cpu (
        .CLK           (clk),
        .RST           (rst),
        .BUTTON        (cpu_button),
        .BIDIRIN       (cpu_bidir_in),
        .BIDIROUT      (cpu_bidir_out),
        .EXTERNALCNTRL (cpu_ext_ctrl)
    );

    // ==========================================
    // 2. Pin Mapping - Inputs & Bidirectional
    // ==========================================
    assign cpu_button   = ui_in[1];  // ui_in[1] acts as the CPU BUTTON
    wire   spi_miso     = ui_in[0];  // ui_in[0] acts as SPI MISO for the GPU

    // Wire the CPU's bidirectional ports directly to TinyTapeout's bidirectional pins
    assign uio_out      = cpu_bidir_out; 
    assign cpu_bidir_in = uio_in;
    
    // We use EXTERNALCNTRL[3] (the highest bit) to control the direction of the physical pins.
    // If EXTERNALCNTRL[3] is 1, the chip outputs data. If 0, it reads data.
    assign uio_oe       = {8{cpu_ext_ctrl[3]}}; 

    // ==========================================
    // 3. GPU Instantiation
    // ==========================================
    wire gpu_sck_hsync;
    wire gpu_mosi_vsync;
    wire gpu_sd_cs_r;
    wire gpu_disp_cs_g;
    wire gpu_disp_dc_b;

    GPU_Display_Controller my_gpu (
        .clk             (clk),
        .rst             (rst),
        
        // Internal connections from CPU
        .cpu_data_in     (cpu_bidir_out),
        .cpu_ctrl_in     (cpu_ext_ctrl),
        
        // SPI input from SD Card
        .spi_miso        (spi_miso),
        
        // Shared outputs (SPI / VGA)
        .out_sck_hsync   (gpu_sck_hsync),
        .out_mosi_vsync  (gpu_mosi_vsync),
        .out_sd_cs_r     (gpu_sd_cs_r),
        .out_disp_cs_g   (gpu_disp_cs_g),
        .out_disp_dc_b   (gpu_disp_dc_b)
    );

    // ==========================================
    // 4. Pin Mapping - Dedicated Outputs
    // ==========================================
    assign uo_out[0] = gpu_sck_hsync;
    assign uo_out[1] = gpu_mosi_vsync;
    assign uo_out[2] = gpu_sd_cs_r;
    assign uo_out[3] = gpu_disp_cs_g;
    assign uo_out[4] = gpu_disp_dc_b;
    
    // TinyTapeout Rule: Unused output pins must be explicitly driven to 0.
    assign uo_out[7:5] = 3'b000; 

endmodule
