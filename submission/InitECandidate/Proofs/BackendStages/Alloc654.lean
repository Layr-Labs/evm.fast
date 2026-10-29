import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw654
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody654_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 14

def AllocBody654_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 10

def AllocBody654_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody654_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 11

def AllocBody654_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody654_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def AllocBody654_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody654_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 12

def AllocBody654_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody654_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def AllocBody654_10 : StackLang.HolProg 64 :=
.seq AllocBody654_8 AllocBody654_9

def AllocBody654_11 : StackLang.HolProg 64 :=
.seq AllocBody654_7 AllocBody654_10

def AllocBody654_12 : StackLang.HolProg 64 :=
.seq AllocBody654_6 AllocBody654_11

def AllocBody654_13 : StackLang.HolProg 64 :=
.seq AllocBody654_5 AllocBody654_12

def AllocBody654_14 : StackLang.HolProg 64 :=
.seq AllocBody654_4 AllocBody654_13

def AllocBody654_15 : StackLang.HolProg 64 :=
.seq AllocBody654_3 AllocBody654_14

def AllocBody654_16 : StackLang.HolProg 64 :=
.seq AllocBody654_2 AllocBody654_15

def AllocBody654_17 : StackLang.HolProg 64 :=
.seq AllocBody654_1 AllocBody654_16

def AllocBody654_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2702#64)

def AllocBody654_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_21 : StackLang.HolProg 64 :=
.seq AllocBody654_19 AllocBody654_20

def AllocBody654_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody654_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody654_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 3

def AllocBody654_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody654_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody654_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody654_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody654_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_32 : StackLang.HolProg 64 :=
.seq AllocBody654_30 AllocBody654_31

def AllocBody654_33 : StackLang.HolProg 64 :=
.seq AllocBody654_29 AllocBody654_32

def AllocBody654_34 : StackLang.HolProg 64 :=
.seq AllocBody654_28 AllocBody654_33

def AllocBody654_35 : StackLang.HolProg 64 :=
.seq AllocBody654_27 AllocBody654_34

def AllocBody654_36 : StackLang.HolProg 64 :=
.seq AllocBody654_26 AllocBody654_35

def AllocBody654_37 : StackLang.HolProg 64 :=
.seq AllocBody654_25 AllocBody654_36

def AllocBody654_38 : StackLang.HolProg 64 :=
.seq AllocBody654_24 AllocBody654_37

def AllocBody654_39 : StackLang.HolProg 64 :=
.seq AllocBody654_23 AllocBody654_38

def AllocBody654_40 : StackLang.HolProg 64 :=
.seq AllocBody654_22 AllocBody654_39

def AllocBody654_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody654_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody654_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody654_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody654_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 12

def AllocBody654_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody654_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 10

def AllocBody654_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def AllocBody654_52 : StackLang.HolProg 64 :=
.seq AllocBody654_50 AllocBody654_51

def AllocBody654_53 : StackLang.HolProg 64 :=
.seq AllocBody654_49 AllocBody654_52

def AllocBody654_54 : StackLang.HolProg 64 :=
.seq AllocBody654_48 AllocBody654_53

def AllocBody654_55 : StackLang.HolProg 64 :=
.seq AllocBody654_47 AllocBody654_54

def AllocBody654_56 : StackLang.HolProg 64 :=
.seq AllocBody654_46 AllocBody654_55

def AllocBody654_57 : StackLang.HolProg 64 :=
.seq AllocBody654_45 AllocBody654_56

def AllocBody654_58 : StackLang.HolProg 64 :=
.seq AllocBody654_44 AllocBody654_57

def AllocBody654_59 : StackLang.HolProg 64 :=
.seq AllocBody654_43 AllocBody654_58

def AllocBody654_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 12

def AllocBody654_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody654_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 10

def AllocBody654_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def AllocBody654_64 : StackLang.HolProg 64 :=
.seq AllocBody654_62 AllocBody654_63

def AllocBody654_65 : StackLang.HolProg 64 :=
.seq AllocBody654_61 AllocBody654_64

def AllocBody654_66 : StackLang.HolProg 64 :=
.seq AllocBody654_60 AllocBody654_65

def AllocBody654_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody654_68 : StackLang.HolProg 64 :=
.seq AllocBody654_66 AllocBody654_67

def AllocBody654_69 : StackLang.HolProg 64 :=
.call (some (AllocBody654_59, 0, 654, 2)) (Sum.inl 646) (some (AllocBody654_68, 654, 3))

def AllocBody654_70 : StackLang.HolProg 64 :=
.seq AllocBody654_42 AllocBody654_69

def AllocBody654_71 : StackLang.HolProg 64 :=
.seq AllocBody654_41 AllocBody654_70

def AllocBody654_72 : StackLang.HolProg 64 :=
.seq AllocBody654_40 AllocBody654_71

def AllocBody654_73 : StackLang.HolProg 64 :=
.seq AllocBody654_21 AllocBody654_72

def AllocBody654_74 : StackLang.HolProg 64 :=
.seq AllocBody654_18 AllocBody654_73

