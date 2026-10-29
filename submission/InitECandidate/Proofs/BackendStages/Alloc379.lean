import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw379
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody379_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody379_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody379_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody379_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody379_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody379_5 : StackLang.HolProg 64 :=
.seq AllocBody379_3 AllocBody379_4

def AllocBody379_6 : StackLang.HolProg 64 :=
.seq AllocBody379_2 AllocBody379_5

def AllocBody379_7 : StackLang.HolProg 64 :=
.seq AllocBody379_1 AllocBody379_6

def AllocBody379_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1109#64)

def AllocBody379_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_11 : StackLang.HolProg 64 :=
.seq AllocBody379_9 AllocBody379_10

def AllocBody379_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody379_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody379_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 3

def AllocBody379_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody379_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody379_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody379_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody379_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_22 : StackLang.HolProg 64 :=
.seq AllocBody379_20 AllocBody379_21

def AllocBody379_23 : StackLang.HolProg 64 :=
.seq AllocBody379_19 AllocBody379_22

def AllocBody379_24 : StackLang.HolProg 64 :=
.seq AllocBody379_18 AllocBody379_23

def AllocBody379_25 : StackLang.HolProg 64 :=
.seq AllocBody379_17 AllocBody379_24

def AllocBody379_26 : StackLang.HolProg 64 :=
.seq AllocBody379_16 AllocBody379_25

def AllocBody379_27 : StackLang.HolProg 64 :=
.seq AllocBody379_15 AllocBody379_26

def AllocBody379_28 : StackLang.HolProg 64 :=
.seq AllocBody379_14 AllocBody379_27

def AllocBody379_29 : StackLang.HolProg 64 :=
.seq AllocBody379_13 AllocBody379_28

def AllocBody379_30 : StackLang.HolProg 64 :=
.seq AllocBody379_12 AllocBody379_29

def AllocBody379_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody379_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody379_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody379_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody379_38 : StackLang.HolProg 64 :=
.seq AllocBody379_36 AllocBody379_37

def AllocBody379_39 : StackLang.HolProg 64 :=
.seq AllocBody379_35 AllocBody379_38

def AllocBody379_40 : StackLang.HolProg 64 :=
.seq AllocBody379_34 AllocBody379_39

def AllocBody379_41 : StackLang.HolProg 64 :=
.seq AllocBody379_33 AllocBody379_40

def AllocBody379_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody379_44 : StackLang.HolProg 64 :=
.seq AllocBody379_42 AllocBody379_43

def AllocBody379_45 : StackLang.HolProg 64 :=
.call (some (AllocBody379_41, 0, 379, 2)) (Sum.inl 69) (some (AllocBody379_44, 379, 3))

def AllocBody379_46 : StackLang.HolProg 64 :=
.seq AllocBody379_32 AllocBody379_45

def AllocBody379_47 : StackLang.HolProg 64 :=
.seq AllocBody379_31 AllocBody379_46

def AllocBody379_48 : StackLang.HolProg 64 :=
.seq AllocBody379_30 AllocBody379_47

def AllocBody379_49 : StackLang.HolProg 64 :=
.seq AllocBody379_11 AllocBody379_48

def AllocBody379_50 : StackLang.HolProg 64 :=
.seq AllocBody379_8 AllocBody379_49

def AllocBody379_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody379_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody379_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody379_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1110#64)

def AllocBody379_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_57 : StackLang.HolProg 64 :=
.seq AllocBody379_55 AllocBody379_56

def AllocBody379_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody379_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody379_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 5

def AllocBody379_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody379_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody379_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody379_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody379_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_68 : StackLang.HolProg 64 :=
.seq AllocBody379_66 AllocBody379_67

def AllocBody379_69 : StackLang.HolProg 64 :=
.seq AllocBody379_65 AllocBody379_68

