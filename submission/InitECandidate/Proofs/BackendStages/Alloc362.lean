import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw362
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody362_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody362_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody362_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody362_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody362_4 : StackLang.HolProg 64 :=
.seq AllocBody362_2 AllocBody362_3

def AllocBody362_5 : StackLang.HolProg 64 :=
.seq AllocBody362_1 AllocBody362_4

def AllocBody362_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def AllocBody362_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody362_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody362_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody362_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody362_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def AllocBody362_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody362_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody362_14 : StackLang.HolProg 64 :=
.seq AllocBody362_12 AllocBody362_13

def AllocBody362_15 : StackLang.HolProg 64 :=
.seq AllocBody362_11 AllocBody362_14

def AllocBody362_16 : StackLang.HolProg 64 :=
.seq AllocBody362_10 AllocBody362_15

def AllocBody362_17 : StackLang.HolProg 64 :=
.seq AllocBody362_9 AllocBody362_16

def AllocBody362_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1042#64)

def AllocBody362_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody362_21 : StackLang.HolProg 64 :=
.seq AllocBody362_19 AllocBody362_20

def AllocBody362_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody362_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody362_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody362_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 362 3

def AllocBody362_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody362_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody362_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody362_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody362_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody362_32 : StackLang.HolProg 64 :=
.seq AllocBody362_30 AllocBody362_31

def AllocBody362_33 : StackLang.HolProg 64 :=
.seq AllocBody362_29 AllocBody362_32

def AllocBody362_34 : StackLang.HolProg 64 :=
.seq AllocBody362_28 AllocBody362_33

def AllocBody362_35 : StackLang.HolProg 64 :=
.seq AllocBody362_27 AllocBody362_34

def AllocBody362_36 : StackLang.HolProg 64 :=
.seq AllocBody362_26 AllocBody362_35

def AllocBody362_37 : StackLang.HolProg 64 :=
.seq AllocBody362_25 AllocBody362_36

def AllocBody362_38 : StackLang.HolProg 64 :=
.seq AllocBody362_24 AllocBody362_37

def AllocBody362_39 : StackLang.HolProg 64 :=
.seq AllocBody362_23 AllocBody362_38

def AllocBody362_40 : StackLang.HolProg 64 :=
.seq AllocBody362_22 AllocBody362_39

def AllocBody362_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody362_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody362_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody362_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody362_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody362_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody362_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody362_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody362_51 : StackLang.HolProg 64 :=
.seq AllocBody362_49 AllocBody362_50

def AllocBody362_52 : StackLang.HolProg 64 :=
.seq AllocBody362_48 AllocBody362_51

def AllocBody362_53 : StackLang.HolProg 64 :=
.seq AllocBody362_47 AllocBody362_52

def AllocBody362_54 : StackLang.HolProg 64 :=
.seq AllocBody362_46 AllocBody362_53

def AllocBody362_55 : StackLang.HolProg 64 :=
.seq AllocBody362_45 AllocBody362_54

def AllocBody362_56 : StackLang.HolProg 64 :=
.seq AllocBody362_44 AllocBody362_55

def AllocBody362_57 : StackLang.HolProg 64 :=
.seq AllocBody362_43 AllocBody362_56

def AllocBody362_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody362_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody362_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody362_61 : StackLang.HolProg 64 :=
.seq AllocBody362_59 AllocBody362_60

def AllocBody362_62 : StackLang.HolProg 64 :=
.seq AllocBody362_58 AllocBody362_61

def AllocBody362_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody362_64 : StackLang.HolProg 64 :=
.seq AllocBody362_62 AllocBody362_63

def AllocBody362_65 : StackLang.HolProg 64 :=
.call (some (AllocBody362_57, 0, 362, 2)) (Sum.inl 178) (some (AllocBody362_64, 362, 3))

def AllocBody362_66 : StackLang.HolProg 64 :=
.seq AllocBody362_42 AllocBody362_65

def AllocBody362_67 : StackLang.HolProg 64 :=
.seq AllocBody362_41 AllocBody362_66

def AllocBody362_68 : StackLang.HolProg 64 :=
.seq AllocBody362_40 AllocBody362_67

def AllocBody362_69 : StackLang.HolProg 64 :=
.seq AllocBody362_21 AllocBody362_68

def AllocBody362_70 : StackLang.HolProg 64 :=
.seq AllocBody362_18 AllocBody362_69

def AllocBody362_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody362_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody362_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody362_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody362_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody362_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody362_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody362_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody362_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody362_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody362_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody362_86 : StackLang.HolProg 64 :=
.seq AllocBody362_84 AllocBody362_85

def AllocBody362_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody362_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody362_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody362_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody362_91 : StackLang.HolProg 64 :=
.seq AllocBody362_89 AllocBody362_90

def AllocBody362_92 : StackLang.HolProg 64 :=
.seq AllocBody362_88 AllocBody362_91

