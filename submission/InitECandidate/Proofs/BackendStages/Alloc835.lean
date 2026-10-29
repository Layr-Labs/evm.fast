import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw835
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody835_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody835_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody835_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody835_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody835_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody835_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody835_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody835_7 : StackLang.HolProg 64 :=
.seq AllocBody835_5 AllocBody835_6

def AllocBody835_8 : StackLang.HolProg 64 :=
.seq AllocBody835_4 AllocBody835_7

def AllocBody835_9 : StackLang.HolProg 64 :=
.seq AllocBody835_3 AllocBody835_8

def AllocBody835_10 : StackLang.HolProg 64 :=
.seq AllocBody835_2 AllocBody835_9

def AllocBody835_11 : StackLang.HolProg 64 :=
.seq AllocBody835_1 AllocBody835_10

def AllocBody835_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4156#64)

def AllocBody835_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody835_15 : StackLang.HolProg 64 :=
.seq AllocBody835_13 AllocBody835_14

def AllocBody835_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody835_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody835_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody835_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 835 3

def AllocBody835_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody835_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody835_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody835_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody835_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody835_26 : StackLang.HolProg 64 :=
.seq AllocBody835_24 AllocBody835_25

def AllocBody835_27 : StackLang.HolProg 64 :=
.seq AllocBody835_23 AllocBody835_26

def AllocBody835_28 : StackLang.HolProg 64 :=
.seq AllocBody835_22 AllocBody835_27

def AllocBody835_29 : StackLang.HolProg 64 :=
.seq AllocBody835_21 AllocBody835_28

def AllocBody835_30 : StackLang.HolProg 64 :=
.seq AllocBody835_20 AllocBody835_29

def AllocBody835_31 : StackLang.HolProg 64 :=
.seq AllocBody835_19 AllocBody835_30

def AllocBody835_32 : StackLang.HolProg 64 :=
.seq AllocBody835_18 AllocBody835_31

def AllocBody835_33 : StackLang.HolProg 64 :=
.seq AllocBody835_17 AllocBody835_32

def AllocBody835_34 : StackLang.HolProg 64 :=
.seq AllocBody835_16 AllocBody835_33

def AllocBody835_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody835_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody835_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody835_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody835_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody835_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody835_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody835_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody835_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody835_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody835_47 : StackLang.HolProg 64 :=
.seq AllocBody835_45 AllocBody835_46

def AllocBody835_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody835_49 : StackLang.HolProg 64 :=
.seq AllocBody835_47 AllocBody835_48

def AllocBody835_50 : StackLang.HolProg 64 :=
.seq AllocBody835_44 AllocBody835_49

def AllocBody835_51 : StackLang.HolProg 64 :=
.seq AllocBody835_43 AllocBody835_50

def AllocBody835_52 : StackLang.HolProg 64 :=
.seq AllocBody835_42 AllocBody835_51

def AllocBody835_53 : StackLang.HolProg 64 :=
.seq AllocBody835_41 AllocBody835_52

def AllocBody835_54 : StackLang.HolProg 64 :=
.seq AllocBody835_40 AllocBody835_53

def AllocBody835_55 : StackLang.HolProg 64 :=
.seq AllocBody835_39 AllocBody835_54

def AllocBody835_56 : StackLang.HolProg 64 :=
.seq AllocBody835_38 AllocBody835_55

def AllocBody835_57 : StackLang.HolProg 64 :=
.seq AllocBody835_37 AllocBody835_56

def AllocBody835_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody835_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody835_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody835_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody835_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody835_63 : StackLang.HolProg 64 :=
.seq AllocBody835_61 AllocBody835_62

def AllocBody835_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody835_65 : StackLang.HolProg 64 :=
.seq AllocBody835_63 AllocBody835_64

def AllocBody835_66 : StackLang.HolProg 64 :=
.seq AllocBody835_60 AllocBody835_65

def AllocBody835_67 : StackLang.HolProg 64 :=
.seq AllocBody835_59 AllocBody835_66

def AllocBody835_68 : StackLang.HolProg 64 :=
.seq AllocBody835_58 AllocBody835_67