def AllocBody379_70 : StackLang.HolProg 64 :=
.seq AllocBody379_64 AllocBody379_69

def AllocBody379_71 : StackLang.HolProg 64 :=
.seq AllocBody379_63 AllocBody379_70

def AllocBody379_72 : StackLang.HolProg 64 :=
.seq AllocBody379_62 AllocBody379_71

def AllocBody379_73 : StackLang.HolProg 64 :=
.seq AllocBody379_61 AllocBody379_72

def AllocBody379_74 : StackLang.HolProg 64 :=
.seq AllocBody379_60 AllocBody379_73

def AllocBody379_75 : StackLang.HolProg 64 :=
.seq AllocBody379_59 AllocBody379_74

def AllocBody379_76 : StackLang.HolProg 64 :=
.seq AllocBody379_58 AllocBody379_75

def AllocBody379_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody379_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody379_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody379_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody379_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody379_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody379_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody379_87 : StackLang.HolProg 64 :=
.seq AllocBody379_85 AllocBody379_86

def AllocBody379_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody379_89 : StackLang.HolProg 64 :=
.seq AllocBody379_87 AllocBody379_88

def AllocBody379_90 : StackLang.HolProg 64 :=
.seq AllocBody379_84 AllocBody379_89

def AllocBody379_91 : StackLang.HolProg 64 :=
.seq AllocBody379_83 AllocBody379_90

def AllocBody379_92 : StackLang.HolProg 64 :=
.seq AllocBody379_82 AllocBody379_91

def AllocBody379_93 : StackLang.HolProg 64 :=
.seq AllocBody379_81 AllocBody379_92

def AllocBody379_94 : StackLang.HolProg 64 :=
.seq AllocBody379_80 AllocBody379_93

def AllocBody379_95 : StackLang.HolProg 64 :=
.seq AllocBody379_79 AllocBody379_94

def AllocBody379_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody379_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody379_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody379_99 : StackLang.HolProg 64 :=
.seq AllocBody379_97 AllocBody379_98

def AllocBody379_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody379_101 : StackLang.HolProg 64 :=
.seq AllocBody379_99 AllocBody379_100

def AllocBody379_102 : StackLang.HolProg 64 :=
.seq AllocBody379_96 AllocBody379_101

def AllocBody379_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody379_104 : StackLang.HolProg 64 :=
.seq AllocBody379_102 AllocBody379_103

def AllocBody379_105 : StackLang.HolProg 64 :=
.call (some (AllocBody379_95, 0, 379, 4)) (Sum.inl 68) (some (AllocBody379_104, 379, 5))

def AllocBody379_106 : StackLang.HolProg 64 :=
.seq AllocBody379_78 AllocBody379_105

def AllocBody379_107 : StackLang.HolProg 64 :=
.seq AllocBody379_77 AllocBody379_106

def AllocBody379_108 : StackLang.HolProg 64 :=
.seq AllocBody379_76 AllocBody379_107

def AllocBody379_109 : StackLang.HolProg 64 :=
.seq AllocBody379_57 AllocBody379_108

def AllocBody379_110 : StackLang.HolProg 64 :=
.seq AllocBody379_54 AllocBody379_109

def AllocBody379_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody379_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody379_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody379_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody379_115 : StackLang.HolProg 64 :=
.seq AllocBody379_113 AllocBody379_114

def AllocBody379_116 : StackLang.HolProg 64 :=
.seq AllocBody379_112 AllocBody379_115

def AllocBody379_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1111#64)

def AllocBody379_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_120 : StackLang.HolProg 64 :=
.seq AllocBody379_118 AllocBody379_119

def AllocBody379_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody379_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody379_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 7

def AllocBody379_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody379_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody379_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody379_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody379_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_131 : StackLang.HolProg 64 :=
.seq AllocBody379_129 AllocBody379_130

def AllocBody379_132 : StackLang.HolProg 64 :=
.seq AllocBody379_128 AllocBody379_131

