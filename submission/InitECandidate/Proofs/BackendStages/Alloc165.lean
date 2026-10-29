import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw165
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody165_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody165_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody165_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody165_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody165_4 : StackLang.HolProg 64 :=
.seq AllocBody165_2 AllocBody165_3

def AllocBody165_5 : StackLang.HolProg 64 :=
.seq AllocBody165_1 AllocBody165_4

def AllocBody165_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 178#64)

def AllocBody165_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody165_9 : StackLang.HolProg 64 :=
.seq AllocBody165_7 AllocBody165_8

def AllocBody165_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody165_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody165_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody165_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 3

def AllocBody165_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody165_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody165_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody165_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody165_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody165_20 : StackLang.HolProg 64 :=
.seq AllocBody165_18 AllocBody165_19

def AllocBody165_21 : StackLang.HolProg 64 :=
.seq AllocBody165_17 AllocBody165_20

def AllocBody165_22 : StackLang.HolProg 64 :=
.seq AllocBody165_16 AllocBody165_21

def AllocBody165_23 : StackLang.HolProg 64 :=
.seq AllocBody165_15 AllocBody165_22

def AllocBody165_24 : StackLang.HolProg 64 :=
.seq AllocBody165_14 AllocBody165_23

def AllocBody165_25 : StackLang.HolProg 64 :=
.seq AllocBody165_13 AllocBody165_24

def AllocBody165_26 : StackLang.HolProg 64 :=
.seq AllocBody165_12 AllocBody165_25

def AllocBody165_27 : StackLang.HolProg 64 :=
.seq AllocBody165_11 AllocBody165_26

def AllocBody165_28 : StackLang.HolProg 64 :=
.seq AllocBody165_10 AllocBody165_27

def AllocBody165_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody165_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody165_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody165_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody165_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody165_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody165_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody165_38 : StackLang.HolProg 64 :=
.seq AllocBody165_36 AllocBody165_37

def AllocBody165_39 : StackLang.HolProg 64 :=
.seq AllocBody165_35 AllocBody165_38

def AllocBody165_40 : StackLang.HolProg 64 :=
.seq AllocBody165_34 AllocBody165_39

def AllocBody165_41 : StackLang.HolProg 64 :=
.seq AllocBody165_33 AllocBody165_40

def AllocBody165_42 : StackLang.HolProg 64 :=
.seq AllocBody165_32 AllocBody165_41

def AllocBody165_43 : StackLang.HolProg 64 :=
.seq AllocBody165_31 AllocBody165_42

def AllocBody165_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody165_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody165_46 : StackLang.HolProg 64 :=
.seq AllocBody165_44 AllocBody165_45

def AllocBody165_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody165_48 : StackLang.HolProg 64 :=
.seq AllocBody165_46 AllocBody165_47

def AllocBody165_49 : StackLang.HolProg 64 :=
.call (some (AllocBody165_43, 0, 165, 2)) (Sum.inl 75) (some (AllocBody165_48, 165, 3))

def AllocBody165_50 : StackLang.HolProg 64 :=
.seq AllocBody165_30 AllocBody165_49

def AllocBody165_51 : StackLang.HolProg 64 :=
.seq AllocBody165_29 AllocBody165_50

def AllocBody165_52 : StackLang.HolProg 64 :=
.seq AllocBody165_28 AllocBody165_51

def AllocBody165_53 : StackLang.HolProg 64 :=
.seq AllocBody165_9 AllocBody165_52

def AllocBody165_54 : StackLang.HolProg 64 :=
.seq AllocBody165_6 AllocBody165_53

def AllocBody165_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody165_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody165_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody165_58 : StackLang.HolProg 64 :=
.seq AllocBody165_56 AllocBody165_57

def AllocBody165_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 179#64)

def AllocBody165_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody165_62 : StackLang.HolProg 64 :=
.seq AllocBody165_60 AllocBody165_61

def AllocBody165_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody165_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody165_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody165_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 7