def AllocBody654_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody654_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody654_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody654_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody654_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody654_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody654_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 10

def AllocBody654_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody654_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 12

def AllocBody654_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 11

def AllocBody654_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody654_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def AllocBody654_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 7

def AllocBody654_88 : StackLang.HolProg 64 :=
.seq AllocBody654_86 AllocBody654_87

def AllocBody654_89 : StackLang.HolProg 64 :=
.seq AllocBody654_85 AllocBody654_88

def AllocBody654_90 : StackLang.HolProg 64 :=
.seq AllocBody654_84 AllocBody654_89

def AllocBody654_91 : StackLang.HolProg 64 :=
.seq AllocBody654_83 AllocBody654_90

def AllocBody654_92 : StackLang.HolProg 64 :=
.seq AllocBody654_82 AllocBody654_91

def AllocBody654_93 : StackLang.HolProg 64 :=
.seq AllocBody654_81 AllocBody654_92

def AllocBody654_94 : StackLang.HolProg 64 :=
.seq AllocBody654_80 AllocBody654_93

def AllocBody654_95 : StackLang.HolProg 64 :=
.seq AllocBody654_79 AllocBody654_94

def AllocBody654_96 : StackLang.HolProg 64 :=
.seq AllocBody654_78 AllocBody654_95

def AllocBody654_97 : StackLang.HolProg 64 :=
.seq AllocBody654_77 AllocBody654_96

def AllocBody654_98 : StackLang.HolProg 64 :=
.seq AllocBody654_76 AllocBody654_97

def AllocBody654_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2703#64)

def AllocBody654_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_102 : StackLang.HolProg 64 :=
.seq AllocBody654_100 AllocBody654_101

def AllocBody654_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody654_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody654_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 5

def AllocBody654_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody654_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody654_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody654_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody654_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_113 : StackLang.HolProg 64 :=
.seq AllocBody654_111 AllocBody654_112

def AllocBody654_114 : StackLang.HolProg 64 :=
.seq AllocBody654_110 AllocBody654_113

def AllocBody654_115 : StackLang.HolProg 64 :=
.seq AllocBody654_109 AllocBody654_114

def AllocBody654_116 : StackLang.HolProg 64 :=
.seq AllocBody654_108 AllocBody654_115

def AllocBody654_117 : StackLang.HolProg 64 :=
.seq AllocBody654_107 AllocBody654_116

def AllocBody654_118 : StackLang.HolProg 64 :=
.seq AllocBody654_106 AllocBody654_117

def AllocBody654_119 : StackLang.HolProg 64 :=
.seq AllocBody654_105 AllocBody654_118

def AllocBody654_120 : StackLang.HolProg 64 :=
.seq AllocBody654_104 AllocBody654_119

def AllocBody654_121 : StackLang.HolProg 64 :=
.seq AllocBody654_103 AllocBody654_120

def AllocBody654_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody654_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody654_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody654_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody654_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody654_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody654_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody654_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody654_133 : StackLang.HolProg 64 :=
.seq AllocBody654_131 AllocBody654_132

def AllocBody654_134 : StackLang.HolProg 64 :=
.seq AllocBody654_130 AllocBody654_133

def AllocBody654_135 : StackLang.HolProg 64 :=
.seq AllocBody654_129 AllocBody654_134

def AllocBody654_136 : StackLang.HolProg 64 :=
.seq AllocBody654_128 AllocBody654_135

def AllocBody654_137 : StackLang.HolProg 64 :=
.seq AllocBody654_127 AllocBody654_136

def AllocBody654_138 : StackLang.HolProg 64 :=
.seq AllocBody654_126 AllocBody654_137

def AllocBody654_139 : StackLang.HolProg 64 :=
.seq AllocBody654_125 AllocBody654_138

def AllocBody654_140 : StackLang.HolProg 64 :=
.seq AllocBody654_124 AllocBody654_139

def AllocBody654_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody654_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody654_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody654_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody654_145 : StackLang.HolProg 64 :=
.seq AllocBody654_143 AllocBody654_144

def AllocBody654_146 : StackLang.HolProg 64 :=
.seq AllocBody654_142 AllocBody654_145

def AllocBody654_147 : StackLang.HolProg 64 :=
.seq AllocBody654_141 AllocBody654_146

def AllocBody654_148 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody654_149 : StackLang.HolProg 64 :=
.seq AllocBody654_147 AllocBody654_148

def AllocBody654_150 : StackLang.HolProg 64 :=
.call (some (AllocBody654_140, 0, 654, 4)) (Sum.inl 646) (some (AllocBody654_149, 654, 5))

def AllocBody654_151 : StackLang.HolProg 64 :=
.seq AllocBody654_123 AllocBody654_150

def AllocBody654_152 : StackLang.HolProg 64 :=
.seq AllocBody654_122 AllocBody654_151

def AllocBody654_153 : StackLang.HolProg 64 :=
.seq AllocBody654_121 AllocBody654_152

def AllocBody654_154 : StackLang.HolProg 64 :=
.seq AllocBody654_102 AllocBody654_153

