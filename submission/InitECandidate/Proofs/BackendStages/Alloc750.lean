import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw750
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody750_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody750_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody750_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody750_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody750_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody750_5 : StackLang.HolProg 64 :=
.seq AllocBody750_3 AllocBody750_4

def AllocBody750_6 : StackLang.HolProg 64 :=
.seq AllocBody750_2 AllocBody750_5

def AllocBody750_7 : StackLang.HolProg 64 :=
.seq AllocBody750_1 AllocBody750_6

def AllocBody750_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3314#64)

def AllocBody750_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody750_11 : StackLang.HolProg 64 :=
.seq AllocBody750_9 AllocBody750_10

def AllocBody750_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody750_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody750_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody750_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 750 3

def AllocBody750_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody750_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody750_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody750_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody750_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody750_22 : StackLang.HolProg 64 :=
.seq AllocBody750_20 AllocBody750_21

def AllocBody750_23 : StackLang.HolProg 64 :=
.seq AllocBody750_19 AllocBody750_22

def AllocBody750_24 : StackLang.HolProg 64 :=
.seq AllocBody750_18 AllocBody750_23

def AllocBody750_25 : StackLang.HolProg 64 :=
.seq AllocBody750_17 AllocBody750_24

def AllocBody750_26 : StackLang.HolProg 64 :=
.seq AllocBody750_16 AllocBody750_25

def AllocBody750_27 : StackLang.HolProg 64 :=
.seq AllocBody750_15 AllocBody750_26

def AllocBody750_28 : StackLang.HolProg 64 :=
.seq AllocBody750_14 AllocBody750_27

def AllocBody750_29 : StackLang.HolProg 64 :=
.seq AllocBody750_13 AllocBody750_28

def AllocBody750_30 : StackLang.HolProg 64 :=
.seq AllocBody750_12 AllocBody750_29

def AllocBody750_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody750_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody750_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody750_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody750_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody750_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody750_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody750_40 : StackLang.HolProg 64 :=
.seq AllocBody750_38 AllocBody750_39

def AllocBody750_41 : StackLang.HolProg 64 :=
.seq AllocBody750_37 AllocBody750_40

def AllocBody750_42 : StackLang.HolProg 64 :=
.seq AllocBody750_36 AllocBody750_41

def AllocBody750_43 : StackLang.HolProg 64 :=
.seq AllocBody750_35 AllocBody750_42

def AllocBody750_44 : StackLang.HolProg 64 :=
.seq AllocBody750_34 AllocBody750_43

def AllocBody750_45 : StackLang.HolProg 64 :=
.seq AllocBody750_33 AllocBody750_44

def AllocBody750_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody750_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody750_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody750_49 : StackLang.HolProg 64 :=
.seq AllocBody750_47 AllocBody750_48

def AllocBody750_50 : StackLang.HolProg 64 :=
.seq AllocBody750_46 AllocBody750_49

def AllocBody750_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody750_52 : StackLang.HolProg 64 :=
.seq AllocBody750_50 AllocBody750_51

def AllocBody750_53 : StackLang.HolProg 64 :=
.call (some (AllocBody750_45, 0, 750, 2)) (Sum.inl 735) (some (AllocBody750_52, 750, 3))

def AllocBody750_54 : StackLang.HolProg 64 :=
.seq AllocBody750_32 AllocBody750_53

def AllocBody750_55 : StackLang.HolProg 64 :=
.seq AllocBody750_31 AllocBody750_54

def AllocBody750_56 : StackLang.HolProg 64 :=
.seq AllocBody750_30 AllocBody750_55

def AllocBody750_57 : StackLang.HolProg 64 :=
.seq AllocBody750_11 AllocBody750_56

def AllocBody750_58 : StackLang.HolProg 64 :=
.seq AllocBody750_8 AllocBody750_57

def AllocBody750_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody750_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody750_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody750_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody750_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody750_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody750_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody750_69 : StackLang.HolProg 64 :=
.seq AllocBody750_67 AllocBody750_68

def AllocBody750_70 : StackLang.HolProg 64 :=
.seq AllocBody750_66 AllocBody750_69

def AllocBody750_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3315#64)

def AllocBody750_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody750_74 : StackLang.HolProg 64 :=
.seq AllocBody750_72 AllocBody750_73

def AllocBody750_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody750_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody750_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody750_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 750 5

def AllocBody750_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody750_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody750_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody750_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody750_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody750_85 : StackLang.HolProg 64 :=
.seq AllocBody750_83 AllocBody750_84