def AllocBody165_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody165_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody165_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody165_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody165_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody165_73 : StackLang.HolProg 64 :=
.seq AllocBody165_71 AllocBody165_72

def AllocBody165_74 : StackLang.HolProg 64 :=
.seq AllocBody165_70 AllocBody165_73

def AllocBody165_75 : StackLang.HolProg 64 :=
.seq AllocBody165_69 AllocBody165_74

def AllocBody165_76 : StackLang.HolProg 64 :=
.seq AllocBody165_68 AllocBody165_75

def AllocBody165_77 : StackLang.HolProg 64 :=
.seq AllocBody165_67 AllocBody165_76

def AllocBody165_78 : StackLang.HolProg 64 :=
.seq AllocBody165_66 AllocBody165_77

def AllocBody165_79 : StackLang.HolProg 64 :=
.seq AllocBody165_65 AllocBody165_78

def AllocBody165_80 : StackLang.HolProg 64 :=
.seq AllocBody165_64 AllocBody165_79

def AllocBody165_81 : StackLang.HolProg 64 :=
.seq AllocBody165_63 AllocBody165_80

def AllocBody165_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody165_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody165_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody165_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody165_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody165_89 : StackLang.HolProg 64 :=
.seq AllocBody165_87 AllocBody165_88

def AllocBody165_90 : StackLang.HolProg 64 :=
.seq AllocBody165_86 AllocBody165_89

def AllocBody165_91 : StackLang.HolProg 64 :=
.seq AllocBody165_85 AllocBody165_90

def AllocBody165_92 : StackLang.HolProg 64 :=
.seq AllocBody165_84 AllocBody165_91

def AllocBody165_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody165_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody165_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody165_96 : StackLang.HolProg 64 :=
.seq AllocBody165_94 AllocBody165_95

def AllocBody165_97 : StackLang.HolProg 64 :=
.seq AllocBody165_93 AllocBody165_96

def AllocBody165_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody165_100 : StackLang.HolProg 64 :=
.seq AllocBody165_98 AllocBody165_99

def AllocBody165_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody165_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody165_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody165_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody165_105 : StackLang.HolProg 64 :=
.seq AllocBody165_103 AllocBody165_104

def AllocBody165_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 180#64)

def AllocBody165_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody165_109 : StackLang.HolProg 64 :=
.seq AllocBody165_107 AllocBody165_108

def AllocBody165_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody165_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody165_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody165_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 6

def AllocBody165_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody165_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody165_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody165_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody165_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody165_120 : StackLang.HolProg 64 :=
.seq AllocBody165_118 AllocBody165_119

def AllocBody165_121 : StackLang.HolProg 64 :=
.seq AllocBody165_117 AllocBody165_120

def AllocBody165_122 : StackLang.HolProg 64 :=
.seq AllocBody165_116 AllocBody165_121

def AllocBody165_123 : StackLang.HolProg 64 :=
.seq AllocBody165_115 AllocBody165_122

def AllocBody165_124 : StackLang.HolProg 64 :=
.seq AllocBody165_114 AllocBody165_123

def AllocBody165_125 : StackLang.HolProg 64 :=
.seq AllocBody165_113 AllocBody165_124

def AllocBody165_126 : StackLang.HolProg 64 :=
.seq AllocBody165_112 AllocBody165_125

def AllocBody165_127 : StackLang.HolProg 64 :=
.seq AllocBody165_111 AllocBody165_126

def AllocBody165_128 : StackLang.HolProg 64 :=
.seq AllocBody165_110 AllocBody165_127

def AllocBody165_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody165_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody165_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody165_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody165_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody165_136 : StackLang.HolProg 64 :=
.seq AllocBody165_134 AllocBody165_135

def AllocBody165_137 : StackLang.HolProg 64 :=
.seq AllocBody165_133 AllocBody165_136

def AllocBody165_138 : StackLang.HolProg 64 :=
.seq AllocBody165_132 AllocBody165_137

def AllocBody165_139 : StackLang.HolProg 64 :=
.seq AllocBody165_131 AllocBody165_138