def AllocBody654_155 : StackLang.HolProg 64 :=
.seq AllocBody654_99 AllocBody654_154

def AllocBody654_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody654_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody654_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 12

def AllocBody654_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 9

def AllocBody654_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def AllocBody654_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def AllocBody654_162 : StackLang.HolProg 64 :=
.seq AllocBody654_160 AllocBody654_161

def AllocBody654_163 : StackLang.HolProg 64 :=
.seq AllocBody654_159 AllocBody654_162

def AllocBody654_164 : StackLang.HolProg 64 :=
.seq AllocBody654_158 AllocBody654_163

def AllocBody654_165 : StackLang.HolProg 64 :=
.seq AllocBody654_157 AllocBody654_164

def AllocBody654_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2704#64)

def AllocBody654_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_169 : StackLang.HolProg 64 :=
.seq AllocBody654_167 AllocBody654_168

def AllocBody654_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody654_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody654_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 7

def AllocBody654_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody654_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody654_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody654_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody654_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_180 : StackLang.HolProg 64 :=
.seq AllocBody654_178 AllocBody654_179

def AllocBody654_181 : StackLang.HolProg 64 :=
.seq AllocBody654_177 AllocBody654_180

def AllocBody654_182 : StackLang.HolProg 64 :=
.seq AllocBody654_176 AllocBody654_181

def AllocBody654_183 : StackLang.HolProg 64 :=
.seq AllocBody654_175 AllocBody654_182

def AllocBody654_184 : StackLang.HolProg 64 :=
.seq AllocBody654_174 AllocBody654_183

def AllocBody654_185 : StackLang.HolProg 64 :=
.seq AllocBody654_173 AllocBody654_184

def AllocBody654_186 : StackLang.HolProg 64 :=
.seq AllocBody654_172 AllocBody654_185

def AllocBody654_187 : StackLang.HolProg 64 :=
.seq AllocBody654_171 AllocBody654_186

def AllocBody654_188 : StackLang.HolProg 64 :=
.seq AllocBody654_170 AllocBody654_187

def AllocBody654_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody654_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody654_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody654_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody654_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody654_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody654_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody654_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody654_200 : StackLang.HolProg 64 :=
.seq AllocBody654_198 AllocBody654_199

def AllocBody654_201 : StackLang.HolProg 64 :=
.seq AllocBody654_197 AllocBody654_200

def AllocBody654_202 : StackLang.HolProg 64 :=
.seq AllocBody654_196 AllocBody654_201

def AllocBody654_203 : StackLang.HolProg 64 :=
.seq AllocBody654_195 AllocBody654_202

def AllocBody654_204 : StackLang.HolProg 64 :=
.seq AllocBody654_194 AllocBody654_203

def AllocBody654_205 : StackLang.HolProg 64 :=
.seq AllocBody654_193 AllocBody654_204

def AllocBody654_206 : StackLang.HolProg 64 :=
.seq AllocBody654_192 AllocBody654_205

def AllocBody654_207 : StackLang.HolProg 64 :=
.seq AllocBody654_191 AllocBody654_206

def AllocBody654_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody654_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody654_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody654_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody654_212 : StackLang.HolProg 64 :=
.seq AllocBody654_210 AllocBody654_211

def AllocBody654_213 : StackLang.HolProg 64 :=
.seq AllocBody654_209 AllocBody654_212

def AllocBody654_214 : StackLang.HolProg 64 :=
.seq AllocBody654_208 AllocBody654_213

def AllocBody654_215 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody654_216 : StackLang.HolProg 64 :=
.seq AllocBody654_214 AllocBody654_215

def AllocBody654_217 : StackLang.HolProg 64 :=
.call (some (AllocBody654_207, 0, 654, 6)) (Sum.inl 645) (some (AllocBody654_216, 654, 7))

def AllocBody654_218 : StackLang.HolProg 64 :=
.seq AllocBody654_190 AllocBody654_217

def AllocBody654_219 : StackLang.HolProg 64 :=
.seq AllocBody654_189 AllocBody654_218

def AllocBody654_220 : StackLang.HolProg 64 :=
.seq AllocBody654_188 AllocBody654_219

def AllocBody654_221 : StackLang.HolProg 64 :=
.seq AllocBody654_169 AllocBody654_220

def AllocBody654_222 : StackLang.HolProg 64 :=
.seq AllocBody654_166 AllocBody654_221

def AllocBody654_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody654_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody654_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody654_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody654_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def AllocBody654_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody654_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody654_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody654_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 12

def AllocBody654_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 8

def AllocBody654_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def AllocBody654_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody654_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody654_236 : StackLang.HolProg 64 :=
.seq AllocBody654_234 AllocBody654_235

def AllocBody654_237 : StackLang.HolProg 64 :=
.seq AllocBody654_233 AllocBody654_236

def AllocBody654_238 : StackLang.HolProg 64 :=
.seq AllocBody654_232 AllocBody654_237

