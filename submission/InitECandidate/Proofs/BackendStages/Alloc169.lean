import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw169
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody169_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody169_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody169_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody169_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody169_4 : StackLang.HolProg 64 :=
.seq AllocBody169_2 AllocBody169_3

def AllocBody169_5 : StackLang.HolProg 64 :=
.seq AllocBody169_1 AllocBody169_4

def AllocBody169_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 187#64)

def AllocBody169_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody169_9 : StackLang.HolProg 64 :=
.seq AllocBody169_7 AllocBody169_8

def AllocBody169_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody169_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody169_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody169_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 3

def AllocBody169_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody169_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody169_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody169_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody169_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody169_20 : StackLang.HolProg 64 :=
.seq AllocBody169_18 AllocBody169_19

def AllocBody169_21 : StackLang.HolProg 64 :=
.seq AllocBody169_17 AllocBody169_20

def AllocBody169_22 : StackLang.HolProg 64 :=
.seq AllocBody169_16 AllocBody169_21

def AllocBody169_23 : StackLang.HolProg 64 :=
.seq AllocBody169_15 AllocBody169_22

def AllocBody169_24 : StackLang.HolProg 64 :=
.seq AllocBody169_14 AllocBody169_23

def AllocBody169_25 : StackLang.HolProg 64 :=
.seq AllocBody169_13 AllocBody169_24

def AllocBody169_26 : StackLang.HolProg 64 :=
.seq AllocBody169_12 AllocBody169_25

def AllocBody169_27 : StackLang.HolProg 64 :=
.seq AllocBody169_11 AllocBody169_26

def AllocBody169_28 : StackLang.HolProg 64 :=
.seq AllocBody169_10 AllocBody169_27

def AllocBody169_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody169_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody169_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody169_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody169_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody169_36 : StackLang.HolProg 64 :=
.seq AllocBody169_34 AllocBody169_35

def AllocBody169_37 : StackLang.HolProg 64 :=
.seq AllocBody169_33 AllocBody169_36

def AllocBody169_38 : StackLang.HolProg 64 :=
.seq AllocBody169_32 AllocBody169_37

def AllocBody169_39 : StackLang.HolProg 64 :=
.seq AllocBody169_31 AllocBody169_38

def AllocBody169_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody169_42 : StackLang.HolProg 64 :=
.seq AllocBody169_40 AllocBody169_41

def AllocBody169_43 : StackLang.HolProg 64 :=
.call (some (AllocBody169_39, 0, 169, 2)) (Sum.inl 167) (some (AllocBody169_42, 169, 3))

def AllocBody169_44 : StackLang.HolProg 64 :=
.seq AllocBody169_30 AllocBody169_43

def AllocBody169_45 : StackLang.HolProg 64 :=
.seq AllocBody169_29 AllocBody169_44

def AllocBody169_46 : StackLang.HolProg 64 :=
.seq AllocBody169_28 AllocBody169_45

def AllocBody169_47 : StackLang.HolProg 64 :=
.seq AllocBody169_9 AllocBody169_46

def AllocBody169_48 : StackLang.HolProg 64 :=
.seq AllocBody169_6 AllocBody169_47

def AllocBody169_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody169_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody169_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody169_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 188#64)

def AllocBody169_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody169_56 : StackLang.HolProg 64 :=
.seq AllocBody169_54 AllocBody169_55

def AllocBody169_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody169_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody169_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody169_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 5

def AllocBody169_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody169_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody169_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody169_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody169_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody169_67 : StackLang.HolProg 64 :=
.seq AllocBody169_65 AllocBody169_66

def AllocBody169_68 : StackLang.HolProg 64 :=
.seq AllocBody169_64 AllocBody169_67

def AllocBody169_69 : StackLang.HolProg 64 :=
.seq AllocBody169_63 AllocBody169_68

def AllocBody169_70 : StackLang.HolProg 64 :=
.seq AllocBody169_62 AllocBody169_69

def AllocBody169_71 : StackLang.HolProg 64 :=
.seq AllocBody169_61 AllocBody169_70

def AllocBody169_72 : StackLang.HolProg 64 :=
.seq AllocBody169_60 AllocBody169_71

def AllocBody169_73 : StackLang.HolProg 64 :=
.seq AllocBody169_59 AllocBody169_72

def AllocBody169_74 : StackLang.HolProg 64 :=
.seq AllocBody169_58 AllocBody169_73

def AllocBody169_75 : StackLang.HolProg 64 :=
.seq AllocBody169_57 AllocBody169_74

def AllocBody169_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody169_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody169_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody169_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody169_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody169_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody169_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody169_85 : StackLang.HolProg 64 :=
.seq AllocBody169_83 AllocBody169_84

