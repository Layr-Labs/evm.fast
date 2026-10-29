import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function362
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody362_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody362_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody362_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody362_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody362_4 : StackLang.HolProg 64 :=
.seq rawBody362_2 rawBody362_3

def rawBody362_5 : StackLang.HolProg 64 :=
.seq rawBody362_1 rawBody362_4

def rawBody362_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def rawBody362_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody362_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody362_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody362_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody362_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody362_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody362_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def rawBody362_14 : StackLang.HolProg 64 :=
.seq rawBody362_12 rawBody362_13

def rawBody362_15 : StackLang.HolProg 64 :=
.seq rawBody362_11 rawBody362_14

def rawBody362_16 : StackLang.HolProg 64 :=
.seq rawBody362_10 rawBody362_15

def rawBody362_17 : StackLang.HolProg 64 :=
.seq rawBody362_9 rawBody362_16

def rawBody362_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1042#64)

def rawBody362_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody362_21 : StackLang.HolProg 64 :=
.seq rawBody362_19 rawBody362_20

def rawBody362_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody362_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody362_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody362_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 362 3

def rawBody362_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody362_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody362_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody362_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody362_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody362_32 : StackLang.HolProg 64 :=
.seq rawBody362_30 rawBody362_31

def rawBody362_33 : StackLang.HolProg 64 :=
.seq rawBody362_29 rawBody362_32

def rawBody362_34 : StackLang.HolProg 64 :=
.seq rawBody362_28 rawBody362_33

def rawBody362_35 : StackLang.HolProg 64 :=
.seq rawBody362_27 rawBody362_34

def rawBody362_36 : StackLang.HolProg 64 :=
.seq rawBody362_26 rawBody362_35

def rawBody362_37 : StackLang.HolProg 64 :=
.seq rawBody362_25 rawBody362_36

def rawBody362_38 : StackLang.HolProg 64 :=
.seq rawBody362_24 rawBody362_37

def rawBody362_39 : StackLang.HolProg 64 :=
.seq rawBody362_23 rawBody362_38

def rawBody362_40 : StackLang.HolProg 64 :=
.seq rawBody362_22 rawBody362_39

def rawBody362_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody362_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody362_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody362_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody362_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody362_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody362_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody362_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody362_51 : StackLang.HolProg 64 :=
.seq rawBody362_49 rawBody362_50

def rawBody362_52 : StackLang.HolProg 64 :=
.seq rawBody362_48 rawBody362_51

def rawBody362_53 : StackLang.HolProg 64 :=
.seq rawBody362_47 rawBody362_52

def rawBody362_54 : StackLang.HolProg 64 :=
.seq rawBody362_46 rawBody362_53

def rawBody362_55 : StackLang.HolProg 64 :=
.seq rawBody362_45 rawBody362_54

def rawBody362_56 : StackLang.HolProg 64 :=
.seq rawBody362_44 rawBody362_55

def rawBody362_57 : StackLang.HolProg 64 :=
.seq rawBody362_43 rawBody362_56

def rawBody362_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody362_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody362_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody362_61 : StackLang.HolProg 64 :=
.seq rawBody362_59 rawBody362_60

def rawBody362_62 : StackLang.HolProg 64 :=
.seq rawBody362_58 rawBody362_61

def rawBody362_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody362_64 : StackLang.HolProg 64 :=
.seq rawBody362_62 rawBody362_63

def rawBody362_65 : StackLang.HolProg 64 :=
.call (some (rawBody362_57, 0, 362, 2)) (Sum.inl 178) (some (rawBody362_64, 362, 3))

def rawBody362_66 : StackLang.HolProg 64 :=
.seq rawBody362_42 rawBody362_65

def rawBody362_67 : StackLang.HolProg 64 :=
.seq rawBody362_41 rawBody362_66

def rawBody362_68 : StackLang.HolProg 64 :=
.seq rawBody362_40 rawBody362_67

def rawBody362_69 : StackLang.HolProg 64 :=
.seq rawBody362_21 rawBody362_68

def rawBody362_70 : StackLang.HolProg 64 :=
.seq rawBody362_18 rawBody362_69

def rawBody362_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody362_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody362_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody362_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody362_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody362_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody362_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody362_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody362_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody362_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody362_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody362_86 : StackLang.HolProg 64 :=
.seq rawBody362_84 rawBody362_85

def rawBody362_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody362_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody362_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody362_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def rawBody362_91 : StackLang.HolProg 64 :=
.seq rawBody362_89 rawBody362_90

def rawBody362_92 : StackLang.HolProg 64 :=
.seq rawBody362_88 rawBody362_91