def AllocBody654_239 : StackLang.HolProg 64 :=
.seq AllocBody654_231 AllocBody654_238

def AllocBody654_240 : StackLang.HolProg 64 :=
.seq AllocBody654_230 AllocBody654_239

def AllocBody654_241 : StackLang.HolProg 64 :=
.seq AllocBody654_229 AllocBody654_240

def AllocBody654_242 : StackLang.HolProg 64 :=
.seq AllocBody654_228 AllocBody654_241

def AllocBody654_243 : StackLang.HolProg 64 :=
.seq AllocBody654_227 AllocBody654_242

def AllocBody654_244 : StackLang.HolProg 64 :=
.seq AllocBody654_226 AllocBody654_243

def AllocBody654_245 : StackLang.HolProg 64 :=
.seq AllocBody654_225 AllocBody654_244

def AllocBody654_246 : StackLang.HolProg 64 :=
.seq AllocBody654_224 AllocBody654_245

def AllocBody654_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2705#64)

def AllocBody654_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_250 : StackLang.HolProg 64 :=
.seq AllocBody654_248 AllocBody654_249

def AllocBody654_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody654_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody654_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 9

def AllocBody654_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody654_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody654_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody654_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody654_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_261 : StackLang.HolProg 64 :=
.seq AllocBody654_259 AllocBody654_260

def AllocBody654_262 : StackLang.HolProg 64 :=
.seq AllocBody654_258 AllocBody654_261

def AllocBody654_263 : StackLang.HolProg 64 :=
.seq AllocBody654_257 AllocBody654_262

def AllocBody654_264 : StackLang.HolProg 64 :=
.seq AllocBody654_256 AllocBody654_263

def AllocBody654_265 : StackLang.HolProg 64 :=
.seq AllocBody654_255 AllocBody654_264

def AllocBody654_266 : StackLang.HolProg 64 :=
.seq AllocBody654_254 AllocBody654_265

def AllocBody654_267 : StackLang.HolProg 64 :=
.seq AllocBody654_253 AllocBody654_266

def AllocBody654_268 : StackLang.HolProg 64 :=
.seq AllocBody654_252 AllocBody654_267

def AllocBody654_269 : StackLang.HolProg 64 :=
.seq AllocBody654_251 AllocBody654_268

def AllocBody654_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody654_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody654_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody654_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody654_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody654_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody654_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody654_280 : StackLang.HolProg 64 :=
.seq AllocBody654_278 AllocBody654_279

def AllocBody654_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody654_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody654_283 : StackLang.HolProg 64 :=
.seq AllocBody654_281 AllocBody654_282

def AllocBody654_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody654_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody654_286 : StackLang.HolProg 64 :=
.seq AllocBody654_284 AllocBody654_285

def AllocBody654_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody654_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody654_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody654_290 : StackLang.HolProg 64 :=
.seq AllocBody654_288 AllocBody654_289

def AllocBody654_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody654_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody654_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody654_294 : StackLang.HolProg 64 :=
.seq AllocBody654_292 AllocBody654_293

def AllocBody654_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody654_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody654_297 : StackLang.HolProg 64 :=
.seq AllocBody654_295 AllocBody654_296

def AllocBody654_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody654_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody654_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody654_301 : StackLang.HolProg 64 :=
.seq AllocBody654_299 AllocBody654_300

def AllocBody654_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody654_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody654_304 : StackLang.HolProg 64 :=
.seq AllocBody654_302 AllocBody654_303

def AllocBody654_305 : StackLang.HolProg 64 :=
.seq AllocBody654_301 AllocBody654_304

def AllocBody654_306 : StackLang.HolProg 64 :=
.seq AllocBody654_298 AllocBody654_305

def AllocBody654_307 : StackLang.HolProg 64 :=
.seq AllocBody654_297 AllocBody654_306

def AllocBody654_308 : StackLang.HolProg 64 :=
.seq AllocBody654_294 AllocBody654_307

def AllocBody654_309 : StackLang.HolProg 64 :=
.seq AllocBody654_291 AllocBody654_308

def AllocBody654_310 : StackLang.HolProg 64 :=
.seq AllocBody654_290 AllocBody654_309

def AllocBody654_311 : StackLang.HolProg 64 :=
.seq AllocBody654_287 AllocBody654_310

def AllocBody654_312 : StackLang.HolProg 64 :=
.seq AllocBody654_286 AllocBody654_311

def AllocBody654_313 : StackLang.HolProg 64 :=
.seq AllocBody654_283 AllocBody654_312

def AllocBody654_314 : StackLang.HolProg 64 :=
.seq AllocBody654_280 AllocBody654_313

def AllocBody654_315 : StackLang.HolProg 64 :=
.seq AllocBody654_277 AllocBody654_314

def AllocBody654_316 : StackLang.HolProg 64 :=
.seq AllocBody654_276 AllocBody654_315

def AllocBody654_317 : StackLang.HolProg 64 :=
.seq AllocBody654_275 AllocBody654_316

def AllocBody654_318 : StackLang.HolProg 64 :=
.seq AllocBody654_274 AllocBody654_317

