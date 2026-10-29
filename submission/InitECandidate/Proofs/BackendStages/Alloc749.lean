import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw749
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody749_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody749_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody749_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody749_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody749_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody749_5 : StackLang.HolProg 64 :=
.seq AllocBody749_3 AllocBody749_4

def AllocBody749_6 : StackLang.HolProg 64 :=
.seq AllocBody749_2 AllocBody749_5

def AllocBody749_7 : StackLang.HolProg 64 :=
.seq AllocBody749_1 AllocBody749_6

def AllocBody749_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3311#64)

def AllocBody749_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody749_11 : StackLang.HolProg 64 :=
.seq AllocBody749_9 AllocBody749_10

def AllocBody749_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody749_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody749_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody749_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 749 3

def AllocBody749_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody749_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody749_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody749_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody749_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody749_22 : StackLang.HolProg 64 :=
.seq AllocBody749_20 AllocBody749_21

def AllocBody749_23 : StackLang.HolProg 64 :=
.seq AllocBody749_19 AllocBody749_22

def AllocBody749_24 : StackLang.HolProg 64 :=
.seq AllocBody749_18 AllocBody749_23

def AllocBody749_25 : StackLang.HolProg 64 :=
.seq AllocBody749_17 AllocBody749_24

def AllocBody749_26 : StackLang.HolProg 64 :=
.seq AllocBody749_16 AllocBody749_25

def AllocBody749_27 : StackLang.HolProg 64 :=
.seq AllocBody749_15 AllocBody749_26

def AllocBody749_28 : StackLang.HolProg 64 :=
.seq AllocBody749_14 AllocBody749_27

def AllocBody749_29 : StackLang.HolProg 64 :=
.seq AllocBody749_13 AllocBody749_28

def AllocBody749_30 : StackLang.HolProg 64 :=
.seq AllocBody749_12 AllocBody749_29

def AllocBody749_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody749_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody749_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody749_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody749_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody749_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody749_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody749_40 : StackLang.HolProg 64 :=
.seq AllocBody749_38 AllocBody749_39

def AllocBody749_41 : StackLang.HolProg 64 :=
.seq AllocBody749_37 AllocBody749_40

def AllocBody749_42 : StackLang.HolProg 64 :=
.seq AllocBody749_36 AllocBody749_41

def AllocBody749_43 : StackLang.HolProg 64 :=
.seq AllocBody749_35 AllocBody749_42

def AllocBody749_44 : StackLang.HolProg 64 :=
.seq AllocBody749_34 AllocBody749_43

def AllocBody749_45 : StackLang.HolProg 64 :=
.seq AllocBody749_33 AllocBody749_44

def AllocBody749_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody749_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody749_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody749_49 : StackLang.HolProg 64 :=
.seq AllocBody749_47 AllocBody749_48

def AllocBody749_50 : StackLang.HolProg 64 :=
.seq AllocBody749_46 AllocBody749_49

def AllocBody749_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody749_52 : StackLang.HolProg 64 :=
.seq AllocBody749_50 AllocBody749_51

def AllocBody749_53 : StackLang.HolProg 64 :=
.call (some (AllocBody749_45, 0, 749, 2)) (Sum.inl 734) (some (AllocBody749_52, 749, 3))

def AllocBody749_54 : StackLang.HolProg 64 :=
.seq AllocBody749_32 AllocBody749_53

def AllocBody749_55 : StackLang.HolProg 64 :=
.seq AllocBody749_31 AllocBody749_54

def AllocBody749_56 : StackLang.HolProg 64 :=
.seq AllocBody749_30 AllocBody749_55

def AllocBody749_57 : StackLang.HolProg 64 :=
.seq AllocBody749_11 AllocBody749_56

def AllocBody749_58 : StackLang.HolProg 64 :=
.seq AllocBody749_8 AllocBody749_57

def AllocBody749_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody749_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody749_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody749_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody749_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody749_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody749_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody749_69 : StackLang.HolProg 64 :=
.seq AllocBody749_67 AllocBody749_68

def AllocBody749_70 : StackLang.HolProg 64 :=
.seq AllocBody749_66 AllocBody749_69

def AllocBody749_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3312#64)

def AllocBody749_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody749_74 : StackLang.HolProg 64 :=
.seq AllocBody749_72 AllocBody749_73

def AllocBody749_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody749_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody749_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody749_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 749 5

def AllocBody749_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody749_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody749_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody749_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody749_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody749_85 : StackLang.HolProg 64 :=
.seq AllocBody749_83 AllocBody749_84