def rawBody362_93 : StackLang.HolProg 64 :=
.seq rawBody362_87 rawBody362_92

def rawBody362_94 : StackLang.HolProg 64 :=
.seq rawBody362_86 rawBody362_93

def rawBody362_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1043#64)

def rawBody362_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody362_98 : StackLang.HolProg 64 :=
.seq rawBody362_96 rawBody362_97

def rawBody362_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody362_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody362_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody362_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 362 5

def rawBody362_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody362_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody362_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody362_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody362_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody362_109 : StackLang.HolProg 64 :=
.seq rawBody362_107 rawBody362_108

def rawBody362_110 : StackLang.HolProg 64 :=
.seq rawBody362_106 rawBody362_109

def rawBody362_111 : StackLang.HolProg 64 :=
.seq rawBody362_105 rawBody362_110

def rawBody362_112 : StackLang.HolProg 64 :=
.seq rawBody362_104 rawBody362_111

def rawBody362_113 : StackLang.HolProg 64 :=
.seq rawBody362_103 rawBody362_112

def rawBody362_114 : StackLang.HolProg 64 :=
.seq rawBody362_102 rawBody362_113

def rawBody362_115 : StackLang.HolProg 64 :=
.seq rawBody362_101 rawBody362_114

def rawBody362_116 : StackLang.HolProg 64 :=
.seq rawBody362_100 rawBody362_115

def rawBody362_117 : StackLang.HolProg 64 :=
.seq rawBody362_99 rawBody362_116

def rawBody362_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody362_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody362_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody362_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody362_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody362_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody362_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody362_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody362_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody362_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody362_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody362_131 : StackLang.HolProg 64 :=
.seq rawBody362_129 rawBody362_130

def rawBody362_132 : StackLang.HolProg 64 :=
.seq rawBody362_128 rawBody362_131

def rawBody362_133 : StackLang.HolProg 64 :=
.seq rawBody362_127 rawBody362_132

def rawBody362_134 : StackLang.HolProg 64 :=
.seq rawBody362_126 rawBody362_133

def rawBody362_135 : StackLang.HolProg 64 :=
.seq rawBody362_125 rawBody362_134

def rawBody362_136 : StackLang.HolProg 64 :=
.seq rawBody362_124 rawBody362_135

def rawBody362_137 : StackLang.HolProg 64 :=
.seq rawBody362_123 rawBody362_136

def rawBody362_138 : StackLang.HolProg 64 :=
.seq rawBody362_122 rawBody362_137

def rawBody362_139 : StackLang.HolProg 64 :=
.seq rawBody362_121 rawBody362_138

def rawBody362_140 : StackLang.HolProg 64 :=
.seq rawBody362_120 rawBody362_139

def rawBody362_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody362_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody362_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody362_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody362_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody362_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody362_147 : StackLang.HolProg 64 :=
.seq rawBody362_145 rawBody362_146

def rawBody362_148 : StackLang.HolProg 64 :=
.seq rawBody362_144 rawBody362_147

def rawBody362_149 : StackLang.HolProg 64 :=
.seq rawBody362_143 rawBody362_148

def rawBody362_150 : StackLang.HolProg 64 :=
.seq rawBody362_142 rawBody362_149

def rawBody362_151 : StackLang.HolProg 64 :=
.seq rawBody362_141 rawBody362_150

def rawBody362_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody362_153 : StackLang.HolProg 64 :=
.seq rawBody362_151 rawBody362_152

def rawBody362_154 : StackLang.HolProg 64 :=
.call (some (rawBody362_140, 0, 362, 4)) (Sum.inl 176) (some (rawBody362_153, 362, 5))

def rawBody362_155 : StackLang.HolProg 64 :=
.seq rawBody362_119 rawBody362_154

def rawBody362_156 : StackLang.HolProg 64 :=
.seq rawBody362_118 rawBody362_155

def rawBody362_157 : StackLang.HolProg 64 :=
.seq rawBody362_117 rawBody362_156

def rawBody362_158 : StackLang.HolProg 64 :=
.seq rawBody362_98 rawBody362_157

def rawBody362_159 : StackLang.HolProg 64 :=
.seq rawBody362_95 rawBody362_158

def rawBody362_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody362_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody362_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody362_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def rawBody362_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 5

def rawBody362_167 : StackLang.HolProg 64 :=
.seq rawBody362_165 rawBody362_166

def rawBody362_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody362_169 : StackLang.HolProg 64 :=
.seq rawBody362_167 rawBody362_168

def rawBody362_170 : StackLang.HolProg 64 :=
.seq rawBody362_164 rawBody362_169