def AllocBody379_133 : StackLang.HolProg 64 :=
.seq AllocBody379_127 AllocBody379_132

def AllocBody379_134 : StackLang.HolProg 64 :=
.seq AllocBody379_126 AllocBody379_133

def AllocBody379_135 : StackLang.HolProg 64 :=
.seq AllocBody379_125 AllocBody379_134

def AllocBody379_136 : StackLang.HolProg 64 :=
.seq AllocBody379_124 AllocBody379_135

def AllocBody379_137 : StackLang.HolProg 64 :=
.seq AllocBody379_123 AllocBody379_136

def AllocBody379_138 : StackLang.HolProg 64 :=
.seq AllocBody379_122 AllocBody379_137

def AllocBody379_139 : StackLang.HolProg 64 :=
.seq AllocBody379_121 AllocBody379_138

def AllocBody379_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody379_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody379_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody379_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody379_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody379_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody379_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 1

def AllocBody379_150 : StackLang.HolProg 64 :=
.seq AllocBody379_148 AllocBody379_149

def AllocBody379_151 : StackLang.HolProg 64 :=
.seq AllocBody379_147 AllocBody379_150

def AllocBody379_152 : StackLang.HolProg 64 :=
.seq AllocBody379_146 AllocBody379_151

def AllocBody379_153 : StackLang.HolProg 64 :=
.seq AllocBody379_145 AllocBody379_152

def AllocBody379_154 : StackLang.HolProg 64 :=
.seq AllocBody379_144 AllocBody379_153

def AllocBody379_155 : StackLang.HolProg 64 :=
.seq AllocBody379_143 AllocBody379_154

def AllocBody379_156 : StackLang.HolProg 64 :=
.seq AllocBody379_142 AllocBody379_155

def AllocBody379_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody379_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody379_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 1

def AllocBody379_160 : StackLang.HolProg 64 :=
.seq AllocBody379_158 AllocBody379_159

def AllocBody379_161 : StackLang.HolProg 64 :=
.seq AllocBody379_157 AllocBody379_160

def AllocBody379_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody379_163 : StackLang.HolProg 64 :=
.seq AllocBody379_161 AllocBody379_162

def AllocBody379_164 : StackLang.HolProg 64 :=
.call (some (AllocBody379_156, 0, 379, 6)) (Sum.inl 378) (some (AllocBody379_163, 379, 7))

def AllocBody379_165 : StackLang.HolProg 64 :=
.seq AllocBody379_141 AllocBody379_164

def AllocBody379_166 : StackLang.HolProg 64 :=
.seq AllocBody379_140 AllocBody379_165

def AllocBody379_167 : StackLang.HolProg 64 :=
.seq AllocBody379_139 AllocBody379_166

def AllocBody379_168 : StackLang.HolProg 64 :=
.seq AllocBody379_120 AllocBody379_167

def AllocBody379_169 : StackLang.HolProg 64 :=
.seq AllocBody379_117 AllocBody379_168

def AllocBody379_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody379_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody379_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 320#64))

def AllocBody379_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 328#64))

def AllocBody379_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 336#64))

def AllocBody379_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 344#64))

def AllocBody379_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 352#64))

def AllocBody379_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 360#64))

def AllocBody379_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 368#64))

def AllocBody379_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 376#64))

def AllocBody379_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1112#64)

def AllocBody379_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_191 : StackLang.HolProg 64 :=
.seq AllocBody379_189 AllocBody379_190

def AllocBody379_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody379_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody379_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 9

def AllocBody379_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody379_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody379_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody379_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody379_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_202 : StackLang.HolProg 64 :=
.seq AllocBody379_200 AllocBody379_201

def AllocBody379_203 : StackLang.HolProg 64 :=
.seq AllocBody379_199 AllocBody379_202

def AllocBody379_204 : StackLang.HolProg 64 :=
.seq AllocBody379_198 AllocBody379_203