def AllocBody835_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody835_70 : StackLang.HolProg 64 :=
.seq AllocBody835_68 AllocBody835_69

def AllocBody835_71 : StackLang.HolProg 64 :=
.call (some (AllocBody835_57, 0, 835, 2)) (Sum.inl 93) (some (AllocBody835_70, 835, 3))

def AllocBody835_72 : StackLang.HolProg 64 :=
.seq AllocBody835_36 AllocBody835_71

def AllocBody835_73 : StackLang.HolProg 64 :=
.seq AllocBody835_35 AllocBody835_72

def AllocBody835_74 : StackLang.HolProg 64 :=
.seq AllocBody835_34 AllocBody835_73

def AllocBody835_75 : StackLang.HolProg 64 :=
.seq AllocBody835_15 AllocBody835_74

def AllocBody835_76 : StackLang.HolProg 64 :=
.seq AllocBody835_12 AllocBody835_75

def AllocBody835_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody835_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody835_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def AllocBody835_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody835_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody835_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody835_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody835_90 : StackLang.HolProg 64 :=
.seq AllocBody835_88 AllocBody835_89

def AllocBody835_91 : StackLang.HolProg 64 :=
.seq AllocBody835_87 AllocBody835_90

def AllocBody835_92 : StackLang.HolProg 64 :=
.seq AllocBody835_86 AllocBody835_91

def AllocBody835_93 : StackLang.HolProg 64 :=
.seq AllocBody835_85 AllocBody835_92

def AllocBody835_94 : StackLang.HolProg 64 :=
.seq AllocBody835_84 AllocBody835_93

def AllocBody835_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody835_97 : StackLang.HolProg 64 :=
.seq AllocBody835_95 AllocBody835_96

def AllocBody835_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody835_94 AllocBody835_97

def AllocBody835_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody835_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody835_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody835_103 : StackLang.HolProg 64 :=
.seq AllocBody835_101 AllocBody835_102

def AllocBody835_104 : StackLang.HolProg 64 :=
.seq AllocBody835_100 AllocBody835_103

def AllocBody835_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4157#64)

def AllocBody835_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody835_108 : StackLang.HolProg 64 :=
.seq AllocBody835_106 AllocBody835_107

def AllocBody835_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody835_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody835_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody835_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 835 5

def AllocBody835_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody835_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody835_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody835_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody835_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody835_119 : StackLang.HolProg 64 :=
.seq AllocBody835_117 AllocBody835_118

def AllocBody835_120 : StackLang.HolProg 64 :=
.seq AllocBody835_116 AllocBody835_119

def AllocBody835_121 : StackLang.HolProg 64 :=
.seq AllocBody835_115 AllocBody835_120

def AllocBody835_122 : StackLang.HolProg 64 :=
.seq AllocBody835_114 AllocBody835_121

def AllocBody835_123 : StackLang.HolProg 64 :=
.seq AllocBody835_113 AllocBody835_122

def AllocBody835_124 : StackLang.HolProg 64 :=
.seq AllocBody835_112 AllocBody835_123

def AllocBody835_125 : StackLang.HolProg 64 :=
.seq AllocBody835_111 AllocBody835_124

def AllocBody835_126 : StackLang.HolProg 64 :=
.seq AllocBody835_110 AllocBody835_125

def AllocBody835_127 : StackLang.HolProg 64 :=
.seq AllocBody835_109 AllocBody835_126

def AllocBody835_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody835_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody835_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody835_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody835_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody835_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody835_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody835_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody835_138 : StackLang.HolProg 64 :=
.seq AllocBody835_136 AllocBody835_137

def AllocBody835_139 : StackLang.HolProg 64 :=
.seq AllocBody835_135 AllocBody835_138

def AllocBody835_140 : StackLang.HolProg 64 :=
.seq AllocBody835_134 AllocBody835_139

def AllocBody835_141 : StackLang.HolProg 64 :=
.seq AllocBody835_133 AllocBody835_140

def AllocBody835_142 : StackLang.HolProg 64 :=
.seq AllocBody835_132 AllocBody835_141