def AllocBody749_86 : StackLang.HolProg 64 :=
.seq AllocBody749_82 AllocBody749_85

def AllocBody749_87 : StackLang.HolProg 64 :=
.seq AllocBody749_81 AllocBody749_86

def AllocBody749_88 : StackLang.HolProg 64 :=
.seq AllocBody749_80 AllocBody749_87

def AllocBody749_89 : StackLang.HolProg 64 :=
.seq AllocBody749_79 AllocBody749_88

def AllocBody749_90 : StackLang.HolProg 64 :=
.seq AllocBody749_78 AllocBody749_89

def AllocBody749_91 : StackLang.HolProg 64 :=
.seq AllocBody749_77 AllocBody749_90

def AllocBody749_92 : StackLang.HolProg 64 :=
.seq AllocBody749_76 AllocBody749_91

def AllocBody749_93 : StackLang.HolProg 64 :=
.seq AllocBody749_75 AllocBody749_92

def AllocBody749_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody749_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody749_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody749_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody749_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody749_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody749_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody749_103 : StackLang.HolProg 64 :=
.seq AllocBody749_101 AllocBody749_102

def AllocBody749_104 : StackLang.HolProg 64 :=
.seq AllocBody749_100 AllocBody749_103

def AllocBody749_105 : StackLang.HolProg 64 :=
.seq AllocBody749_99 AllocBody749_104

def AllocBody749_106 : StackLang.HolProg 64 :=
.seq AllocBody749_98 AllocBody749_105

def AllocBody749_107 : StackLang.HolProg 64 :=
.seq AllocBody749_97 AllocBody749_106

def AllocBody749_108 : StackLang.HolProg 64 :=
.seq AllocBody749_96 AllocBody749_107

def AllocBody749_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody749_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody749_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody749_112 : StackLang.HolProg 64 :=
.seq AllocBody749_110 AllocBody749_111

def AllocBody749_113 : StackLang.HolProg 64 :=
.seq AllocBody749_109 AllocBody749_112

def AllocBody749_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody749_115 : StackLang.HolProg 64 :=
.seq AllocBody749_113 AllocBody749_114

def AllocBody749_116 : StackLang.HolProg 64 :=
.call (some (AllocBody749_108, 0, 749, 4)) (Sum.inl 734) (some (AllocBody749_115, 749, 5))

def AllocBody749_117 : StackLang.HolProg 64 :=
.seq AllocBody749_95 AllocBody749_116

def AllocBody749_118 : StackLang.HolProg 64 :=
.seq AllocBody749_94 AllocBody749_117

def AllocBody749_119 : StackLang.HolProg 64 :=
.seq AllocBody749_93 AllocBody749_118

def AllocBody749_120 : StackLang.HolProg 64 :=
.seq AllocBody749_74 AllocBody749_119

def AllocBody749_121 : StackLang.HolProg 64 :=
.seq AllocBody749_71 AllocBody749_120

def AllocBody749_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody749_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody749_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody749_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody749_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3313#64)

def AllocBody749_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody749_133 : StackLang.HolProg 64 :=
.seq AllocBody749_131 AllocBody749_132

def AllocBody749_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody749_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody749_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody749_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 749 7

def AllocBody749_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody749_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody749_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody749_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody749_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody749_144 : StackLang.HolProg 64 :=
.seq AllocBody749_142 AllocBody749_143

def AllocBody749_145 : StackLang.HolProg 64 :=
.seq AllocBody749_141 AllocBody749_144

def AllocBody749_146 : StackLang.HolProg 64 :=
.seq AllocBody749_140 AllocBody749_145

def AllocBody749_147 : StackLang.HolProg 64 :=
.seq AllocBody749_139 AllocBody749_146

def AllocBody749_148 : StackLang.HolProg 64 :=
.seq AllocBody749_138 AllocBody749_147

def AllocBody749_149 : StackLang.HolProg 64 :=
.seq AllocBody749_137 AllocBody749_148

def AllocBody749_150 : StackLang.HolProg 64 :=
.seq AllocBody749_136 AllocBody749_149

def AllocBody749_151 : StackLang.HolProg 64 :=
.seq AllocBody749_135 AllocBody749_150

def AllocBody749_152 : StackLang.HolProg 64 :=
.seq AllocBody749_134 AllocBody749_151

def AllocBody749_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody749_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody749_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody749_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody749_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody749_160 : StackLang.HolProg 64 :=
.seq AllocBody749_158 AllocBody749_159