def AllocBody165_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody165_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody165_142 : StackLang.HolProg 64 :=
.seq AllocBody165_140 AllocBody165_141

def AllocBody165_143 : StackLang.HolProg 64 :=
.call (some (AllocBody165_139, 0, 165, 5)) (Sum.inl 76) (some (AllocBody165_142, 165, 6))

def AllocBody165_144 : StackLang.HolProg 64 :=
.seq AllocBody165_130 AllocBody165_143

def AllocBody165_145 : StackLang.HolProg 64 :=
.seq AllocBody165_129 AllocBody165_144

def AllocBody165_146 : StackLang.HolProg 64 :=
.seq AllocBody165_128 AllocBody165_145

def AllocBody165_147 : StackLang.HolProg 64 :=
.seq AllocBody165_109 AllocBody165_146

def AllocBody165_148 : StackLang.HolProg 64 :=
.seq AllocBody165_106 AllocBody165_147

def AllocBody165_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody165_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 2

def AllocBody165_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody165_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody165_155 : StackLang.HolProg 64 :=
.seq AllocBody165_153 AllocBody165_154

def AllocBody165_156 : StackLang.HolProg 64 :=
.seq AllocBody165_152 AllocBody165_155

def AllocBody165_157 : StackLang.HolProg 64 :=
.seq AllocBody165_151 AllocBody165_156

def AllocBody165_158 : StackLang.HolProg 64 :=
.seq AllocBody165_150 AllocBody165_157

def AllocBody165_159 : StackLang.HolProg 64 :=
.seq AllocBody165_149 AllocBody165_158

def AllocBody165_160 : StackLang.HolProg 64 :=
.seq AllocBody165_148 AllocBody165_159

def AllocBody165_161 : StackLang.HolProg 64 :=
.seq AllocBody165_105 AllocBody165_160

def AllocBody165_162 : StackLang.HolProg 64 :=
.seq AllocBody165_102 AllocBody165_161

def AllocBody165_163 : StackLang.HolProg 64 :=
.seq AllocBody165_101 AllocBody165_162

def AllocBody165_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) AllocBody165_100 AllocBody165_163

def AllocBody165_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody165_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody165_167 : StackLang.HolProg 64 :=
.seq AllocBody165_165 AllocBody165_166

def AllocBody165_168 : StackLang.HolProg 64 :=
.seq AllocBody165_164 AllocBody165_167

def AllocBody165_169 : StackLang.HolProg 64 :=
.seq AllocBody165_97 AllocBody165_168

def AllocBody165_170 : StackLang.HolProg 64 :=
.call (some (AllocBody165_92, 0, 165, 4)) (Sum.inl 164) (some (AllocBody165_169, 165, 7))

def AllocBody165_171 : StackLang.HolProg 64 :=
.seq AllocBody165_83 AllocBody165_170

def AllocBody165_172 : StackLang.HolProg 64 :=
.seq AllocBody165_82 AllocBody165_171

def AllocBody165_173 : StackLang.HolProg 64 :=
.seq AllocBody165_81 AllocBody165_172

def AllocBody165_174 : StackLang.HolProg 64 :=
.seq AllocBody165_62 AllocBody165_173

def AllocBody165_175 : StackLang.HolProg 64 :=
.seq AllocBody165_59 AllocBody165_174

def AllocBody165_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody165_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody165_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 181#64)

def AllocBody165_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody165_181 : StackLang.HolProg 64 :=
.seq AllocBody165_179 AllocBody165_180

def AllocBody165_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody165_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody165_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody165_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 9

def AllocBody165_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody165_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody165_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody165_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody165_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody165_192 : StackLang.HolProg 64 :=
.seq AllocBody165_190 AllocBody165_191

def AllocBody165_193 : StackLang.HolProg 64 :=
.seq AllocBody165_189 AllocBody165_192

def AllocBody165_194 : StackLang.HolProg 64 :=
.seq AllocBody165_188 AllocBody165_193