def AllocBody379_205 : StackLang.HolProg 64 :=
.seq AllocBody379_197 AllocBody379_204

def AllocBody379_206 : StackLang.HolProg 64 :=
.seq AllocBody379_196 AllocBody379_205

def AllocBody379_207 : StackLang.HolProg 64 :=
.seq AllocBody379_195 AllocBody379_206

def AllocBody379_208 : StackLang.HolProg 64 :=
.seq AllocBody379_194 AllocBody379_207

def AllocBody379_209 : StackLang.HolProg 64 :=
.seq AllocBody379_193 AllocBody379_208

def AllocBody379_210 : StackLang.HolProg 64 :=
.seq AllocBody379_192 AllocBody379_209

def AllocBody379_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody379_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody379_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody379_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody379_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody379_219 : StackLang.HolProg 64 :=
.seq AllocBody379_217 AllocBody379_218

def AllocBody379_220 : StackLang.HolProg 64 :=
.seq AllocBody379_216 AllocBody379_219

def AllocBody379_221 : StackLang.HolProg 64 :=
.seq AllocBody379_215 AllocBody379_220

def AllocBody379_222 : StackLang.HolProg 64 :=
.seq AllocBody379_214 AllocBody379_221

def AllocBody379_223 : StackLang.HolProg 64 :=
.seq AllocBody379_213 AllocBody379_222

def AllocBody379_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody379_225 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody379_226 : StackLang.HolProg 64 :=
.seq AllocBody379_224 AllocBody379_225

def AllocBody379_227 : StackLang.HolProg 64 :=
.call (some (AllocBody379_223, 0, 379, 8)) (Sum.inl 231) (some (AllocBody379_226, 379, 9))

def AllocBody379_228 : StackLang.HolProg 64 :=
.seq AllocBody379_212 AllocBody379_227

def AllocBody379_229 : StackLang.HolProg 64 :=
.seq AllocBody379_211 AllocBody379_228

def AllocBody379_230 : StackLang.HolProg 64 :=
.seq AllocBody379_210 AllocBody379_229

def AllocBody379_231 : StackLang.HolProg 64 :=
.seq AllocBody379_191 AllocBody379_230

def AllocBody379_232 : StackLang.HolProg 64 :=
.seq AllocBody379_188 AllocBody379_231

def AllocBody379_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody379_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody379_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody379_236 : StackLang.HolProg 64 :=
.seq AllocBody379_234 AllocBody379_235

def AllocBody379_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1113#64)

def AllocBody379_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_240 : StackLang.HolProg 64 :=
.seq AllocBody379_238 AllocBody379_239

def AllocBody379_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody379_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody379_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody379_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 379 11

def AllocBody379_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody379_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody379_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody379_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody379_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_251 : StackLang.HolProg 64 :=
.seq AllocBody379_249 AllocBody379_250

def AllocBody379_252 : StackLang.HolProg 64 :=
.seq AllocBody379_248 AllocBody379_251

def AllocBody379_253 : StackLang.HolProg 64 :=
.seq AllocBody379_247 AllocBody379_252

def AllocBody379_254 : StackLang.HolProg 64 :=
.seq AllocBody379_246 AllocBody379_253

def AllocBody379_255 : StackLang.HolProg 64 :=
.seq AllocBody379_245 AllocBody379_254

def AllocBody379_256 : StackLang.HolProg 64 :=
.seq AllocBody379_244 AllocBody379_255

def AllocBody379_257 : StackLang.HolProg 64 :=
.seq AllocBody379_243 AllocBody379_256

def AllocBody379_258 : StackLang.HolProg 64 :=
.seq AllocBody379_242 AllocBody379_257

def AllocBody379_259 : StackLang.HolProg 64 :=
.seq AllocBody379_241 AllocBody379_258