def AllocBody750_86 : StackLang.HolProg 64 :=
.seq AllocBody750_82 AllocBody750_85

def AllocBody750_87 : StackLang.HolProg 64 :=
.seq AllocBody750_81 AllocBody750_86

def AllocBody750_88 : StackLang.HolProg 64 :=
.seq AllocBody750_80 AllocBody750_87

def AllocBody750_89 : StackLang.HolProg 64 :=
.seq AllocBody750_79 AllocBody750_88

def AllocBody750_90 : StackLang.HolProg 64 :=
.seq AllocBody750_78 AllocBody750_89

def AllocBody750_91 : StackLang.HolProg 64 :=
.seq AllocBody750_77 AllocBody750_90

def AllocBody750_92 : StackLang.HolProg 64 :=
.seq AllocBody750_76 AllocBody750_91

def AllocBody750_93 : StackLang.HolProg 64 :=
.seq AllocBody750_75 AllocBody750_92

def AllocBody750_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody750_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody750_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody750_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody750_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody750_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody750_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody750_103 : StackLang.HolProg 64 :=
.seq AllocBody750_101 AllocBody750_102

def AllocBody750_104 : StackLang.HolProg 64 :=
.seq AllocBody750_100 AllocBody750_103

def AllocBody750_105 : StackLang.HolProg 64 :=
.seq AllocBody750_99 AllocBody750_104

def AllocBody750_106 : StackLang.HolProg 64 :=
.seq AllocBody750_98 AllocBody750_105

def AllocBody750_107 : StackLang.HolProg 64 :=
.seq AllocBody750_97 AllocBody750_106

def AllocBody750_108 : StackLang.HolProg 64 :=
.seq AllocBody750_96 AllocBody750_107

def AllocBody750_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody750_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody750_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody750_112 : StackLang.HolProg 64 :=
.seq AllocBody750_110 AllocBody750_111

def AllocBody750_113 : StackLang.HolProg 64 :=
.seq AllocBody750_109 AllocBody750_112

def AllocBody750_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody750_115 : StackLang.HolProg 64 :=
.seq AllocBody750_113 AllocBody750_114

def AllocBody750_116 : StackLang.HolProg 64 :=
.call (some (AllocBody750_108, 0, 750, 4)) (Sum.inl 735) (some (AllocBody750_115, 750, 5))

def AllocBody750_117 : StackLang.HolProg 64 :=
.seq AllocBody750_95 AllocBody750_116

def AllocBody750_118 : StackLang.HolProg 64 :=
.seq AllocBody750_94 AllocBody750_117

def AllocBody750_119 : StackLang.HolProg 64 :=
.seq AllocBody750_93 AllocBody750_118

def AllocBody750_120 : StackLang.HolProg 64 :=
.seq AllocBody750_74 AllocBody750_119

def AllocBody750_121 : StackLang.HolProg 64 :=
.seq AllocBody750_71 AllocBody750_120

def AllocBody750_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody750_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody750_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody750_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody750_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3316#64)

def AllocBody750_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody750_133 : StackLang.HolProg 64 :=
.seq AllocBody750_131 AllocBody750_132

def AllocBody750_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody750_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody750_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody750_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 750 7

def AllocBody750_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody750_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody750_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody750_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody750_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody750_144 : StackLang.HolProg 64 :=
.seq AllocBody750_142 AllocBody750_143

def AllocBody750_145 : StackLang.HolProg 64 :=
.seq AllocBody750_141 AllocBody750_144

def AllocBody750_146 : StackLang.HolProg 64 :=
.seq AllocBody750_140 AllocBody750_145

def AllocBody750_147 : StackLang.HolProg 64 :=
.seq AllocBody750_139 AllocBody750_146

def AllocBody750_148 : StackLang.HolProg 64 :=
.seq AllocBody750_138 AllocBody750_147

def AllocBody750_149 : StackLang.HolProg 64 :=
.seq AllocBody750_137 AllocBody750_148

def AllocBody750_150 : StackLang.HolProg 64 :=
.seq AllocBody750_136 AllocBody750_149

def AllocBody750_151 : StackLang.HolProg 64 :=
.seq AllocBody750_135 AllocBody750_150

def AllocBody750_152 : StackLang.HolProg 64 :=
.seq AllocBody750_134 AllocBody750_151

def AllocBody750_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody750_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody750_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody750_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody750_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody750_160 : StackLang.HolProg 64 :=
.seq AllocBody750_158 AllocBody750_159

