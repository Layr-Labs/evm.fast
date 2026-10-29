import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw229
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody229_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody229_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody229_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody229_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody229_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody229_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody229_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody229_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody229_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody229_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody229_10 : StackLang.HolProg 64 :=
.seq AllocBody229_8 AllocBody229_9

def AllocBody229_11 : StackLang.HolProg 64 :=
.seq AllocBody229_7 AllocBody229_10

def AllocBody229_12 : StackLang.HolProg 64 :=
.seq AllocBody229_6 AllocBody229_11

def AllocBody229_13 : StackLang.HolProg 64 :=
.seq AllocBody229_5 AllocBody229_12

def AllocBody229_14 : StackLang.HolProg 64 :=
.seq AllocBody229_4 AllocBody229_13

def AllocBody229_15 : StackLang.HolProg 64 :=
.seq AllocBody229_3 AllocBody229_14

def AllocBody229_16 : StackLang.HolProg 64 :=
.seq AllocBody229_2 AllocBody229_15

def AllocBody229_17 : StackLang.HolProg 64 :=
.seq AllocBody229_1 AllocBody229_16

def AllocBody229_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 383#64)

def AllocBody229_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody229_21 : StackLang.HolProg 64 :=
.seq AllocBody229_19 AllocBody229_20

def AllocBody229_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody229_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody229_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody229_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 229 3

def AllocBody229_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody229_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody229_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody229_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody229_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody229_32 : StackLang.HolProg 64 :=
.seq AllocBody229_30 AllocBody229_31

def AllocBody229_33 : StackLang.HolProg 64 :=
.seq AllocBody229_29 AllocBody229_32

def AllocBody229_34 : StackLang.HolProg 64 :=
.seq AllocBody229_28 AllocBody229_33

def AllocBody229_35 : StackLang.HolProg 64 :=
.seq AllocBody229_27 AllocBody229_34

def AllocBody229_36 : StackLang.HolProg 64 :=
.seq AllocBody229_26 AllocBody229_35

def AllocBody229_37 : StackLang.HolProg 64 :=
.seq AllocBody229_25 AllocBody229_36

def AllocBody229_38 : StackLang.HolProg 64 :=
.seq AllocBody229_24 AllocBody229_37

def AllocBody229_39 : StackLang.HolProg 64 :=
.seq AllocBody229_23 AllocBody229_38

def AllocBody229_40 : StackLang.HolProg 64 :=
.seq AllocBody229_22 AllocBody229_39

def AllocBody229_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody229_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody229_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody229_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody229_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody229_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody229_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody229_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody229_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody229_52 : StackLang.HolProg 64 :=
.seq AllocBody229_50 AllocBody229_51

def AllocBody229_53 : StackLang.HolProg 64 :=
.seq AllocBody229_49 AllocBody229_52

def AllocBody229_54 : StackLang.HolProg 64 :=
.seq AllocBody229_48 AllocBody229_53

def AllocBody229_55 : StackLang.HolProg 64 :=
.seq AllocBody229_47 AllocBody229_54

def AllocBody229_56 : StackLang.HolProg 64 :=
.seq AllocBody229_46 AllocBody229_55

def AllocBody229_57 : StackLang.HolProg 64 :=
.seq AllocBody229_45 AllocBody229_56

def AllocBody229_58 : StackLang.HolProg 64 :=
.seq AllocBody229_44 AllocBody229_57

def AllocBody229_59 : StackLang.HolProg 64 :=
.seq AllocBody229_43 AllocBody229_58

def AllocBody229_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody229_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody229_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody229_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody229_64 : StackLang.HolProg 64 :=
.seq AllocBody229_62 AllocBody229_63

def AllocBody229_65 : StackLang.HolProg 64 :=
.seq AllocBody229_61 AllocBody229_64

def AllocBody229_66 : StackLang.HolProg 64 :=
.seq AllocBody229_60 AllocBody229_65

def AllocBody229_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody229_68 : StackLang.HolProg 64 :=
.seq AllocBody229_66 AllocBody229_67

def AllocBody229_69 : StackLang.HolProg 64 :=
.call (some (AllocBody229_59, 0, 229, 2)) (Sum.inl 207) (some (AllocBody229_68, 229, 3))

def AllocBody229_70 : StackLang.HolProg 64 :=
.seq AllocBody229_42 AllocBody229_69

def AllocBody229_71 : StackLang.HolProg 64 :=
.seq AllocBody229_41 AllocBody229_70