def AllocBody654_319 : StackLang.HolProg 64 :=
.seq AllocBody654_273 AllocBody654_318

def AllocBody654_320 : StackLang.HolProg 64 :=
.seq AllocBody654_272 AllocBody654_319

def AllocBody654_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody654_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody654_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody654_324 : StackLang.HolProg 64 :=
.seq AllocBody654_322 AllocBody654_323

def AllocBody654_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody654_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody654_327 : StackLang.HolProg 64 :=
.seq AllocBody654_325 AllocBody654_326

def AllocBody654_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody654_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody654_330 : StackLang.HolProg 64 :=
.seq AllocBody654_328 AllocBody654_329

def AllocBody654_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody654_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody654_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody654_334 : StackLang.HolProg 64 :=
.seq AllocBody654_332 AllocBody654_333

def AllocBody654_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody654_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody654_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody654_338 : StackLang.HolProg 64 :=
.seq AllocBody654_336 AllocBody654_337

def AllocBody654_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody654_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody654_341 : StackLang.HolProg 64 :=
.seq AllocBody654_339 AllocBody654_340

def AllocBody654_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody654_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody654_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody654_345 : StackLang.HolProg 64 :=
.seq AllocBody654_343 AllocBody654_344

def AllocBody654_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody654_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody654_348 : StackLang.HolProg 64 :=
.seq AllocBody654_346 AllocBody654_347

def AllocBody654_349 : StackLang.HolProg 64 :=
.seq AllocBody654_345 AllocBody654_348

def AllocBody654_350 : StackLang.HolProg 64 :=
.seq AllocBody654_342 AllocBody654_349

def AllocBody654_351 : StackLang.HolProg 64 :=
.seq AllocBody654_341 AllocBody654_350

def AllocBody654_352 : StackLang.HolProg 64 :=
.seq AllocBody654_338 AllocBody654_351

def AllocBody654_353 : StackLang.HolProg 64 :=
.seq AllocBody654_335 AllocBody654_352

def AllocBody654_354 : StackLang.HolProg 64 :=
.seq AllocBody654_334 AllocBody654_353

def AllocBody654_355 : StackLang.HolProg 64 :=
.seq AllocBody654_331 AllocBody654_354

def AllocBody654_356 : StackLang.HolProg 64 :=
.seq AllocBody654_330 AllocBody654_355

def AllocBody654_357 : StackLang.HolProg 64 :=
.seq AllocBody654_327 AllocBody654_356

def AllocBody654_358 : StackLang.HolProg 64 :=
.seq AllocBody654_324 AllocBody654_357

def AllocBody654_359 : StackLang.HolProg 64 :=
.seq AllocBody654_321 AllocBody654_358

def AllocBody654_360 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody654_361 : StackLang.HolProg 64 :=
.seq AllocBody654_359 AllocBody654_360

def AllocBody654_362 : StackLang.HolProg 64 :=
.call (some (AllocBody654_320, 0, 654, 8)) (Sum.inl 642) (some (AllocBody654_361, 654, 9))

def AllocBody654_363 : StackLang.HolProg 64 :=
.seq AllocBody654_271 AllocBody654_362

def AllocBody654_364 : StackLang.HolProg 64 :=
.seq AllocBody654_270 AllocBody654_363

def AllocBody654_365 : StackLang.HolProg 64 :=
.seq AllocBody654_269 AllocBody654_364

def AllocBody654_366 : StackLang.HolProg 64 :=
.seq AllocBody654_250 AllocBody654_365

def AllocBody654_367 : StackLang.HolProg 64 :=
.seq AllocBody654_247 AllocBody654_366

def AllocBody654_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody654_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody654_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2706#64)

def AllocBody654_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_373 : StackLang.HolProg 64 :=
.seq AllocBody654_371 AllocBody654_372

def AllocBody654_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody654_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody654_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 11

def AllocBody654_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody654_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody654_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody654_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody654_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_384 : StackLang.HolProg 64 :=
.seq AllocBody654_382 AllocBody654_383

def AllocBody654_385 : StackLang.HolProg 64 :=
.seq AllocBody654_381 AllocBody654_384

def AllocBody654_386 : StackLang.HolProg 64 :=
.seq AllocBody654_380 AllocBody654_385

def AllocBody654_387 : StackLang.HolProg 64 :=
.seq AllocBody654_379 AllocBody654_386

def AllocBody654_388 : StackLang.HolProg 64 :=
.seq AllocBody654_378 AllocBody654_387

def AllocBody654_389 : StackLang.HolProg 64 :=
.seq AllocBody654_377 AllocBody654_388

def AllocBody654_390 : StackLang.HolProg 64 :=
.seq AllocBody654_376 AllocBody654_389

def AllocBody654_391 : StackLang.HolProg 64 :=
.seq AllocBody654_375 AllocBody654_390

def AllocBody654_392 : StackLang.HolProg 64 :=
.seq AllocBody654_374 AllocBody654_391

