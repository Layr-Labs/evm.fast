import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw252
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody252_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody252_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody252_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody252_3 : StackLang.HolProg 64 :=
.seq AllocBody252_1 AllocBody252_2

def AllocBody252_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 516#64)

def AllocBody252_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody252_7 : StackLang.HolProg 64 :=
.seq AllocBody252_5 AllocBody252_6

def AllocBody252_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody252_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody252_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody252_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 3

def AllocBody252_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody252_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody252_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody252_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody252_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody252_18 : StackLang.HolProg 64 :=
.seq AllocBody252_16 AllocBody252_17

def AllocBody252_19 : StackLang.HolProg 64 :=
.seq AllocBody252_15 AllocBody252_18

def AllocBody252_20 : StackLang.HolProg 64 :=
.seq AllocBody252_14 AllocBody252_19

def AllocBody252_21 : StackLang.HolProg 64 :=
.seq AllocBody252_13 AllocBody252_20

def AllocBody252_22 : StackLang.HolProg 64 :=
.seq AllocBody252_12 AllocBody252_21

def AllocBody252_23 : StackLang.HolProg 64 :=
.seq AllocBody252_11 AllocBody252_22

def AllocBody252_24 : StackLang.HolProg 64 :=
.seq AllocBody252_10 AllocBody252_23

def AllocBody252_25 : StackLang.HolProg 64 :=
.seq AllocBody252_9 AllocBody252_24

def AllocBody252_26 : StackLang.HolProg 64 :=
.seq AllocBody252_8 AllocBody252_25

def AllocBody252_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody252_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody252_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody252_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody252_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody252_34 : StackLang.HolProg 64 :=
.seq AllocBody252_32 AllocBody252_33

def AllocBody252_35 : StackLang.HolProg 64 :=
.seq AllocBody252_31 AllocBody252_34

def AllocBody252_36 : StackLang.HolProg 64 :=
.seq AllocBody252_30 AllocBody252_35

def AllocBody252_37 : StackLang.HolProg 64 :=
.seq AllocBody252_29 AllocBody252_36

def AllocBody252_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody252_40 : StackLang.HolProg 64 :=
.seq AllocBody252_38 AllocBody252_39

def AllocBody252_41 : StackLang.HolProg 64 :=
.call (some (AllocBody252_37, 0, 252, 2)) (Sum.inl 94) (some (AllocBody252_40, 252, 3))

def AllocBody252_42 : StackLang.HolProg 64 :=
.seq AllocBody252_28 AllocBody252_41

def AllocBody252_43 : StackLang.HolProg 64 :=
.seq AllocBody252_27 AllocBody252_42

def AllocBody252_44 : StackLang.HolProg 64 :=
.seq AllocBody252_26 AllocBody252_43

def AllocBody252_45 : StackLang.HolProg 64 :=
.seq AllocBody252_7 AllocBody252_44

def AllocBody252_46 : StackLang.HolProg 64 :=
.seq AllocBody252_4 AllocBody252_45

def AllocBody252_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody252_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody252_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody252_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 30#64)

def AllocBody252_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody252_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 517#64)

def AllocBody252_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody252_56 : StackLang.HolProg 64 :=
.seq AllocBody252_54 AllocBody252_55

def AllocBody252_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody252_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody252_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody252_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 5

def AllocBody252_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody252_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody252_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody252_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody252_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody252_67 : StackLang.HolProg 64 :=
.seq AllocBody252_65 AllocBody252_66

def AllocBody252_68 : StackLang.HolProg 64 :=
.seq AllocBody252_64 AllocBody252_67

def AllocBody252_69 : StackLang.HolProg 64 :=
.seq AllocBody252_63 AllocBody252_68

def AllocBody252_70 : StackLang.HolProg 64 :=
.seq AllocBody252_62 AllocBody252_69

def AllocBody252_71 : StackLang.HolProg 64 :=
.seq AllocBody252_61 AllocBody252_70

def AllocBody252_72 : StackLang.HolProg 64 :=
.seq AllocBody252_60 AllocBody252_71

def AllocBody252_73 : StackLang.HolProg 64 :=
.seq AllocBody252_59 AllocBody252_72

def AllocBody252_74 : StackLang.HolProg 64 :=
.seq AllocBody252_58 AllocBody252_73