def AllocBody169_86 : StackLang.HolProg 64 :=
.seq AllocBody169_82 AllocBody169_85

def AllocBody169_87 : StackLang.HolProg 64 :=
.seq AllocBody169_81 AllocBody169_86

def AllocBody169_88 : StackLang.HolProg 64 :=
.seq AllocBody169_80 AllocBody169_87

def AllocBody169_89 : StackLang.HolProg 64 :=
.seq AllocBody169_79 AllocBody169_88

def AllocBody169_90 : StackLang.HolProg 64 :=
.seq AllocBody169_78 AllocBody169_89

def AllocBody169_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody169_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody169_93 : StackLang.HolProg 64 :=
.seq AllocBody169_91 AllocBody169_92

def AllocBody169_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody169_95 : StackLang.HolProg 64 :=
.seq AllocBody169_93 AllocBody169_94

def AllocBody169_96 : StackLang.HolProg 64 :=
.call (some (AllocBody169_90, 0, 169, 4)) (Sum.inl 68) (some (AllocBody169_95, 169, 5))

def AllocBody169_97 : StackLang.HolProg 64 :=
.seq AllocBody169_77 AllocBody169_96

def AllocBody169_98 : StackLang.HolProg 64 :=
.seq AllocBody169_76 AllocBody169_97

def AllocBody169_99 : StackLang.HolProg 64 :=
.seq AllocBody169_75 AllocBody169_98

def AllocBody169_100 : StackLang.HolProg 64 :=
.seq AllocBody169_56 AllocBody169_99

def AllocBody169_101 : StackLang.HolProg 64 :=
.seq AllocBody169_53 AllocBody169_100

def AllocBody169_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody169_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody169_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody169_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody169_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody169_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody169_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody169_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody169_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody169_113 : StackLang.HolProg 64 :=
.seq AllocBody169_111 AllocBody169_112

def AllocBody169_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody169_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody169_116 : StackLang.HolProg 64 :=
.seq AllocBody169_114 AllocBody169_115

def AllocBody169_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def AllocBody169_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody169_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody169_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody169_121 : StackLang.HolProg 64 :=
.seq AllocBody169_119 AllocBody169_120

def AllocBody169_122 : StackLang.HolProg 64 :=
.seq AllocBody169_118 AllocBody169_121

def AllocBody169_123 : StackLang.HolProg 64 :=
.seq AllocBody169_117 AllocBody169_122

def AllocBody169_124 : StackLang.HolProg 64 :=
.seq AllocBody169_116 AllocBody169_123

def AllocBody169_125 : StackLang.HolProg 64 :=
.seq AllocBody169_113 AllocBody169_124

def AllocBody169_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 189#64)

def AllocBody169_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody169_129 : StackLang.HolProg 64 :=
.seq AllocBody169_127 AllocBody169_128

def AllocBody169_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody169_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody169_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody169_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 7

def AllocBody169_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody169_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody169_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody169_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody169_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody169_140 : StackLang.HolProg 64 :=
.seq AllocBody169_138 AllocBody169_139

def AllocBody169_141 : StackLang.HolProg 64 :=
.seq AllocBody169_137 AllocBody169_140

def AllocBody169_142 : StackLang.HolProg 64 :=
.seq AllocBody169_136 AllocBody169_141

def AllocBody169_143 : StackLang.HolProg 64 :=
.seq AllocBody169_135 AllocBody169_142

def AllocBody169_144 : StackLang.HolProg 64 :=
.seq AllocBody169_134 AllocBody169_143

def AllocBody169_145 : StackLang.HolProg 64 :=
.seq AllocBody169_133 AllocBody169_144

def AllocBody169_146 : StackLang.HolProg 64 :=
.seq AllocBody169_132 AllocBody169_145

def AllocBody169_147 : StackLang.HolProg 64 :=
.seq AllocBody169_131 AllocBody169_146

def AllocBody169_148 : StackLang.HolProg 64 :=
.seq AllocBody169_130 AllocBody169_147

def AllocBody169_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody169_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody169_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody169_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody169_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody169_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 7

def AllocBody169_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody169_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody169_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def AllocBody169_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody169_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody169_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody169_163 : StackLang.HolProg 64 :=
.seq AllocBody169_161 AllocBody169_162

def AllocBody169_164 : StackLang.HolProg 64 :=
.seq AllocBody169_160 AllocBody169_163

def AllocBody169_165 : StackLang.HolProg 64 :=
.seq AllocBody169_159 AllocBody169_164