def AllocBody229_72 : StackLang.HolProg 64 :=
.seq AllocBody229_40 AllocBody229_71

def AllocBody229_73 : StackLang.HolProg 64 :=
.seq AllocBody229_21 AllocBody229_72

def AllocBody229_74 : StackLang.HolProg 64 :=
.seq AllocBody229_18 AllocBody229_73

def AllocBody229_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody229_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody229_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody229_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody229_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody229_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody229_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody229_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody229_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 8

def AllocBody229_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody229_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def AllocBody229_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 2

def AllocBody229_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody229_88 : StackLang.HolProg 64 :=
.seq AllocBody229_86 AllocBody229_87

def AllocBody229_89 : StackLang.HolProg 64 :=
.seq AllocBody229_85 AllocBody229_88

def AllocBody229_90 : StackLang.HolProg 64 :=
.seq AllocBody229_84 AllocBody229_89

def AllocBody229_91 : StackLang.HolProg 64 :=
.seq AllocBody229_83 AllocBody229_90

def AllocBody229_92 : StackLang.HolProg 64 :=
.seq AllocBody229_82 AllocBody229_91

def AllocBody229_93 : StackLang.HolProg 64 :=
.seq AllocBody229_81 AllocBody229_92

def AllocBody229_94 : StackLang.HolProg 64 :=
.seq AllocBody229_80 AllocBody229_93

def AllocBody229_95 : StackLang.HolProg 64 :=
.seq AllocBody229_79 AllocBody229_94

def AllocBody229_96 : StackLang.HolProg 64 :=
.seq AllocBody229_78 AllocBody229_95

def AllocBody229_97 : StackLang.HolProg 64 :=
.seq AllocBody229_77 AllocBody229_96

def AllocBody229_98 : StackLang.HolProg 64 :=
.seq AllocBody229_76 AllocBody229_97

def AllocBody229_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 384#64)

def AllocBody229_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody229_102 : StackLang.HolProg 64 :=
.seq AllocBody229_100 AllocBody229_101

def AllocBody229_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody229_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody229_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody229_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 229 5

def AllocBody229_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody229_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody229_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody229_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody229_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody229_113 : StackLang.HolProg 64 :=
.seq AllocBody229_111 AllocBody229_112

def AllocBody229_114 : StackLang.HolProg 64 :=
.seq AllocBody229_110 AllocBody229_113

def AllocBody229_115 : StackLang.HolProg 64 :=
.seq AllocBody229_109 AllocBody229_114

def AllocBody229_116 : StackLang.HolProg 64 :=
.seq AllocBody229_108 AllocBody229_115

def AllocBody229_117 : StackLang.HolProg 64 :=
.seq AllocBody229_107 AllocBody229_116

def AllocBody229_118 : StackLang.HolProg 64 :=
.seq AllocBody229_106 AllocBody229_117

def AllocBody229_119 : StackLang.HolProg 64 :=
.seq AllocBody229_105 AllocBody229_118

def AllocBody229_120 : StackLang.HolProg 64 :=
.seq AllocBody229_104 AllocBody229_119

def AllocBody229_121 : StackLang.HolProg 64 :=
.seq AllocBody229_103 AllocBody229_120

def AllocBody229_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody229_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody229_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody229_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody229_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody229_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody229_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody229_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody229_132 : StackLang.HolProg 64 :=
.seq AllocBody229_130 AllocBody229_131

def AllocBody229_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody229_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody229_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody229_136 : StackLang.HolProg 64 :=
.seq AllocBody229_134 AllocBody229_135

def AllocBody229_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody229_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody229_139 : StackLang.HolProg 64 :=
.seq AllocBody229_137 AllocBody229_138

def AllocBody229_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody229_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody229_142 : StackLang.HolProg 64 :=
.seq AllocBody229_140 AllocBody229_141

def AllocBody229_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody229_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody229_145 : StackLang.HolProg 64 :=
.seq AllocBody229_143 AllocBody229_144

def AllocBody229_146 : StackLang.HolProg 64 :=
.seq AllocBody229_142 AllocBody229_145

def AllocBody229_147 : StackLang.HolProg 64 :=
.seq AllocBody229_139 AllocBody229_146

def AllocBody229_148 : StackLang.HolProg 64 :=
.seq AllocBody229_136 AllocBody229_147

def AllocBody229_149 : StackLang.HolProg 64 :=
.seq AllocBody229_133 AllocBody229_148