def AllocBody835_143 : StackLang.HolProg 64 :=
.seq AllocBody835_131 AllocBody835_142

def AllocBody835_144 : StackLang.HolProg 64 :=
.seq AllocBody835_130 AllocBody835_143

def AllocBody835_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody835_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody835_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody835_148 : StackLang.HolProg 64 :=
.seq AllocBody835_146 AllocBody835_147

def AllocBody835_149 : StackLang.HolProg 64 :=
.seq AllocBody835_145 AllocBody835_148

def AllocBody835_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody835_151 : StackLang.HolProg 64 :=
.seq AllocBody835_149 AllocBody835_150

def AllocBody835_152 : StackLang.HolProg 64 :=
.call (some (AllocBody835_144, 0, 835, 4)) (Sum.inl 138) (some (AllocBody835_151, 835, 5))

def AllocBody835_153 : StackLang.HolProg 64 :=
.seq AllocBody835_129 AllocBody835_152

def AllocBody835_154 : StackLang.HolProg 64 :=
.seq AllocBody835_128 AllocBody835_153

def AllocBody835_155 : StackLang.HolProg 64 :=
.seq AllocBody835_127 AllocBody835_154

def AllocBody835_156 : StackLang.HolProg 64 :=
.seq AllocBody835_108 AllocBody835_155

def AllocBody835_157 : StackLang.HolProg 64 :=
.seq AllocBody835_105 AllocBody835_156

def AllocBody835_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody835_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody835_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_165 : StackLang.HolProg 64 :=
.seq AllocBody835_163 AllocBody835_164

def AllocBody835_166 : StackLang.HolProg 64 :=
.seq AllocBody835_162 AllocBody835_165

def AllocBody835_167 : StackLang.HolProg 64 :=
.seq AllocBody835_161 AllocBody835_166

def AllocBody835_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_170 : StackLang.HolProg 64 :=
.seq AllocBody835_168 AllocBody835_169

def AllocBody835_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody835_167 AllocBody835_170

def AllocBody835_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody835_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_177 : StackLang.HolProg 64 :=
.seq AllocBody835_175 AllocBody835_176

def AllocBody835_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def AllocBody835_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody835_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody835_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_184 : StackLang.HolProg 64 :=
.seq AllocBody835_182 AllocBody835_183

def AllocBody835_185 : StackLang.HolProg 64 :=
.seq AllocBody835_181 AllocBody835_184

def AllocBody835_186 : StackLang.HolProg 64 :=
.seq AllocBody835_180 AllocBody835_185

def AllocBody835_187 : StackLang.HolProg 64 :=
.seq AllocBody835_179 AllocBody835_186

def AllocBody835_188 : StackLang.HolProg 64 :=
.seq AllocBody835_178 AllocBody835_187

def AllocBody835_189 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody835_177 AllocBody835_188

def AllocBody835_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody835_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody835_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_196 : StackLang.HolProg 64 :=
.seq AllocBody835_194 AllocBody835_195

def AllocBody835_197 : StackLang.HolProg 64 :=
.seq AllocBody835_193 AllocBody835_196

def AllocBody835_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_200 : StackLang.HolProg 64 :=
.seq AllocBody835_198 AllocBody835_199

def AllocBody835_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody835_197 AllocBody835_200

def AllocBody835_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody835_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 500#64)

def AllocBody835_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 500#64)

def AllocBody835_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_210 : StackLang.HolProg 64 :=
.seq AllocBody835_208 AllocBody835_209

def AllocBody835_211 : StackLang.HolProg 64 :=
.seq AllocBody835_207 AllocBody835_210

def AllocBody835_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody835_214 : StackLang.HolProg 64 :=
.seq AllocBody835_212 AllocBody835_213

def AllocBody835_215 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody835_211 AllocBody835_214

def AllocBody835_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody835_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody835_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody835_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody835_220 : StackLang.HolProg 64 :=
.seq AllocBody835_218 AllocBody835_219

def AllocBody835_221 : StackLang.HolProg 64 :=
.seq AllocBody835_217 AllocBody835_220