def AllocBody252_75 : StackLang.HolProg 64 :=
.seq AllocBody252_57 AllocBody252_74

def AllocBody252_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody252_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody252_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody252_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody252_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody252_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody252_84 : StackLang.HolProg 64 :=
.seq AllocBody252_82 AllocBody252_83

def AllocBody252_85 : StackLang.HolProg 64 :=
.seq AllocBody252_81 AllocBody252_84

def AllocBody252_86 : StackLang.HolProg 64 :=
.seq AllocBody252_80 AllocBody252_85

def AllocBody252_87 : StackLang.HolProg 64 :=
.seq AllocBody252_79 AllocBody252_86

def AllocBody252_88 : StackLang.HolProg 64 :=
.seq AllocBody252_78 AllocBody252_87

def AllocBody252_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody252_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody252_91 : StackLang.HolProg 64 :=
.seq AllocBody252_89 AllocBody252_90

def AllocBody252_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody252_93 : StackLang.HolProg 64 :=
.seq AllocBody252_91 AllocBody252_92

def AllocBody252_94 : StackLang.HolProg 64 :=
.call (some (AllocBody252_88, 0, 252, 4)) (Sum.inl 245) (some (AllocBody252_93, 252, 5))

def AllocBody252_95 : StackLang.HolProg 64 :=
.seq AllocBody252_77 AllocBody252_94

def AllocBody252_96 : StackLang.HolProg 64 :=
.seq AllocBody252_76 AllocBody252_95

def AllocBody252_97 : StackLang.HolProg 64 :=
.seq AllocBody252_75 AllocBody252_96

def AllocBody252_98 : StackLang.HolProg 64 :=
.seq AllocBody252_56 AllocBody252_97

def AllocBody252_99 : StackLang.HolProg 64 :=
.seq AllocBody252_53 AllocBody252_98

def AllocBody252_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody252_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_102 : StackLang.HolProg 64 :=
.seq AllocBody252_100 AllocBody252_101

def AllocBody252_103 : StackLang.HolProg 64 :=
.seq AllocBody252_99 AllocBody252_102

def AllocBody252_104 : StackLang.HolProg 64 :=
.seq AllocBody252_52 AllocBody252_103

def AllocBody252_105 : StackLang.HolProg 64 :=
.seq AllocBody252_51 AllocBody252_104

def AllocBody252_106 : StackLang.HolProg 64 :=
.seq AllocBody252_50 AllocBody252_105

def AllocBody252_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody252_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody252_109 : StackLang.HolProg 64 :=
.seq AllocBody252_107 AllocBody252_108

def AllocBody252_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody252_106 AllocBody252_109

def AllocBody252_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody252_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody252_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 31#64)

def AllocBody252_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody252_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 518#64)

def AllocBody252_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody252_119 : StackLang.HolProg 64 :=
.seq AllocBody252_117 AllocBody252_118

def AllocBody252_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody252_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody252_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody252_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 7

def AllocBody252_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody252_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody252_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody252_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody252_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody252_130 : StackLang.HolProg 64 :=
.seq AllocBody252_128 AllocBody252_129

def AllocBody252_131 : StackLang.HolProg 64 :=
.seq AllocBody252_127 AllocBody252_130

def AllocBody252_132 : StackLang.HolProg 64 :=
.seq AllocBody252_126 AllocBody252_131

def AllocBody252_133 : StackLang.HolProg 64 :=
.seq AllocBody252_125 AllocBody252_132

def AllocBody252_134 : StackLang.HolProg 64 :=
.seq AllocBody252_124 AllocBody252_133

def AllocBody252_135 : StackLang.HolProg 64 :=
.seq AllocBody252_123 AllocBody252_134

def AllocBody252_136 : StackLang.HolProg 64 :=
.seq AllocBody252_122 AllocBody252_135

def AllocBody252_137 : StackLang.HolProg 64 :=
.seq AllocBody252_121 AllocBody252_136

def AllocBody252_138 : StackLang.HolProg 64 :=
.seq AllocBody252_120 AllocBody252_137

def AllocBody252_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody252_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody252_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody252_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody252_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody252_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody252_147 : StackLang.HolProg 64 :=
.seq AllocBody252_145 AllocBody252_146