def AllocBody654_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody654_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody654_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody654_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody654_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody654_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody654_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody654_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def AllocBody654_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody654_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody654_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody654_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody654_408 : StackLang.HolProg 64 :=
.seq AllocBody654_406 AllocBody654_407

def AllocBody654_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody654_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody654_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody654_412 : StackLang.HolProg 64 :=
.seq AllocBody654_410 AllocBody654_411

def AllocBody654_413 : StackLang.HolProg 64 :=
.seq AllocBody654_409 AllocBody654_412

def AllocBody654_414 : StackLang.HolProg 64 :=
.seq AllocBody654_408 AllocBody654_413

def AllocBody654_415 : StackLang.HolProg 64 :=
.seq AllocBody654_405 AllocBody654_414

def AllocBody654_416 : StackLang.HolProg 64 :=
.seq AllocBody654_404 AllocBody654_415

def AllocBody654_417 : StackLang.HolProg 64 :=
.seq AllocBody654_403 AllocBody654_416

def AllocBody654_418 : StackLang.HolProg 64 :=
.seq AllocBody654_402 AllocBody654_417

def AllocBody654_419 : StackLang.HolProg 64 :=
.seq AllocBody654_401 AllocBody654_418

def AllocBody654_420 : StackLang.HolProg 64 :=
.seq AllocBody654_400 AllocBody654_419

def AllocBody654_421 : StackLang.HolProg 64 :=
.seq AllocBody654_399 AllocBody654_420

def AllocBody654_422 : StackLang.HolProg 64 :=
.seq AllocBody654_398 AllocBody654_421

def AllocBody654_423 : StackLang.HolProg 64 :=
.seq AllocBody654_397 AllocBody654_422

def AllocBody654_424 : StackLang.HolProg 64 :=
.seq AllocBody654_396 AllocBody654_423

def AllocBody654_425 : StackLang.HolProg 64 :=
.seq AllocBody654_395 AllocBody654_424

def AllocBody654_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def AllocBody654_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody654_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody654_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody654_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody654_431 : StackLang.HolProg 64 :=
.seq AllocBody654_429 AllocBody654_430

def AllocBody654_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody654_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody654_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody654_435 : StackLang.HolProg 64 :=
.seq AllocBody654_433 AllocBody654_434

def AllocBody654_436 : StackLang.HolProg 64 :=
.seq AllocBody654_432 AllocBody654_435

def AllocBody654_437 : StackLang.HolProg 64 :=
.seq AllocBody654_431 AllocBody654_436

def AllocBody654_438 : StackLang.HolProg 64 :=
.seq AllocBody654_428 AllocBody654_437

def AllocBody654_439 : StackLang.HolProg 64 :=
.seq AllocBody654_427 AllocBody654_438

def AllocBody654_440 : StackLang.HolProg 64 :=
.seq AllocBody654_426 AllocBody654_439

def AllocBody654_441 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody654_442 : StackLang.HolProg 64 :=
.seq AllocBody654_440 AllocBody654_441

def AllocBody654_443 : StackLang.HolProg 64 :=
.call (some (AllocBody654_425, 0, 654, 10)) (Sum.inl 642) (some (AllocBody654_442, 654, 11))

def AllocBody654_444 : StackLang.HolProg 64 :=
.seq AllocBody654_394 AllocBody654_443

def AllocBody654_445 : StackLang.HolProg 64 :=
.seq AllocBody654_393 AllocBody654_444

def AllocBody654_446 : StackLang.HolProg 64 :=
.seq AllocBody654_392 AllocBody654_445

def AllocBody654_447 : StackLang.HolProg 64 :=
.seq AllocBody654_373 AllocBody654_446

def AllocBody654_448 : StackLang.HolProg 64 :=
.seq AllocBody654_370 AllocBody654_447

def AllocBody654_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody654_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody654_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2707#64)

def AllocBody654_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_454 : StackLang.HolProg 64 :=
.seq AllocBody654_452 AllocBody654_453

def AllocBody654_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody654_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody654_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 13

def AllocBody654_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody654_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody654_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody654_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody654_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_465 : StackLang.HolProg 64 :=
.seq AllocBody654_463 AllocBody654_464

def AllocBody654_466 : StackLang.HolProg 64 :=
.seq AllocBody654_462 AllocBody654_465

def AllocBody654_467 : StackLang.HolProg 64 :=
.seq AllocBody654_461 AllocBody654_466

def AllocBody654_468 : StackLang.HolProg 64 :=
.seq AllocBody654_460 AllocBody654_467

def AllocBody654_469 : StackLang.HolProg 64 :=
.seq AllocBody654_459 AllocBody654_468

def AllocBody654_470 : StackLang.HolProg 64 :=
.seq AllocBody654_458 AllocBody654_469

def AllocBody654_471 : StackLang.HolProg 64 :=
.seq AllocBody654_457 AllocBody654_470

def AllocBody654_472 : StackLang.HolProg 64 :=
.seq AllocBody654_456 AllocBody654_471