def AllocBody229_150 : StackLang.HolProg 64 :=
.seq AllocBody229_132 AllocBody229_149

def AllocBody229_151 : StackLang.HolProg 64 :=
.seq AllocBody229_129 AllocBody229_150

def AllocBody229_152 : StackLang.HolProg 64 :=
.seq AllocBody229_128 AllocBody229_151

def AllocBody229_153 : StackLang.HolProg 64 :=
.seq AllocBody229_127 AllocBody229_152

def AllocBody229_154 : StackLang.HolProg 64 :=
.seq AllocBody229_126 AllocBody229_153

def AllocBody229_155 : StackLang.HolProg 64 :=
.seq AllocBody229_125 AllocBody229_154

def AllocBody229_156 : StackLang.HolProg 64 :=
.seq AllocBody229_124 AllocBody229_155

def AllocBody229_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody229_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody229_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody229_160 : StackLang.HolProg 64 :=
.seq AllocBody229_158 AllocBody229_159

def AllocBody229_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody229_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody229_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody229_164 : StackLang.HolProg 64 :=
.seq AllocBody229_162 AllocBody229_163

def AllocBody229_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody229_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody229_167 : StackLang.HolProg 64 :=
.seq AllocBody229_165 AllocBody229_166

def AllocBody229_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody229_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody229_170 : StackLang.HolProg 64 :=
.seq AllocBody229_168 AllocBody229_169

def AllocBody229_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody229_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody229_173 : StackLang.HolProg 64 :=
.seq AllocBody229_171 AllocBody229_172

def AllocBody229_174 : StackLang.HolProg 64 :=
.seq AllocBody229_170 AllocBody229_173

def AllocBody229_175 : StackLang.HolProg 64 :=
.seq AllocBody229_167 AllocBody229_174

def AllocBody229_176 : StackLang.HolProg 64 :=
.seq AllocBody229_164 AllocBody229_175

def AllocBody229_177 : StackLang.HolProg 64 :=
.seq AllocBody229_161 AllocBody229_176

def AllocBody229_178 : StackLang.HolProg 64 :=
.seq AllocBody229_160 AllocBody229_177

def AllocBody229_179 : StackLang.HolProg 64 :=
.seq AllocBody229_157 AllocBody229_178

def AllocBody229_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody229_181 : StackLang.HolProg 64 :=
.seq AllocBody229_179 AllocBody229_180

def AllocBody229_182 : StackLang.HolProg 64 :=
.call (some (AllocBody229_156, 0, 229, 4)) (Sum.inl 207) (some (AllocBody229_181, 229, 5))

def AllocBody229_183 : StackLang.HolProg 64 :=
.seq AllocBody229_123 AllocBody229_182

def AllocBody229_184 : StackLang.HolProg 64 :=
.seq AllocBody229_122 AllocBody229_183

def AllocBody229_185 : StackLang.HolProg 64 :=
.seq AllocBody229_121 AllocBody229_184

def AllocBody229_186 : StackLang.HolProg 64 :=
.seq AllocBody229_102 AllocBody229_185

def AllocBody229_187 : StackLang.HolProg 64 :=
.seq AllocBody229_99 AllocBody229_186

def AllocBody229_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody229_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody229_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 385#64)

def AllocBody229_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody229_193 : StackLang.HolProg 64 :=
.seq AllocBody229_191 AllocBody229_192

def AllocBody229_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody229_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody229_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody229_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 229 7

def AllocBody229_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody229_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody229_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody229_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody229_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody229_204 : StackLang.HolProg 64 :=
.seq AllocBody229_202 AllocBody229_203

def AllocBody229_205 : StackLang.HolProg 64 :=
.seq AllocBody229_201 AllocBody229_204

def AllocBody229_206 : StackLang.HolProg 64 :=
.seq AllocBody229_200 AllocBody229_205

def AllocBody229_207 : StackLang.HolProg 64 :=
.seq AllocBody229_199 AllocBody229_206

def AllocBody229_208 : StackLang.HolProg 64 :=
.seq AllocBody229_198 AllocBody229_207

def AllocBody229_209 : StackLang.HolProg 64 :=
.seq AllocBody229_197 AllocBody229_208

def AllocBody229_210 : StackLang.HolProg 64 :=
.seq AllocBody229_196 AllocBody229_209

def AllocBody229_211 : StackLang.HolProg 64 :=
.seq AllocBody229_195 AllocBody229_210