def AllocBody749_161 : StackLang.HolProg 64 :=
.seq AllocBody749_157 AllocBody749_160

def AllocBody749_162 : StackLang.HolProg 64 :=
.seq AllocBody749_156 AllocBody749_161

def AllocBody749_163 : StackLang.HolProg 64 :=
.seq AllocBody749_155 AllocBody749_162

def AllocBody749_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody749_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody749_166 : StackLang.HolProg 64 :=
.seq AllocBody749_164 AllocBody749_165

def AllocBody749_167 : StackLang.HolProg 64 :=
.call (some (AllocBody749_163, 0, 749, 6)) (Sum.inl 734) (some (AllocBody749_166, 749, 7))

def AllocBody749_168 : StackLang.HolProg 64 :=
.seq AllocBody749_154 AllocBody749_167

def AllocBody749_169 : StackLang.HolProg 64 :=
.seq AllocBody749_153 AllocBody749_168

def AllocBody749_170 : StackLang.HolProg 64 :=
.seq AllocBody749_152 AllocBody749_169

def AllocBody749_171 : StackLang.HolProg 64 :=
.seq AllocBody749_133 AllocBody749_170

def AllocBody749_172 : StackLang.HolProg 64 :=
.seq AllocBody749_130 AllocBody749_171

def AllocBody749_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody749_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody749_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody749_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody749_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody749_178 : StackLang.HolProg 64 :=
.seq AllocBody749_176 AllocBody749_177

def AllocBody749_179 : StackLang.HolProg 64 :=
.seq AllocBody749_175 AllocBody749_178

def AllocBody749_180 : StackLang.HolProg 64 :=
.seq AllocBody749_174 AllocBody749_179

def AllocBody749_181 : StackLang.HolProg 64 :=
.seq AllocBody749_173 AllocBody749_180

def AllocBody749_182 : StackLang.HolProg 64 :=
.seq AllocBody749_172 AllocBody749_181

def AllocBody749_183 : StackLang.HolProg 64 :=
.seq AllocBody749_129 AllocBody749_182

def AllocBody749_184 : StackLang.HolProg 64 :=
.seq AllocBody749_128 AllocBody749_183

def AllocBody749_185 : StackLang.HolProg 64 :=
.seq AllocBody749_127 AllocBody749_184

def AllocBody749_186 : StackLang.HolProg 64 :=
.seq AllocBody749_126 AllocBody749_185

def AllocBody749_187 : StackLang.HolProg 64 :=
.seq AllocBody749_125 AllocBody749_186

def AllocBody749_188 : StackLang.HolProg 64 :=
.seq AllocBody749_124 AllocBody749_187

def AllocBody749_189 : StackLang.HolProg 64 :=
.seq AllocBody749_123 AllocBody749_188

def AllocBody749_190 : StackLang.HolProg 64 :=
.seq AllocBody749_122 AllocBody749_189

def AllocBody749_191 : StackLang.HolProg 64 :=
.seq AllocBody749_121 AllocBody749_190

def AllocBody749_192 : StackLang.HolProg 64 :=
.seq AllocBody749_70 AllocBody749_191

def AllocBody749_193 : StackLang.HolProg 64 :=
.seq AllocBody749_65 AllocBody749_192

def AllocBody749_194 : StackLang.HolProg 64 :=
.seq AllocBody749_64 AllocBody749_193

def AllocBody749_195 : StackLang.HolProg 64 :=
.seq AllocBody749_63 AllocBody749_194

def AllocBody749_196 : StackLang.HolProg 64 :=
.seq AllocBody749_62 AllocBody749_195

def AllocBody749_197 : StackLang.HolProg 64 :=
.seq AllocBody749_61 AllocBody749_196

def AllocBody749_198 : StackLang.HolProg 64 :=
.seq AllocBody749_60 AllocBody749_197

def AllocBody749_199 : StackLang.HolProg 64 :=
.seq AllocBody749_59 AllocBody749_198

def AllocBody749_200 : StackLang.HolProg 64 :=
.seq AllocBody749_58 AllocBody749_199

def AllocBody749_201 : StackLang.HolProg 64 :=
.seq AllocBody749_7 AllocBody749_200

def AllocBody749_202 : StackLang.HolProg 64 :=
.seq AllocBody749_0 AllocBody749_201

def Alloc749 : Nat × StackLang.HolProg 64 := (749, AllocBody749_202)
theorem Alloc749_eq : StackAlloc.progComp (749, raw749) = Alloc749 := by
  kernel_rfl
#print axioms Alloc749_eq
end InitECandidate.Proofs.BackendStages