def AllocBody654_473 : StackLang.HolProg 64 :=
.seq AllocBody654_455 AllocBody654_472

def AllocBody654_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody654_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody654_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody654_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody654_481 : StackLang.HolProg 64 :=
.seq AllocBody654_479 AllocBody654_480

def AllocBody654_482 : StackLang.HolProg 64 :=
.seq AllocBody654_478 AllocBody654_481

def AllocBody654_483 : StackLang.HolProg 64 :=
.seq AllocBody654_477 AllocBody654_482

def AllocBody654_484 : StackLang.HolProg 64 :=
.seq AllocBody654_476 AllocBody654_483

def AllocBody654_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_486 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody654_487 : StackLang.HolProg 64 :=
.seq AllocBody654_485 AllocBody654_486

def AllocBody654_488 : StackLang.HolProg 64 :=
.call (some (AllocBody654_484, 0, 654, 12)) (Sum.inl 643) (some (AllocBody654_487, 654, 13))

def AllocBody654_489 : StackLang.HolProg 64 :=
.seq AllocBody654_475 AllocBody654_488

def AllocBody654_490 : StackLang.HolProg 64 :=
.seq AllocBody654_474 AllocBody654_489

def AllocBody654_491 : StackLang.HolProg 64 :=
.seq AllocBody654_473 AllocBody654_490

def AllocBody654_492 : StackLang.HolProg 64 :=
.seq AllocBody654_454 AllocBody654_491

def AllocBody654_493 : StackLang.HolProg 64 :=
.seq AllocBody654_451 AllocBody654_492

def AllocBody654_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody654_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody654_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 6540974713487397863#64)

def AllocBody654_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 12964664127075681980#64)

def AllocBody654_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 7285987128567378166#64)

def AllocBody654_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4309448131093880907#64)

def AllocBody654_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2708#64)

def AllocBody654_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_504 : StackLang.HolProg 64 :=
.seq AllocBody654_502 AllocBody654_503

def AllocBody654_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody654_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody654_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody654_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 15

def AllocBody654_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody654_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody654_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody654_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody654_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_515 : StackLang.HolProg 64 :=
.seq AllocBody654_513 AllocBody654_514

def AllocBody654_516 : StackLang.HolProg 64 :=
.seq AllocBody654_512 AllocBody654_515

def AllocBody654_517 : StackLang.HolProg 64 :=
.seq AllocBody654_511 AllocBody654_516

def AllocBody654_518 : StackLang.HolProg 64 :=
.seq AllocBody654_510 AllocBody654_517

def AllocBody654_519 : StackLang.HolProg 64 :=
.seq AllocBody654_509 AllocBody654_518

def AllocBody654_520 : StackLang.HolProg 64 :=
.seq AllocBody654_508 AllocBody654_519

def AllocBody654_521 : StackLang.HolProg 64 :=
.seq AllocBody654_507 AllocBody654_520

def AllocBody654_522 : StackLang.HolProg 64 :=
.seq AllocBody654_506 AllocBody654_521

def AllocBody654_523 : StackLang.HolProg 64 :=
.seq AllocBody654_505 AllocBody654_522

def AllocBody654_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody654_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody654_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody654_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody654_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody654_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody654_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody654_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody654_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody654_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 12

def AllocBody654_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 11

def AllocBody654_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def AllocBody654_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody654_539 : StackLang.HolProg 64 :=
.seq AllocBody654_537 AllocBody654_538

def AllocBody654_540 : StackLang.HolProg 64 :=
.seq AllocBody654_536 AllocBody654_539

def AllocBody654_541 : StackLang.HolProg 64 :=
.seq AllocBody654_535 AllocBody654_540

def AllocBody654_542 : StackLang.HolProg 64 :=
.seq AllocBody654_534 AllocBody654_541

def AllocBody654_543 : StackLang.HolProg 64 :=
.seq AllocBody654_533 AllocBody654_542

def AllocBody654_544 : StackLang.HolProg 64 :=
.seq AllocBody654_532 AllocBody654_543

def AllocBody654_545 : StackLang.HolProg 64 :=
.seq AllocBody654_531 AllocBody654_544

def AllocBody654_546 : StackLang.HolProg 64 :=
.seq AllocBody654_530 AllocBody654_545

def AllocBody654_547 : StackLang.HolProg 64 :=
.seq AllocBody654_529 AllocBody654_546

def AllocBody654_548 : StackLang.HolProg 64 :=
.seq AllocBody654_528 AllocBody654_547

def AllocBody654_549 : StackLang.HolProg 64 :=
.seq AllocBody654_527 AllocBody654_548

def AllocBody654_550 : StackLang.HolProg 64 :=
.seq AllocBody654_526 AllocBody654_549

def AllocBody654_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody654_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 12

def AllocBody654_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 11

def AllocBody654_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def AllocBody654_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody654_556 : StackLang.HolProg 64 :=
.seq AllocBody654_554 AllocBody654_555

def AllocBody654_557 : StackLang.HolProg 64 :=
.seq AllocBody654_553 AllocBody654_556