def AllocBody229_212 : StackLang.HolProg 64 :=
.seq AllocBody229_194 AllocBody229_211

def AllocBody229_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody229_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody229_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody229_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody229_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody229_220 : StackLang.HolProg 64 :=
.seq AllocBody229_218 AllocBody229_219

def AllocBody229_221 : StackLang.HolProg 64 :=
.seq AllocBody229_217 AllocBody229_220

def AllocBody229_222 : StackLang.HolProg 64 :=
.seq AllocBody229_216 AllocBody229_221

def AllocBody229_223 : StackLang.HolProg 64 :=
.seq AllocBody229_215 AllocBody229_222

def AllocBody229_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_225 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody229_226 : StackLang.HolProg 64 :=
.seq AllocBody229_224 AllocBody229_225

def AllocBody229_227 : StackLang.HolProg 64 :=
.call (some (AllocBody229_223, 0, 229, 6)) (Sum.inl 206) (some (AllocBody229_226, 229, 7))

def AllocBody229_228 : StackLang.HolProg 64 :=
.seq AllocBody229_214 AllocBody229_227

def AllocBody229_229 : StackLang.HolProg 64 :=
.seq AllocBody229_213 AllocBody229_228

def AllocBody229_230 : StackLang.HolProg 64 :=
.seq AllocBody229_212 AllocBody229_229

def AllocBody229_231 : StackLang.HolProg 64 :=
.seq AllocBody229_193 AllocBody229_230

def AllocBody229_232 : StackLang.HolProg 64 :=
.seq AllocBody229_190 AllocBody229_231

def AllocBody229_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody229_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody229_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody229_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody229_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody229_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 7#64)

def AllocBody229_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 386#64)

def AllocBody229_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody229_243 : StackLang.HolProg 64 :=
.seq AllocBody229_241 AllocBody229_242

def AllocBody229_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody229_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody229_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody229_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 229 9

def AllocBody229_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody229_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody229_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody229_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody229_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody229_254 : StackLang.HolProg 64 :=
.seq AllocBody229_252 AllocBody229_253

def AllocBody229_255 : StackLang.HolProg 64 :=
.seq AllocBody229_251 AllocBody229_254

def AllocBody229_256 : StackLang.HolProg 64 :=
.seq AllocBody229_250 AllocBody229_255

def AllocBody229_257 : StackLang.HolProg 64 :=
.seq AllocBody229_249 AllocBody229_256

def AllocBody229_258 : StackLang.HolProg 64 :=
.seq AllocBody229_248 AllocBody229_257

def AllocBody229_259 : StackLang.HolProg 64 :=
.seq AllocBody229_247 AllocBody229_258

def AllocBody229_260 : StackLang.HolProg 64 :=
.seq AllocBody229_246 AllocBody229_259

def AllocBody229_261 : StackLang.HolProg 64 :=
.seq AllocBody229_245 AllocBody229_260

def AllocBody229_262 : StackLang.HolProg 64 :=
.seq AllocBody229_244 AllocBody229_261

def AllocBody229_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody229_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody229_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody229_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody229_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody229_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody229_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody229_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody229_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody229_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody229_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 7

def AllocBody229_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody229_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody229_278 : StackLang.HolProg 64 :=
.seq AllocBody229_276 AllocBody229_277

def AllocBody229_279 : StackLang.HolProg 64 :=
.seq AllocBody229_275 AllocBody229_278

def AllocBody229_280 : StackLang.HolProg 64 :=
.seq AllocBody229_274 AllocBody229_279

def AllocBody229_281 : StackLang.HolProg 64 :=
.seq AllocBody229_273 AllocBody229_280

def AllocBody229_282 : StackLang.HolProg 64 :=
.seq AllocBody229_272 AllocBody229_281

def AllocBody229_283 : StackLang.HolProg 64 :=
.seq AllocBody229_271 AllocBody229_282

def AllocBody229_284 : StackLang.HolProg 64 :=
.seq AllocBody229_270 AllocBody229_283

def AllocBody229_285 : StackLang.HolProg 64 :=
.seq AllocBody229_269 AllocBody229_284

def AllocBody229_286 : StackLang.HolProg 64 :=
.seq AllocBody229_268 AllocBody229_285

def AllocBody229_287 : StackLang.HolProg 64 :=
.seq AllocBody229_267 AllocBody229_286

def AllocBody229_288 : StackLang.HolProg 64 :=
.seq AllocBody229_266 AllocBody229_287