def AllocBody379_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody379_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody379_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody379_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody379_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody379_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody379_268 : StackLang.HolProg 64 :=
.seq AllocBody379_266 AllocBody379_267

def AllocBody379_269 : StackLang.HolProg 64 :=
.seq AllocBody379_265 AllocBody379_268

def AllocBody379_270 : StackLang.HolProg 64 :=
.seq AllocBody379_264 AllocBody379_269

def AllocBody379_271 : StackLang.HolProg 64 :=
.seq AllocBody379_263 AllocBody379_270

def AllocBody379_272 : StackLang.HolProg 64 :=
.seq AllocBody379_262 AllocBody379_271

def AllocBody379_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody379_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody379_275 : StackLang.HolProg 64 :=
.seq AllocBody379_273 AllocBody379_274

def AllocBody379_276 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody379_277 : StackLang.HolProg 64 :=
.seq AllocBody379_275 AllocBody379_276

def AllocBody379_278 : StackLang.HolProg 64 :=
.call (some (AllocBody379_272, 0, 379, 10)) (Sum.inl 70) (some (AllocBody379_277, 379, 11))

def AllocBody379_279 : StackLang.HolProg 64 :=
.seq AllocBody379_261 AllocBody379_278

def AllocBody379_280 : StackLang.HolProg 64 :=
.seq AllocBody379_260 AllocBody379_279

def AllocBody379_281 : StackLang.HolProg 64 :=
.seq AllocBody379_259 AllocBody379_280

def AllocBody379_282 : StackLang.HolProg 64 :=
.seq AllocBody379_240 AllocBody379_281

def AllocBody379_283 : StackLang.HolProg 64 :=
.seq AllocBody379_237 AllocBody379_282

def AllocBody379_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody379_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody379_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody379_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 46#64)

def AllocBody379_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody379_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody379_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_293 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody379_294 : StackLang.HolProg 64 :=
.seq AllocBody379_292 AllocBody379_293

def AllocBody379_295 : StackLang.HolProg 64 :=
.seq AllocBody379_291 AllocBody379_294

def AllocBody379_296 : StackLang.HolProg 64 :=
.seq AllocBody379_290 AllocBody379_295

def AllocBody379_297 : StackLang.HolProg 64 :=
.seq AllocBody379_289 AllocBody379_296

def AllocBody379_298 : StackLang.HolProg 64 :=
.seq AllocBody379_288 AllocBody379_297

def AllocBody379_299 : StackLang.HolProg 64 :=
.seq AllocBody379_287 AllocBody379_298

def AllocBody379_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_301 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody379_299 AllocBody379_300

def AllocBody379_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody379_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody379_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody379_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody379_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody379_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody379_308 : StackLang.HolProg 64 :=
.seq AllocBody379_306 AllocBody379_307

def AllocBody379_309 : StackLang.HolProg 64 :=
.seq AllocBody379_305 AllocBody379_308

def AllocBody379_310 : StackLang.HolProg 64 :=
.seq AllocBody379_304 AllocBody379_309

def AllocBody379_311 : StackLang.HolProg 64 :=
.seq AllocBody379_303 AllocBody379_310

def AllocBody379_312 : StackLang.HolProg 64 :=
.seq AllocBody379_302 AllocBody379_311

def AllocBody379_313 : StackLang.HolProg 64 :=
.seq AllocBody379_301 AllocBody379_312

def AllocBody379_314 : StackLang.HolProg 64 :=
.seq AllocBody379_286 AllocBody379_313

def AllocBody379_315 : StackLang.HolProg 64 :=
.seq AllocBody379_285 AllocBody379_314

def AllocBody379_316 : StackLang.HolProg 64 :=
.seq AllocBody379_284 AllocBody379_315

def AllocBody379_317 : StackLang.HolProg 64 :=
.seq AllocBody379_283 AllocBody379_316