def AllocBody362_93 : StackLang.HolProg 64 :=
.seq AllocBody362_87 AllocBody362_92

def AllocBody362_94 : StackLang.HolProg 64 :=
.seq AllocBody362_86 AllocBody362_93

def AllocBody362_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1043#64)

def AllocBody362_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody362_98 : StackLang.HolProg 64 :=
.seq AllocBody362_96 AllocBody362_97

def AllocBody362_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody362_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody362_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody362_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 362 5

def AllocBody362_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody362_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody362_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody362_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody362_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody362_109 : StackLang.HolProg 64 :=
.seq AllocBody362_107 AllocBody362_108

def AllocBody362_110 : StackLang.HolProg 64 :=
.seq AllocBody362_106 AllocBody362_109

def AllocBody362_111 : StackLang.HolProg 64 :=
.seq AllocBody362_105 AllocBody362_110

def AllocBody362_112 : StackLang.HolProg 64 :=
.seq AllocBody362_104 AllocBody362_111

def AllocBody362_113 : StackLang.HolProg 64 :=
.seq AllocBody362_103 AllocBody362_112

def AllocBody362_114 : StackLang.HolProg 64 :=
.seq AllocBody362_102 AllocBody362_113

def AllocBody362_115 : StackLang.HolProg 64 :=
.seq AllocBody362_101 AllocBody362_114

def AllocBody362_116 : StackLang.HolProg 64 :=
.seq AllocBody362_100 AllocBody362_115

def AllocBody362_117 : StackLang.HolProg 64 :=
.seq AllocBody362_99 AllocBody362_116

def AllocBody362_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody362_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody362_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody362_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody362_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody362_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody362_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody362_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody362_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody362_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody362_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody362_131 : StackLang.HolProg 64 :=
.seq AllocBody362_129 AllocBody362_130

def AllocBody362_132 : StackLang.HolProg 64 :=
.seq AllocBody362_128 AllocBody362_131

def AllocBody362_133 : StackLang.HolProg 64 :=
.seq AllocBody362_127 AllocBody362_132

def AllocBody362_134 : StackLang.HolProg 64 :=
.seq AllocBody362_126 AllocBody362_133

def AllocBody362_135 : StackLang.HolProg 64 :=
.seq AllocBody362_125 AllocBody362_134

def AllocBody362_136 : StackLang.HolProg 64 :=
.seq AllocBody362_124 AllocBody362_135

def AllocBody362_137 : StackLang.HolProg 64 :=
.seq AllocBody362_123 AllocBody362_136

def AllocBody362_138 : StackLang.HolProg 64 :=
.seq AllocBody362_122 AllocBody362_137

def AllocBody362_139 : StackLang.HolProg 64 :=
.seq AllocBody362_121 AllocBody362_138

def AllocBody362_140 : StackLang.HolProg 64 :=
.seq AllocBody362_120 AllocBody362_139

def AllocBody362_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody362_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody362_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody362_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody362_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody362_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody362_147 : StackLang.HolProg 64 :=
.seq AllocBody362_145 AllocBody362_146

def AllocBody362_148 : StackLang.HolProg 64 :=
.seq AllocBody362_144 AllocBody362_147

def AllocBody362_149 : StackLang.HolProg 64 :=
.seq AllocBody362_143 AllocBody362_148

def AllocBody362_150 : StackLang.HolProg 64 :=
.seq AllocBody362_142 AllocBody362_149

def AllocBody362_151 : StackLang.HolProg 64 :=
.seq AllocBody362_141 AllocBody362_150

def AllocBody362_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody362_153 : StackLang.HolProg 64 :=
.seq AllocBody362_151 AllocBody362_152

def AllocBody362_154 : StackLang.HolProg 64 :=
.call (some (AllocBody362_140, 0, 362, 4)) (Sum.inl 176) (some (AllocBody362_153, 362, 5))

def AllocBody362_155 : StackLang.HolProg 64 :=
.seq AllocBody362_119 AllocBody362_154

def AllocBody362_156 : StackLang.HolProg 64 :=
.seq AllocBody362_118 AllocBody362_155

def AllocBody362_157 : StackLang.HolProg 64 :=
.seq AllocBody362_117 AllocBody362_156

def AllocBody362_158 : StackLang.HolProg 64 :=
.seq AllocBody362_98 AllocBody362_157

def AllocBody362_159 : StackLang.HolProg 64 :=
.seq AllocBody362_95 AllocBody362_158

def AllocBody362_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody362_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody362_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody362_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def AllocBody362_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 5

def AllocBody362_167 : StackLang.HolProg 64 :=
.seq AllocBody362_165 AllocBody362_166

def AllocBody362_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody362_169 : StackLang.HolProg 64 :=
.seq AllocBody362_167 AllocBody362_168

def AllocBody362_170 : StackLang.HolProg 64 :=
.seq AllocBody362_164 AllocBody362_169