def AllocBody169_166 : StackLang.HolProg 64 :=
.seq AllocBody169_158 AllocBody169_165

def AllocBody169_167 : StackLang.HolProg 64 :=
.seq AllocBody169_157 AllocBody169_166

def AllocBody169_168 : StackLang.HolProg 64 :=
.seq AllocBody169_156 AllocBody169_167

def AllocBody169_169 : StackLang.HolProg 64 :=
.seq AllocBody169_155 AllocBody169_168

def AllocBody169_170 : StackLang.HolProg 64 :=
.seq AllocBody169_154 AllocBody169_169

def AllocBody169_171 : StackLang.HolProg 64 :=
.seq AllocBody169_153 AllocBody169_170

def AllocBody169_172 : StackLang.HolProg 64 :=
.seq AllocBody169_152 AllocBody169_171

def AllocBody169_173 : StackLang.HolProg 64 :=
.seq AllocBody169_151 AllocBody169_172

def AllocBody169_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 7

def AllocBody169_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody169_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody169_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def AllocBody169_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody169_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody169_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody169_181 : StackLang.HolProg 64 :=
.seq AllocBody169_179 AllocBody169_180

def AllocBody169_182 : StackLang.HolProg 64 :=
.seq AllocBody169_178 AllocBody169_181

def AllocBody169_183 : StackLang.HolProg 64 :=
.seq AllocBody169_177 AllocBody169_182

def AllocBody169_184 : StackLang.HolProg 64 :=
.seq AllocBody169_176 AllocBody169_183

def AllocBody169_185 : StackLang.HolProg 64 :=
.seq AllocBody169_175 AllocBody169_184

def AllocBody169_186 : StackLang.HolProg 64 :=
.seq AllocBody169_174 AllocBody169_185

def AllocBody169_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody169_188 : StackLang.HolProg 64 :=
.seq AllocBody169_186 AllocBody169_187

def AllocBody169_189 : StackLang.HolProg 64 :=
.call (some (AllocBody169_173, 0, 169, 6)) (Sum.inl 168) (some (AllocBody169_188, 169, 7))

def AllocBody169_190 : StackLang.HolProg 64 :=
.seq AllocBody169_150 AllocBody169_189

def AllocBody169_191 : StackLang.HolProg 64 :=
.seq AllocBody169_149 AllocBody169_190

def AllocBody169_192 : StackLang.HolProg 64 :=
.seq AllocBody169_148 AllocBody169_191

def AllocBody169_193 : StackLang.HolProg 64 :=
.seq AllocBody169_129 AllocBody169_192

def AllocBody169_194 : StackLang.HolProg 64 :=
.seq AllocBody169_126 AllocBody169_193

def AllocBody169_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody169_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody169_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody169_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody169_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody169_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody169_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody169_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody169_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody169_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 7

def AllocBody169_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody169_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def AllocBody169_215 : StackLang.HolProg 64 :=
.seq AllocBody169_213 AllocBody169_214

def AllocBody169_216 : StackLang.HolProg 64 :=
.seq AllocBody169_212 AllocBody169_215

def AllocBody169_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody169_218 : StackLang.HolProg 64 :=
.seq AllocBody169_216 AllocBody169_217

def AllocBody169_219 : StackLang.HolProg 64 :=
.seq AllocBody169_211 AllocBody169_218

def AllocBody169_220 : StackLang.HolProg 64 :=
.seq AllocBody169_210 AllocBody169_219

def AllocBody169_221 : StackLang.HolProg 64 :=
.seq AllocBody169_209 AllocBody169_220

def AllocBody169_222 : StackLang.HolProg 64 :=
.seq AllocBody169_208 AllocBody169_221

def AllocBody169_223 : StackLang.HolProg 64 :=
.seq AllocBody169_207 AllocBody169_222

def AllocBody169_224 : StackLang.HolProg 64 :=
.seq AllocBody169_206 AllocBody169_223

def AllocBody169_225 : StackLang.HolProg 64 :=
.seq AllocBody169_205 AllocBody169_224

def AllocBody169_226 : StackLang.HolProg 64 :=
.seq AllocBody169_204 AllocBody169_225

def AllocBody169_227 : StackLang.HolProg 64 :=
.seq AllocBody169_203 AllocBody169_226

def AllocBody169_228 : StackLang.HolProg 64 :=
.seq AllocBody169_202 AllocBody169_227

def AllocBody169_229 : StackLang.HolProg 64 :=
.seq AllocBody169_201 AllocBody169_228

def AllocBody169_230 : StackLang.HolProg 64 :=
.seq AllocBody169_200 AllocBody169_229

def AllocBody169_231 : StackLang.HolProg 64 :=
.seq AllocBody169_199 AllocBody169_230