def AllocBody165_195 : StackLang.HolProg 64 :=
.seq AllocBody165_187 AllocBody165_194

def AllocBody165_196 : StackLang.HolProg 64 :=
.seq AllocBody165_186 AllocBody165_195

def AllocBody165_197 : StackLang.HolProg 64 :=
.seq AllocBody165_185 AllocBody165_196

def AllocBody165_198 : StackLang.HolProg 64 :=
.seq AllocBody165_184 AllocBody165_197

def AllocBody165_199 : StackLang.HolProg 64 :=
.seq AllocBody165_183 AllocBody165_198

def AllocBody165_200 : StackLang.HolProg 64 :=
.seq AllocBody165_182 AllocBody165_199

def AllocBody165_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody165_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody165_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody165_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody165_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody165_208 : StackLang.HolProg 64 :=
.seq AllocBody165_206 AllocBody165_207

def AllocBody165_209 : StackLang.HolProg 64 :=
.seq AllocBody165_205 AllocBody165_208

def AllocBody165_210 : StackLang.HolProg 64 :=
.seq AllocBody165_204 AllocBody165_209

def AllocBody165_211 : StackLang.HolProg 64 :=
.seq AllocBody165_203 AllocBody165_210

def AllocBody165_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody165_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody165_214 : StackLang.HolProg 64 :=
.seq AllocBody165_212 AllocBody165_213

def AllocBody165_215 : StackLang.HolProg 64 :=
.call (some (AllocBody165_211, 0, 165, 8)) (Sum.inl 76) (some (AllocBody165_214, 165, 9))

def AllocBody165_216 : StackLang.HolProg 64 :=
.seq AllocBody165_202 AllocBody165_215

def AllocBody165_217 : StackLang.HolProg 64 :=
.seq AllocBody165_201 AllocBody165_216

def AllocBody165_218 : StackLang.HolProg 64 :=
.seq AllocBody165_200 AllocBody165_217

def AllocBody165_219 : StackLang.HolProg 64 :=
.seq AllocBody165_181 AllocBody165_218

def AllocBody165_220 : StackLang.HolProg 64 :=
.seq AllocBody165_178 AllocBody165_219

def AllocBody165_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody165_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody165_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody165_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody165_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody165_226 : StackLang.HolProg 64 :=
.seq AllocBody165_224 AllocBody165_225

def AllocBody165_227 : StackLang.HolProg 64 :=
.seq AllocBody165_223 AllocBody165_226

def AllocBody165_228 : StackLang.HolProg 64 :=
.seq AllocBody165_222 AllocBody165_227

def AllocBody165_229 : StackLang.HolProg 64 :=
.seq AllocBody165_221 AllocBody165_228

def AllocBody165_230 : StackLang.HolProg 64 :=
.seq AllocBody165_220 AllocBody165_229

def AllocBody165_231 : StackLang.HolProg 64 :=
.seq AllocBody165_177 AllocBody165_230

def AllocBody165_232 : StackLang.HolProg 64 :=
.seq AllocBody165_176 AllocBody165_231

def AllocBody165_233 : StackLang.HolProg 64 :=
.seq AllocBody165_175 AllocBody165_232

def AllocBody165_234 : StackLang.HolProg 64 :=
.seq AllocBody165_58 AllocBody165_233

def AllocBody165_235 : StackLang.HolProg 64 :=
.seq AllocBody165_55 AllocBody165_234

def AllocBody165_236 : StackLang.HolProg 64 :=
.seq AllocBody165_54 AllocBody165_235

def AllocBody165_237 : StackLang.HolProg 64 :=
.seq AllocBody165_5 AllocBody165_236

def AllocBody165_238 : StackLang.HolProg 64 :=
.seq AllocBody165_0 AllocBody165_237

def Alloc165 : Nat × StackLang.HolProg 64 := (165, AllocBody165_238)
theorem Alloc165_eq : StackAlloc.progComp (165, raw165) = Alloc165 := by
  kernel_rfl
#print axioms Alloc165_eq
end InitECandidate.Proofs.BackendStages