def AllocBody654_558 : StackLang.HolProg 64 :=
.seq AllocBody654_552 AllocBody654_557

def AllocBody654_559 : StackLang.HolProg 64 :=
.seq AllocBody654_551 AllocBody654_558

def AllocBody654_560 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody654_561 : StackLang.HolProg 64 :=
.seq AllocBody654_559 AllocBody654_560

def AllocBody654_562 : StackLang.HolProg 64 :=
.call (some (AllocBody654_550, 0, 654, 14)) (Sum.inl 642) (some (AllocBody654_561, 654, 15))

def AllocBody654_563 : StackLang.HolProg 64 :=
.seq AllocBody654_525 AllocBody654_562

def AllocBody654_564 : StackLang.HolProg 64 :=
.seq AllocBody654_524 AllocBody654_563

def AllocBody654_565 : StackLang.HolProg 64 :=
.seq AllocBody654_523 AllocBody654_564

def AllocBody654_566 : StackLang.HolProg 64 :=
.seq AllocBody654_504 AllocBody654_565

def AllocBody654_567 : StackLang.HolProg 64 :=
.seq AllocBody654_501 AllocBody654_566

def AllocBody654_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody654_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody654_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody654_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 14

def AllocBody654_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 105

def AllocBody654_573 : StackLang.HolProg 64 :=
.seq AllocBody654_571 AllocBody654_572

def AllocBody654_574 : StackLang.HolProg 64 :=
.seq AllocBody654_570 AllocBody654_573

def AllocBody654_575 : StackLang.HolProg 64 :=
.seq AllocBody654_569 AllocBody654_574

def AllocBody654_576 : StackLang.HolProg 64 :=
.seq AllocBody654_568 AllocBody654_575

def AllocBody654_577 : StackLang.HolProg 64 :=
.seq AllocBody654_567 AllocBody654_576

def AllocBody654_578 : StackLang.HolProg 64 :=
.seq AllocBody654_500 AllocBody654_577

def AllocBody654_579 : StackLang.HolProg 64 :=
.seq AllocBody654_499 AllocBody654_578

def AllocBody654_580 : StackLang.HolProg 64 :=
.seq AllocBody654_498 AllocBody654_579

def AllocBody654_581 : StackLang.HolProg 64 :=
.seq AllocBody654_497 AllocBody654_580

def AllocBody654_582 : StackLang.HolProg 64 :=
.seq AllocBody654_496 AllocBody654_581

def AllocBody654_583 : StackLang.HolProg 64 :=
.seq AllocBody654_495 AllocBody654_582

def AllocBody654_584 : StackLang.HolProg 64 :=
.seq AllocBody654_494 AllocBody654_583

def AllocBody654_585 : StackLang.HolProg 64 :=
.seq AllocBody654_493 AllocBody654_584

def AllocBody654_586 : StackLang.HolProg 64 :=
.seq AllocBody654_450 AllocBody654_585

def AllocBody654_587 : StackLang.HolProg 64 :=
.seq AllocBody654_449 AllocBody654_586

def AllocBody654_588 : StackLang.HolProg 64 :=
.seq AllocBody654_448 AllocBody654_587

def AllocBody654_589 : StackLang.HolProg 64 :=
.seq AllocBody654_369 AllocBody654_588

def AllocBody654_590 : StackLang.HolProg 64 :=
.seq AllocBody654_368 AllocBody654_589

def AllocBody654_591 : StackLang.HolProg 64 :=
.seq AllocBody654_367 AllocBody654_590

def AllocBody654_592 : StackLang.HolProg 64 :=
.seq AllocBody654_246 AllocBody654_591

def AllocBody654_593 : StackLang.HolProg 64 :=
.seq AllocBody654_223 AllocBody654_592

def AllocBody654_594 : StackLang.HolProg 64 :=
.seq AllocBody654_222 AllocBody654_593

def AllocBody654_595 : StackLang.HolProg 64 :=
.seq AllocBody654_165 AllocBody654_594

def AllocBody654_596 : StackLang.HolProg 64 :=
.seq AllocBody654_156 AllocBody654_595

def AllocBody654_597 : StackLang.HolProg 64 :=
.seq AllocBody654_155 AllocBody654_596

def AllocBody654_598 : StackLang.HolProg 64 :=
.seq AllocBody654_98 AllocBody654_597

def AllocBody654_599 : StackLang.HolProg 64 :=
.seq AllocBody654_75 AllocBody654_598

def AllocBody654_600 : StackLang.HolProg 64 :=
.seq AllocBody654_74 AllocBody654_599

def AllocBody654_601 : StackLang.HolProg 64 :=
.seq AllocBody654_17 AllocBody654_600

def AllocBody654_602 : StackLang.HolProg 64 :=
.seq AllocBody654_0 AllocBody654_601

def Alloc654 : Nat × StackLang.HolProg 64 := (654, AllocBody654_602)
theorem Alloc654_eq : StackAlloc.progComp (654, raw654) = Alloc654 := by
  kernel_rfl
#print axioms Alloc654_eq
end InitECandidate.Proofs.BackendStages