def AllocBody379_318 : StackLang.HolProg 64 :=
.seq AllocBody379_236 AllocBody379_317

def AllocBody379_319 : StackLang.HolProg 64 :=
.seq AllocBody379_233 AllocBody379_318

def AllocBody379_320 : StackLang.HolProg 64 :=
.seq AllocBody379_232 AllocBody379_319

def AllocBody379_321 : StackLang.HolProg 64 :=
.seq AllocBody379_187 AllocBody379_320

def AllocBody379_322 : StackLang.HolProg 64 :=
.seq AllocBody379_186 AllocBody379_321

def AllocBody379_323 : StackLang.HolProg 64 :=
.seq AllocBody379_185 AllocBody379_322

def AllocBody379_324 : StackLang.HolProg 64 :=
.seq AllocBody379_184 AllocBody379_323

def AllocBody379_325 : StackLang.HolProg 64 :=
.seq AllocBody379_183 AllocBody379_324

def AllocBody379_326 : StackLang.HolProg 64 :=
.seq AllocBody379_182 AllocBody379_325

def AllocBody379_327 : StackLang.HolProg 64 :=
.seq AllocBody379_181 AllocBody379_326

def AllocBody379_328 : StackLang.HolProg 64 :=
.seq AllocBody379_180 AllocBody379_327

def AllocBody379_329 : StackLang.HolProg 64 :=
.seq AllocBody379_179 AllocBody379_328

def AllocBody379_330 : StackLang.HolProg 64 :=
.seq AllocBody379_178 AllocBody379_329

def AllocBody379_331 : StackLang.HolProg 64 :=
.seq AllocBody379_177 AllocBody379_330

def AllocBody379_332 : StackLang.HolProg 64 :=
.seq AllocBody379_176 AllocBody379_331

def AllocBody379_333 : StackLang.HolProg 64 :=
.seq AllocBody379_175 AllocBody379_332

def AllocBody379_334 : StackLang.HolProg 64 :=
.seq AllocBody379_174 AllocBody379_333

def AllocBody379_335 : StackLang.HolProg 64 :=
.seq AllocBody379_173 AllocBody379_334

def AllocBody379_336 : StackLang.HolProg 64 :=
.seq AllocBody379_172 AllocBody379_335

def AllocBody379_337 : StackLang.HolProg 64 :=
.seq AllocBody379_171 AllocBody379_336

def AllocBody379_338 : StackLang.HolProg 64 :=
.seq AllocBody379_170 AllocBody379_337

def AllocBody379_339 : StackLang.HolProg 64 :=
.seq AllocBody379_169 AllocBody379_338

def AllocBody379_340 : StackLang.HolProg 64 :=
.seq AllocBody379_116 AllocBody379_339

def AllocBody379_341 : StackLang.HolProg 64 :=
.seq AllocBody379_111 AllocBody379_340

def AllocBody379_342 : StackLang.HolProg 64 :=
.seq AllocBody379_110 AllocBody379_341

def AllocBody379_343 : StackLang.HolProg 64 :=
.seq AllocBody379_53 AllocBody379_342

def AllocBody379_344 : StackLang.HolProg 64 :=
.seq AllocBody379_52 AllocBody379_343

def AllocBody379_345 : StackLang.HolProg 64 :=
.seq AllocBody379_51 AllocBody379_344

def AllocBody379_346 : StackLang.HolProg 64 :=
.seq AllocBody379_50 AllocBody379_345

def AllocBody379_347 : StackLang.HolProg 64 :=
.seq AllocBody379_7 AllocBody379_346

def AllocBody379_348 : StackLang.HolProg 64 :=
.seq AllocBody379_0 AllocBody379_347

def Alloc379 : Nat × StackLang.HolProg 64 := (379, AllocBody379_348)
theorem Alloc379_eq : StackAlloc.progComp (379, raw379) = Alloc379 := by
  kernel_rfl
#print axioms Alloc379_eq
end InitECandidate.Proofs.BackendStages