def AllocBody252_148 : StackLang.HolProg 64 :=
.seq AllocBody252_144 AllocBody252_147

def AllocBody252_149 : StackLang.HolProg 64 :=
.seq AllocBody252_143 AllocBody252_148

def AllocBody252_150 : StackLang.HolProg 64 :=
.seq AllocBody252_142 AllocBody252_149

def AllocBody252_151 : StackLang.HolProg 64 :=
.seq AllocBody252_141 AllocBody252_150

def AllocBody252_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody252_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody252_154 : StackLang.HolProg 64 :=
.seq AllocBody252_152 AllocBody252_153

def AllocBody252_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody252_156 : StackLang.HolProg 64 :=
.seq AllocBody252_154 AllocBody252_155

def AllocBody252_157 : StackLang.HolProg 64 :=
.call (some (AllocBody252_151, 0, 252, 6)) (Sum.inl 245) (some (AllocBody252_156, 252, 7))

def AllocBody252_158 : StackLang.HolProg 64 :=
.seq AllocBody252_140 AllocBody252_157

def AllocBody252_159 : StackLang.HolProg 64 :=
.seq AllocBody252_139 AllocBody252_158

def AllocBody252_160 : StackLang.HolProg 64 :=
.seq AllocBody252_138 AllocBody252_159

def AllocBody252_161 : StackLang.HolProg 64 :=
.seq AllocBody252_119 AllocBody252_160

def AllocBody252_162 : StackLang.HolProg 64 :=
.seq AllocBody252_116 AllocBody252_161

def AllocBody252_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody252_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody252_165 : StackLang.HolProg 64 :=
.seq AllocBody252_163 AllocBody252_164

def AllocBody252_166 : StackLang.HolProg 64 :=
.seq AllocBody252_162 AllocBody252_165

def AllocBody252_167 : StackLang.HolProg 64 :=
.seq AllocBody252_115 AllocBody252_166

def AllocBody252_168 : StackLang.HolProg 64 :=
.seq AllocBody252_114 AllocBody252_167

def AllocBody252_169 : StackLang.HolProg 64 :=
.seq AllocBody252_113 AllocBody252_168

def AllocBody252_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody252_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody252_172 : StackLang.HolProg 64 :=
.seq AllocBody252_170 AllocBody252_171

def AllocBody252_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody252_169 AllocBody252_172

def AllocBody252_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody252_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody252_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody252_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody252_178 : StackLang.HolProg 64 :=
.seq AllocBody252_176 AllocBody252_177

def AllocBody252_179 : StackLang.HolProg 64 :=
.seq AllocBody252_175 AllocBody252_178

def AllocBody252_180 : StackLang.HolProg 64 :=
.seq AllocBody252_174 AllocBody252_179

def AllocBody252_181 : StackLang.HolProg 64 :=
.seq AllocBody252_173 AllocBody252_180

def AllocBody252_182 : StackLang.HolProg 64 :=
.seq AllocBody252_112 AllocBody252_181

def AllocBody252_183 : StackLang.HolProg 64 :=
.seq AllocBody252_111 AllocBody252_182

def AllocBody252_184 : StackLang.HolProg 64 :=
.seq AllocBody252_110 AllocBody252_183

def AllocBody252_185 : StackLang.HolProg 64 :=
.seq AllocBody252_49 AllocBody252_184

def AllocBody252_186 : StackLang.HolProg 64 :=
.seq AllocBody252_48 AllocBody252_185

def AllocBody252_187 : StackLang.HolProg 64 :=
.seq AllocBody252_47 AllocBody252_186

def AllocBody252_188 : StackLang.HolProg 64 :=
.seq AllocBody252_46 AllocBody252_187

def AllocBody252_189 : StackLang.HolProg 64 :=
.seq AllocBody252_3 AllocBody252_188

def AllocBody252_190 : StackLang.HolProg 64 :=
.seq AllocBody252_0 AllocBody252_189

def Alloc252 : Nat × StackLang.HolProg 64 := (252, AllocBody252_190)
theorem Alloc252_eq : StackAlloc.progComp (252, raw252) = Alloc252 := by
  kernel_rfl
#print axioms Alloc252_eq
end InitECandidate.Proofs.BackendStages