def AllocBody835_222 : StackLang.HolProg 64 :=
.seq AllocBody835_216 AllocBody835_221

def AllocBody835_223 : StackLang.HolProg 64 :=
.seq AllocBody835_215 AllocBody835_222

def AllocBody835_224 : StackLang.HolProg 64 :=
.seq AllocBody835_206 AllocBody835_223

def AllocBody835_225 : StackLang.HolProg 64 :=
.seq AllocBody835_205 AllocBody835_224

def AllocBody835_226 : StackLang.HolProg 64 :=
.seq AllocBody835_204 AllocBody835_225

def AllocBody835_227 : StackLang.HolProg 64 :=
.seq AllocBody835_203 AllocBody835_226

def AllocBody835_228 : StackLang.HolProg 64 :=
.seq AllocBody835_202 AllocBody835_227

def AllocBody835_229 : StackLang.HolProg 64 :=
.seq AllocBody835_201 AllocBody835_228

def AllocBody835_230 : StackLang.HolProg 64 :=
.seq AllocBody835_192 AllocBody835_229

def AllocBody835_231 : StackLang.HolProg 64 :=
.seq AllocBody835_191 AllocBody835_230

def AllocBody835_232 : StackLang.HolProg 64 :=
.seq AllocBody835_190 AllocBody835_231

def AllocBody835_233 : StackLang.HolProg 64 :=
.seq AllocBody835_189 AllocBody835_232

def AllocBody835_234 : StackLang.HolProg 64 :=
.seq AllocBody835_174 AllocBody835_233

def AllocBody835_235 : StackLang.HolProg 64 :=
.seq AllocBody835_173 AllocBody835_234

def AllocBody835_236 : StackLang.HolProg 64 :=
.seq AllocBody835_172 AllocBody835_235

def AllocBody835_237 : StackLang.HolProg 64 :=
.seq AllocBody835_171 AllocBody835_236

def AllocBody835_238 : StackLang.HolProg 64 :=
.seq AllocBody835_160 AllocBody835_237

def AllocBody835_239 : StackLang.HolProg 64 :=
.seq AllocBody835_159 AllocBody835_238

def AllocBody835_240 : StackLang.HolProg 64 :=
.seq AllocBody835_158 AllocBody835_239

def AllocBody835_241 : StackLang.HolProg 64 :=
.seq AllocBody835_157 AllocBody835_240

def AllocBody835_242 : StackLang.HolProg 64 :=
.seq AllocBody835_104 AllocBody835_241

def AllocBody835_243 : StackLang.HolProg 64 :=
.seq AllocBody835_99 AllocBody835_242

def AllocBody835_244 : StackLang.HolProg 64 :=
.seq AllocBody835_98 AllocBody835_243

def AllocBody835_245 : StackLang.HolProg 64 :=
.seq AllocBody835_83 AllocBody835_244

def AllocBody835_246 : StackLang.HolProg 64 :=
.seq AllocBody835_82 AllocBody835_245

def AllocBody835_247 : StackLang.HolProg 64 :=
.seq AllocBody835_81 AllocBody835_246

def AllocBody835_248 : StackLang.HolProg 64 :=
.seq AllocBody835_80 AllocBody835_247

def AllocBody835_249 : StackLang.HolProg 64 :=
.seq AllocBody835_79 AllocBody835_248

def AllocBody835_250 : StackLang.HolProg 64 :=
.seq AllocBody835_78 AllocBody835_249

def AllocBody835_251 : StackLang.HolProg 64 :=
.seq AllocBody835_77 AllocBody835_250

def AllocBody835_252 : StackLang.HolProg 64 :=
.seq AllocBody835_76 AllocBody835_251

def AllocBody835_253 : StackLang.HolProg 64 :=
.seq AllocBody835_11 AllocBody835_252

def AllocBody835_254 : StackLang.HolProg 64 :=
.seq AllocBody835_0 AllocBody835_253

def Alloc835 : Nat × StackLang.HolProg 64 := (835, AllocBody835_254)
theorem Alloc835_eq : StackAlloc.progComp (835, raw835) = Alloc835 := by
  kernel_rfl
#print axioms Alloc835_eq
end InitECandidate.Proofs.BackendStages