def AllocBody362_171 : StackLang.HolProg 64 :=
.seq AllocBody362_163 AllocBody362_170

def AllocBody362_172 : StackLang.HolProg 64 :=
.seq AllocBody362_162 AllocBody362_171

def AllocBody362_173 : StackLang.HolProg 64 :=
.seq AllocBody362_161 AllocBody362_172

def AllocBody362_174 : StackLang.HolProg 64 :=
.seq AllocBody362_160 AllocBody362_173

def AllocBody362_175 : StackLang.HolProg 64 :=
.seq AllocBody362_159 AllocBody362_174

def AllocBody362_176 : StackLang.HolProg 64 :=
.seq AllocBody362_94 AllocBody362_175

def AllocBody362_177 : StackLang.HolProg 64 :=
.seq AllocBody362_83 AllocBody362_176

def AllocBody362_178 : StackLang.HolProg 64 :=
.seq AllocBody362_82 AllocBody362_177

def AllocBody362_179 : StackLang.HolProg 64 :=
.seq AllocBody362_81 AllocBody362_178

def AllocBody362_180 : StackLang.HolProg 64 :=
.seq AllocBody362_80 AllocBody362_179

def AllocBody362_181 : StackLang.HolProg 64 :=
.seq AllocBody362_79 AllocBody362_180

def AllocBody362_182 : StackLang.HolProg 64 :=
.seq AllocBody362_78 AllocBody362_181

def AllocBody362_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody362_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody362_185 : StackLang.HolProg 64 :=
.seq AllocBody362_183 AllocBody362_184

def AllocBody362_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody362_182 AllocBody362_185

def AllocBody362_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody362_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody362_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody362_190 : StackLang.HolProg 64 :=
.seq AllocBody362_188 AllocBody362_189

def AllocBody362_191 : StackLang.HolProg 64 :=
.seq AllocBody362_187 AllocBody362_190

def AllocBody362_192 : StackLang.HolProg 64 :=
.seq AllocBody362_186 AllocBody362_191

def AllocBody362_193 : StackLang.HolProg 64 :=
.seq AllocBody362_77 AllocBody362_192

def AllocBody362_194 : StackLang.HolProg 64 :=
.loop AllocBody362_193

def AllocBody362_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody362_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody362_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody362_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody362_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody362_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody362_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody362_202 : StackLang.HolProg 64 :=
.seq AllocBody362_200 AllocBody362_201

def AllocBody362_203 : StackLang.HolProg 64 :=
.seq AllocBody362_199 AllocBody362_202

def AllocBody362_204 : StackLang.HolProg 64 :=
.seq AllocBody362_198 AllocBody362_203

def AllocBody362_205 : StackLang.HolProg 64 :=
.seq AllocBody362_197 AllocBody362_204

def AllocBody362_206 : StackLang.HolProg 64 :=
.seq AllocBody362_196 AllocBody362_205

def AllocBody362_207 : StackLang.HolProg 64 :=
.seq AllocBody362_195 AllocBody362_206

def AllocBody362_208 : StackLang.HolProg 64 :=
.seq AllocBody362_194 AllocBody362_207

def AllocBody362_209 : StackLang.HolProg 64 :=
.seq AllocBody362_76 AllocBody362_208

def AllocBody362_210 : StackLang.HolProg 64 :=
.seq AllocBody362_75 AllocBody362_209

def AllocBody362_211 : StackLang.HolProg 64 :=
.seq AllocBody362_74 AllocBody362_210

def AllocBody362_212 : StackLang.HolProg 64 :=
.seq AllocBody362_73 AllocBody362_211

def AllocBody362_213 : StackLang.HolProg 64 :=
.seq AllocBody362_72 AllocBody362_212

def AllocBody362_214 : StackLang.HolProg 64 :=
.seq AllocBody362_71 AllocBody362_213

def AllocBody362_215 : StackLang.HolProg 64 :=
.seq AllocBody362_70 AllocBody362_214

def AllocBody362_216 : StackLang.HolProg 64 :=
.seq AllocBody362_17 AllocBody362_215

def AllocBody362_217 : StackLang.HolProg 64 :=
.seq AllocBody362_8 AllocBody362_216

def AllocBody362_218 : StackLang.HolProg 64 :=
.seq AllocBody362_7 AllocBody362_217

def AllocBody362_219 : StackLang.HolProg 64 :=
.seq AllocBody362_6 AllocBody362_218

def AllocBody362_220 : StackLang.HolProg 64 :=
.seq AllocBody362_5 AllocBody362_219

def AllocBody362_221 : StackLang.HolProg 64 :=
.seq AllocBody362_0 AllocBody362_220

def Alloc362 : Nat × StackLang.HolProg 64 := (362, AllocBody362_221)
theorem Alloc362_eq : StackAlloc.progComp (362, raw362) = Alloc362 := by
  kernel_rfl
#print axioms Alloc362_eq
end InitECandidate.Proofs.BackendStages