def AllocBody169_232 : StackLang.HolProg 64 :=
.seq AllocBody169_198 AllocBody169_231

def AllocBody169_233 : StackLang.HolProg 64 :=
.seq AllocBody169_197 AllocBody169_232

def AllocBody169_234 : StackLang.HolProg 64 :=
.seq AllocBody169_196 AllocBody169_233

def AllocBody169_235 : StackLang.HolProg 64 :=
.seq AllocBody169_195 AllocBody169_234

def AllocBody169_236 : StackLang.HolProg 64 :=
.seq AllocBody169_194 AllocBody169_235

def AllocBody169_237 : StackLang.HolProg 64 :=
.seq AllocBody169_125 AllocBody169_236

def AllocBody169_238 : StackLang.HolProg 64 :=
.seq AllocBody169_110 AllocBody169_237

def AllocBody169_239 : StackLang.HolProg 64 :=
.seq AllocBody169_109 AllocBody169_238

def AllocBody169_240 : StackLang.HolProg 64 :=
.seq AllocBody169_108 AllocBody169_239

def AllocBody169_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody169_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody169_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody169_244 : StackLang.HolProg 64 :=
.seq AllocBody169_242 AllocBody169_243

def AllocBody169_245 : StackLang.HolProg 64 :=
.seq AllocBody169_241 AllocBody169_244

def AllocBody169_246 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody169_240 AllocBody169_245

def AllocBody169_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody169_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody169_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody169_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody169_251 : StackLang.HolProg 64 :=
.seq AllocBody169_249 AllocBody169_250

def AllocBody169_252 : StackLang.HolProg 64 :=
.seq AllocBody169_248 AllocBody169_251

def AllocBody169_253 : StackLang.HolProg 64 :=
.seq AllocBody169_247 AllocBody169_252

def AllocBody169_254 : StackLang.HolProg 64 :=
.seq AllocBody169_246 AllocBody169_253

def AllocBody169_255 : StackLang.HolProg 64 :=
.seq AllocBody169_107 AllocBody169_254

def AllocBody169_256 : StackLang.HolProg 64 :=
.loop AllocBody169_255

def AllocBody169_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody169_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 6

def AllocBody169_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody169_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody169_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody169_262 : StackLang.HolProg 64 :=
.seq AllocBody169_260 AllocBody169_261

def AllocBody169_263 : StackLang.HolProg 64 :=
.seq AllocBody169_259 AllocBody169_262

def AllocBody169_264 : StackLang.HolProg 64 :=
.seq AllocBody169_258 AllocBody169_263

def AllocBody169_265 : StackLang.HolProg 64 :=
.seq AllocBody169_257 AllocBody169_264

def AllocBody169_266 : StackLang.HolProg 64 :=
.seq AllocBody169_256 AllocBody169_265

def AllocBody169_267 : StackLang.HolProg 64 :=
.seq AllocBody169_106 AllocBody169_266

def AllocBody169_268 : StackLang.HolProg 64 :=
.seq AllocBody169_105 AllocBody169_267

def AllocBody169_269 : StackLang.HolProg 64 :=
.seq AllocBody169_104 AllocBody169_268

def AllocBody169_270 : StackLang.HolProg 64 :=
.seq AllocBody169_103 AllocBody169_269

def AllocBody169_271 : StackLang.HolProg 64 :=
.seq AllocBody169_102 AllocBody169_270

def AllocBody169_272 : StackLang.HolProg 64 :=
.seq AllocBody169_101 AllocBody169_271

def AllocBody169_273 : StackLang.HolProg 64 :=
.seq AllocBody169_52 AllocBody169_272

def AllocBody169_274 : StackLang.HolProg 64 :=
.seq AllocBody169_51 AllocBody169_273

def AllocBody169_275 : StackLang.HolProg 64 :=
.seq AllocBody169_50 AllocBody169_274

def AllocBody169_276 : StackLang.HolProg 64 :=
.seq AllocBody169_49 AllocBody169_275

def AllocBody169_277 : StackLang.HolProg 64 :=
.seq AllocBody169_48 AllocBody169_276

def AllocBody169_278 : StackLang.HolProg 64 :=
.seq AllocBody169_5 AllocBody169_277

def AllocBody169_279 : StackLang.HolProg 64 :=
.seq AllocBody169_0 AllocBody169_278

def Alloc169 : Nat × StackLang.HolProg 64 := (169, AllocBody169_279)
theorem Alloc169_eq : StackAlloc.progComp (169, raw169) = Alloc169 := by
  kernel_rfl
#print axioms Alloc169_eq
end InitECandidate.Proofs.BackendStages