def AllocBody750_161 : StackLang.HolProg 64 :=
.seq AllocBody750_157 AllocBody750_160

def AllocBody750_162 : StackLang.HolProg 64 :=
.seq AllocBody750_156 AllocBody750_161

def AllocBody750_163 : StackLang.HolProg 64 :=
.seq AllocBody750_155 AllocBody750_162

def AllocBody750_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody750_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody750_166 : StackLang.HolProg 64 :=
.seq AllocBody750_164 AllocBody750_165

def AllocBody750_167 : StackLang.HolProg 64 :=
.call (some (AllocBody750_163, 0, 750, 6)) (Sum.inl 735) (some (AllocBody750_166, 750, 7))

def AllocBody750_168 : StackLang.HolProg 64 :=
.seq AllocBody750_154 AllocBody750_167

def AllocBody750_169 : StackLang.HolProg 64 :=
.seq AllocBody750_153 AllocBody750_168

def AllocBody750_170 : StackLang.HolProg 64 :=
.seq AllocBody750_152 AllocBody750_169

def AllocBody750_171 : StackLang.HolProg 64 :=
.seq AllocBody750_133 AllocBody750_170

def AllocBody750_172 : StackLang.HolProg 64 :=
.seq AllocBody750_130 AllocBody750_171

def AllocBody750_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody750_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody750_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody750_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody750_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody750_178 : StackLang.HolProg 64 :=
.seq AllocBody750_176 AllocBody750_177

def AllocBody750_179 : StackLang.HolProg 64 :=
.seq AllocBody750_175 AllocBody750_178

def AllocBody750_180 : StackLang.HolProg 64 :=
.seq AllocBody750_174 AllocBody750_179

def AllocBody750_181 : StackLang.HolProg 64 :=
.seq AllocBody750_173 AllocBody750_180

def AllocBody750_182 : StackLang.HolProg 64 :=
.seq AllocBody750_172 AllocBody750_181

def AllocBody750_183 : StackLang.HolProg 64 :=
.seq AllocBody750_129 AllocBody750_182

def AllocBody750_184 : StackLang.HolProg 64 :=
.seq AllocBody750_128 AllocBody750_183

def AllocBody750_185 : StackLang.HolProg 64 :=
.seq AllocBody750_127 AllocBody750_184

def AllocBody750_186 : StackLang.HolProg 64 :=
.seq AllocBody750_126 AllocBody750_185

def AllocBody750_187 : StackLang.HolProg 64 :=
.seq AllocBody750_125 AllocBody750_186

def AllocBody750_188 : StackLang.HolProg 64 :=
.seq AllocBody750_124 AllocBody750_187

def AllocBody750_189 : StackLang.HolProg 64 :=
.seq AllocBody750_123 AllocBody750_188

def AllocBody750_190 : StackLang.HolProg 64 :=
.seq AllocBody750_122 AllocBody750_189

def AllocBody750_191 : StackLang.HolProg 64 :=
.seq AllocBody750_121 AllocBody750_190

def AllocBody750_192 : StackLang.HolProg 64 :=
.seq AllocBody750_70 AllocBody750_191

def AllocBody750_193 : StackLang.HolProg 64 :=
.seq AllocBody750_65 AllocBody750_192

def AllocBody750_194 : StackLang.HolProg 64 :=
.seq AllocBody750_64 AllocBody750_193

def AllocBody750_195 : StackLang.HolProg 64 :=
.seq AllocBody750_63 AllocBody750_194

def AllocBody750_196 : StackLang.HolProg 64 :=
.seq AllocBody750_62 AllocBody750_195

def AllocBody750_197 : StackLang.HolProg 64 :=
.seq AllocBody750_61 AllocBody750_196

def AllocBody750_198 : StackLang.HolProg 64 :=
.seq AllocBody750_60 AllocBody750_197

def AllocBody750_199 : StackLang.HolProg 64 :=
.seq AllocBody750_59 AllocBody750_198

def AllocBody750_200 : StackLang.HolProg 64 :=
.seq AllocBody750_58 AllocBody750_199

def AllocBody750_201 : StackLang.HolProg 64 :=
.seq AllocBody750_7 AllocBody750_200

def AllocBody750_202 : StackLang.HolProg 64 :=
.seq AllocBody750_0 AllocBody750_201

def Alloc750 : Nat × StackLang.HolProg 64 := (750, AllocBody750_202)
theorem Alloc750_eq : StackAlloc.progComp (750, raw750) = Alloc750 := by
  kernel_rfl
#print axioms Alloc750_eq
end InitECandidate.Proofs.BackendStages