def rawBody362_171 : StackLang.HolProg 64 :=
.seq rawBody362_163 rawBody362_170

def rawBody362_172 : StackLang.HolProg 64 :=
.seq rawBody362_162 rawBody362_171

def rawBody362_173 : StackLang.HolProg 64 :=
.seq rawBody362_161 rawBody362_172

def rawBody362_174 : StackLang.HolProg 64 :=
.seq rawBody362_160 rawBody362_173

def rawBody362_175 : StackLang.HolProg 64 :=
.seq rawBody362_159 rawBody362_174

def rawBody362_176 : StackLang.HolProg 64 :=
.seq rawBody362_94 rawBody362_175

def rawBody362_177 : StackLang.HolProg 64 :=
.seq rawBody362_83 rawBody362_176

def rawBody362_178 : StackLang.HolProg 64 :=
.seq rawBody362_82 rawBody362_177

def rawBody362_179 : StackLang.HolProg 64 :=
.seq rawBody362_81 rawBody362_178

def rawBody362_180 : StackLang.HolProg 64 :=
.seq rawBody362_80 rawBody362_179

def rawBody362_181 : StackLang.HolProg 64 :=
.seq rawBody362_79 rawBody362_180

def rawBody362_182 : StackLang.HolProg 64 :=
.seq rawBody362_78 rawBody362_181

def rawBody362_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody362_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody362_185 : StackLang.HolProg 64 :=
.seq rawBody362_183 rawBody362_184

def rawBody362_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody362_182 rawBody362_185

def rawBody362_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody362_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody362_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody362_190 : StackLang.HolProg 64 :=
.seq rawBody362_188 rawBody362_189

def rawBody362_191 : StackLang.HolProg 64 :=
.seq rawBody362_187 rawBody362_190

def rawBody362_192 : StackLang.HolProg 64 :=
.seq rawBody362_186 rawBody362_191

def rawBody362_193 : StackLang.HolProg 64 :=
.seq rawBody362_77 rawBody362_192

def rawBody362_194 : StackLang.HolProg 64 :=
.loop rawBody362_193

def rawBody362_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody362_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody362_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody362_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody362_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody362_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody362_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody362_202 : StackLang.HolProg 64 :=
.seq rawBody362_200 rawBody362_201

def rawBody362_203 : StackLang.HolProg 64 :=
.seq rawBody362_199 rawBody362_202

def rawBody362_204 : StackLang.HolProg 64 :=
.seq rawBody362_198 rawBody362_203

def rawBody362_205 : StackLang.HolProg 64 :=
.seq rawBody362_197 rawBody362_204

def rawBody362_206 : StackLang.HolProg 64 :=
.seq rawBody362_196 rawBody362_205

def rawBody362_207 : StackLang.HolProg 64 :=
.seq rawBody362_195 rawBody362_206

def rawBody362_208 : StackLang.HolProg 64 :=
.seq rawBody362_194 rawBody362_207

def rawBody362_209 : StackLang.HolProg 64 :=
.seq rawBody362_76 rawBody362_208

def rawBody362_210 : StackLang.HolProg 64 :=
.seq rawBody362_75 rawBody362_209

def rawBody362_211 : StackLang.HolProg 64 :=
.seq rawBody362_74 rawBody362_210

def rawBody362_212 : StackLang.HolProg 64 :=
.seq rawBody362_73 rawBody362_211

def rawBody362_213 : StackLang.HolProg 64 :=
.seq rawBody362_72 rawBody362_212

def rawBody362_214 : StackLang.HolProg 64 :=
.seq rawBody362_71 rawBody362_213

def rawBody362_215 : StackLang.HolProg 64 :=
.seq rawBody362_70 rawBody362_214

def rawBody362_216 : StackLang.HolProg 64 :=
.seq rawBody362_17 rawBody362_215

def rawBody362_217 : StackLang.HolProg 64 :=
.seq rawBody362_8 rawBody362_216

def rawBody362_218 : StackLang.HolProg 64 :=
.seq rawBody362_7 rawBody362_217

def rawBody362_219 : StackLang.HolProg 64 :=
.seq rawBody362_6 rawBody362_218

def rawBody362_220 : StackLang.HolProg 64 :=
.seq rawBody362_5 rawBody362_219

def rawBody362_221 : StackLang.HolProg 64 :=
.seq rawBody362_0 rawBody362_220

def raw362 : StackLang.HolProg 64 := rawBody362_221
theorem raw362_eq : StackRawCall.compTop RawInfo.rawInfo (function362 (.list [])).1 = raw362 := by
  kernel_rfl
#print axioms raw362_eq
end InitECandidate.Proofs.BackendStages