def AllocBody229_289 : StackLang.HolProg 64 :=
.seq AllocBody229_265 AllocBody229_288

def AllocBody229_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody229_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody229_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 7

def AllocBody229_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody229_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody229_295 : StackLang.HolProg 64 :=
.seq AllocBody229_293 AllocBody229_294

def AllocBody229_296 : StackLang.HolProg 64 :=
.seq AllocBody229_292 AllocBody229_295

def AllocBody229_297 : StackLang.HolProg 64 :=
.seq AllocBody229_291 AllocBody229_296

def AllocBody229_298 : StackLang.HolProg 64 :=
.seq AllocBody229_290 AllocBody229_297

def AllocBody229_299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody229_300 : StackLang.HolProg 64 :=
.seq AllocBody229_298 AllocBody229_299

def AllocBody229_301 : StackLang.HolProg 64 :=
.call (some (AllocBody229_289, 0, 229, 8)) (Sum.inl 202) (some (AllocBody229_300, 229, 9))

def AllocBody229_302 : StackLang.HolProg 64 :=
.seq AllocBody229_264 AllocBody229_301

def AllocBody229_303 : StackLang.HolProg 64 :=
.seq AllocBody229_263 AllocBody229_302

def AllocBody229_304 : StackLang.HolProg 64 :=
.seq AllocBody229_262 AllocBody229_303

def AllocBody229_305 : StackLang.HolProg 64 :=
.seq AllocBody229_243 AllocBody229_304

def AllocBody229_306 : StackLang.HolProg 64 :=
.seq AllocBody229_240 AllocBody229_305

def AllocBody229_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody229_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody229_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody229_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody229_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 105

def AllocBody229_312 : StackLang.HolProg 64 :=
.seq AllocBody229_310 AllocBody229_311

def AllocBody229_313 : StackLang.HolProg 64 :=
.seq AllocBody229_309 AllocBody229_312

def AllocBody229_314 : StackLang.HolProg 64 :=
.seq AllocBody229_308 AllocBody229_313

def AllocBody229_315 : StackLang.HolProg 64 :=
.seq AllocBody229_307 AllocBody229_314

def AllocBody229_316 : StackLang.HolProg 64 :=
.seq AllocBody229_306 AllocBody229_315

def AllocBody229_317 : StackLang.HolProg 64 :=
.seq AllocBody229_239 AllocBody229_316

def AllocBody229_318 : StackLang.HolProg 64 :=
.seq AllocBody229_238 AllocBody229_317

def AllocBody229_319 : StackLang.HolProg 64 :=
.seq AllocBody229_237 AllocBody229_318

def AllocBody229_320 : StackLang.HolProg 64 :=
.seq AllocBody229_236 AllocBody229_319

def AllocBody229_321 : StackLang.HolProg 64 :=
.seq AllocBody229_235 AllocBody229_320

def AllocBody229_322 : StackLang.HolProg 64 :=
.seq AllocBody229_234 AllocBody229_321

def AllocBody229_323 : StackLang.HolProg 64 :=
.seq AllocBody229_233 AllocBody229_322

def AllocBody229_324 : StackLang.HolProg 64 :=
.seq AllocBody229_232 AllocBody229_323

def AllocBody229_325 : StackLang.HolProg 64 :=
.seq AllocBody229_189 AllocBody229_324

def AllocBody229_326 : StackLang.HolProg 64 :=
.seq AllocBody229_188 AllocBody229_325

def AllocBody229_327 : StackLang.HolProg 64 :=
.seq AllocBody229_187 AllocBody229_326

def AllocBody229_328 : StackLang.HolProg 64 :=
.seq AllocBody229_98 AllocBody229_327

def AllocBody229_329 : StackLang.HolProg 64 :=
.seq AllocBody229_75 AllocBody229_328

def AllocBody229_330 : StackLang.HolProg 64 :=
.seq AllocBody229_74 AllocBody229_329

def AllocBody229_331 : StackLang.HolProg 64 :=
.seq AllocBody229_17 AllocBody229_330

def AllocBody229_332 : StackLang.HolProg 64 :=
.seq AllocBody229_0 AllocBody229_331

def Alloc229 : Nat × StackLang.HolProg 64 := (229, AllocBody229_332)
theorem Alloc229_eq : StackAlloc.progComp (229, raw229) = Alloc229 := by
  kernel_rfl
#print axioms Alloc229_eq
end InitECandidate.Proofs.BackendStages
