import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function861
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody861_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody861_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody861_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody861_3 : StackLang.HolProg 64 :=
.seq rawBody861_1 rawBody861_2

def rawBody861_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4378#64)

def rawBody861_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody861_7 : StackLang.HolProg 64 :=
.seq rawBody861_5 rawBody861_6

def rawBody861_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody861_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody861_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody861_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 3

def rawBody861_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody861_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody861_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody861_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody861_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody861_18 : StackLang.HolProg 64 :=
.seq rawBody861_16 rawBody861_17

def rawBody861_19 : StackLang.HolProg 64 :=
.seq rawBody861_15 rawBody861_18

def rawBody861_20 : StackLang.HolProg 64 :=
.seq rawBody861_14 rawBody861_19

def rawBody861_21 : StackLang.HolProg 64 :=
.seq rawBody861_13 rawBody861_20

def rawBody861_22 : StackLang.HolProg 64 :=
.seq rawBody861_12 rawBody861_21

def rawBody861_23 : StackLang.HolProg 64 :=
.seq rawBody861_11 rawBody861_22

def rawBody861_24 : StackLang.HolProg 64 :=
.seq rawBody861_10 rawBody861_23

def rawBody861_25 : StackLang.HolProg 64 :=
.seq rawBody861_9 rawBody861_24

def rawBody861_26 : StackLang.HolProg 64 :=
.seq rawBody861_8 rawBody861_25

def rawBody861_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody861_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody861_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody861_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody861_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody861_34 : StackLang.HolProg 64 :=
.seq rawBody861_32 rawBody861_33

def rawBody861_35 : StackLang.HolProg 64 :=
.seq rawBody861_31 rawBody861_34

def rawBody861_36 : StackLang.HolProg 64 :=
.seq rawBody861_30 rawBody861_35

def rawBody861_37 : StackLang.HolProg 64 :=
.seq rawBody861_29 rawBody861_36

def rawBody861_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody861_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody861_40 : StackLang.HolProg 64 :=
.seq rawBody861_38 rawBody861_39

def rawBody861_41 : StackLang.HolProg 64 :=
.call (some (rawBody861_37, 0, 861, 2)) (Sum.inl 387) (some (rawBody861_40, 861, 3))

def rawBody861_42 : StackLang.HolProg 64 :=
.seq rawBody861_28 rawBody861_41

def rawBody861_43 : StackLang.HolProg 64 :=
.seq rawBody861_27 rawBody861_42

def rawBody861_44 : StackLang.HolProg 64 :=
.seq rawBody861_26 rawBody861_43

def rawBody861_45 : StackLang.HolProg 64 :=
.seq rawBody861_7 rawBody861_44

def rawBody861_46 : StackLang.HolProg 64 :=
.seq rawBody861_4 rawBody861_45

def rawBody861_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody861_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody861_50 : StackLang.HolProg 64 :=
.seq rawBody861_48 rawBody861_49

def rawBody861_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4379#64)

def rawBody861_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody861_54 : StackLang.HolProg 64 :=
.seq rawBody861_52 rawBody861_53

def rawBody861_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody861_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody861_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody861_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 5

def rawBody861_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody861_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody861_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody861_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody861_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody861_65 : StackLang.HolProg 64 :=
.seq rawBody861_63 rawBody861_64

def rawBody861_66 : StackLang.HolProg 64 :=
.seq rawBody861_62 rawBody861_65

def rawBody861_67 : StackLang.HolProg 64 :=
.seq rawBody861_61 rawBody861_66

def rawBody861_68 : StackLang.HolProg 64 :=
.seq rawBody861_60 rawBody861_67

def rawBody861_69 : StackLang.HolProg 64 :=
.seq rawBody861_59 rawBody861_68

def rawBody861_70 : StackLang.HolProg 64 :=
.seq rawBody861_58 rawBody861_69

def rawBody861_71 : StackLang.HolProg 64 :=
.seq rawBody861_57 rawBody861_70

def rawBody861_72 : StackLang.HolProg 64 :=
.seq rawBody861_56 rawBody861_71

def rawBody861_73 : StackLang.HolProg 64 :=
.seq rawBody861_55 rawBody861_72

def rawBody861_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody861_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody861_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody861_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody861_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_81 : StackLang.HolProg 64 :=
.seq rawBody861_79 rawBody861_80

def rawBody861_82 : StackLang.HolProg 64 :=
.seq rawBody861_78 rawBody861_81

def rawBody861_83 : StackLang.HolProg 64 :=
.seq rawBody861_77 rawBody861_82

def rawBody861_84 : StackLang.HolProg 64 :=
.seq rawBody861_76 rawBody861_83

def rawBody861_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody861_87 : StackLang.HolProg 64 :=
.seq rawBody861_85 rawBody861_86

def rawBody861_88 : StackLang.HolProg 64 :=
.call (some (rawBody861_84, 0, 861, 4)) (Sum.inl 565) (some (rawBody861_87, 861, 5))

def rawBody861_89 : StackLang.HolProg 64 :=
.seq rawBody861_75 rawBody861_88

def rawBody861_90 : StackLang.HolProg 64 :=
.seq rawBody861_74 rawBody861_89

def rawBody861_91 : StackLang.HolProg 64 :=
.seq rawBody861_73 rawBody861_90

def rawBody861_92 : StackLang.HolProg 64 :=
.seq rawBody861_54 rawBody861_91

def rawBody861_93 : StackLang.HolProg 64 :=
.seq rawBody861_51 rawBody861_92

def rawBody861_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody861_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 70#64)

def rawBody861_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody861_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def rawBody861_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody861_104 : StackLang.HolProg 64 :=
.seq rawBody861_102 rawBody861_103

def rawBody861_105 : StackLang.HolProg 64 :=
.seq rawBody861_101 rawBody861_104

def rawBody861_106 : StackLang.HolProg 64 :=
.seq rawBody861_100 rawBody861_105

def rawBody861_107 : StackLang.HolProg 64 :=
.seq rawBody861_99 rawBody861_106

def rawBody861_108 : StackLang.HolProg 64 :=
.seq rawBody861_98 rawBody861_107

def rawBody861_109 : StackLang.HolProg 64 :=
.seq rawBody861_97 rawBody861_108

def rawBody861_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody861_109 rawBody861_110

def rawBody861_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody861_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4380#64)

def rawBody861_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody861_119 : StackLang.HolProg 64 :=
.seq rawBody861_117 rawBody861_118

def rawBody861_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody861_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody861_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody861_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 7

def rawBody861_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody861_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody861_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody861_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody861_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody861_130 : StackLang.HolProg 64 :=
.seq rawBody861_128 rawBody861_129

def rawBody861_131 : StackLang.HolProg 64 :=
.seq rawBody861_127 rawBody861_130

def rawBody861_132 : StackLang.HolProg 64 :=
.seq rawBody861_126 rawBody861_131

def rawBody861_133 : StackLang.HolProg 64 :=
.seq rawBody861_125 rawBody861_132

def rawBody861_134 : StackLang.HolProg 64 :=
.seq rawBody861_124 rawBody861_133

def rawBody861_135 : StackLang.HolProg 64 :=
.seq rawBody861_123 rawBody861_134

def rawBody861_136 : StackLang.HolProg 64 :=
.seq rawBody861_122 rawBody861_135

def rawBody861_137 : StackLang.HolProg 64 :=
.seq rawBody861_121 rawBody861_136

def rawBody861_138 : StackLang.HolProg 64 :=
.seq rawBody861_120 rawBody861_137

def rawBody861_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody861_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody861_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody861_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody861_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody861_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody861_147 : StackLang.HolProg 64 :=
.seq rawBody861_145 rawBody861_146

def rawBody861_148 : StackLang.HolProg 64 :=
.seq rawBody861_144 rawBody861_147

def rawBody861_149 : StackLang.HolProg 64 :=
.seq rawBody861_143 rawBody861_148

def rawBody861_150 : StackLang.HolProg 64 :=
.seq rawBody861_142 rawBody861_149

def rawBody861_151 : StackLang.HolProg 64 :=
.seq rawBody861_141 rawBody861_150

def rawBody861_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody861_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody861_154 : StackLang.HolProg 64 :=
.seq rawBody861_152 rawBody861_153

def rawBody861_155 : StackLang.HolProg 64 :=
.call (some (rawBody861_151, 0, 861, 6)) (Sum.inl 68) (some (rawBody861_154, 861, 7))

def rawBody861_156 : StackLang.HolProg 64 :=
.seq rawBody861_140 rawBody861_155

def rawBody861_157 : StackLang.HolProg 64 :=
.seq rawBody861_139 rawBody861_156

def rawBody861_158 : StackLang.HolProg 64 :=
.seq rawBody861_138 rawBody861_157

def rawBody861_159 : StackLang.HolProg 64 :=
.seq rawBody861_119 rawBody861_158

def rawBody861_160 : StackLang.HolProg 64 :=
.seq rawBody861_116 rawBody861_159

def rawBody861_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody861_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody861_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4381#64)

def rawBody861_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody861_168 : StackLang.HolProg 64 :=
.seq rawBody861_166 rawBody861_167

def rawBody861_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody861_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody861_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody861_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 9

def rawBody861_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody861_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody861_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody861_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody861_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody861_179 : StackLang.HolProg 64 :=
.seq rawBody861_177 rawBody861_178

def rawBody861_180 : StackLang.HolProg 64 :=
.seq rawBody861_176 rawBody861_179

def rawBody861_181 : StackLang.HolProg 64 :=
.seq rawBody861_175 rawBody861_180

def rawBody861_182 : StackLang.HolProg 64 :=
.seq rawBody861_174 rawBody861_181

def rawBody861_183 : StackLang.HolProg 64 :=
.seq rawBody861_173 rawBody861_182

def rawBody861_184 : StackLang.HolProg 64 :=
.seq rawBody861_172 rawBody861_183

def rawBody861_185 : StackLang.HolProg 64 :=
.seq rawBody861_171 rawBody861_184

def rawBody861_186 : StackLang.HolProg 64 :=
.seq rawBody861_170 rawBody861_185

def rawBody861_187 : StackLang.HolProg 64 :=
.seq rawBody861_169 rawBody861_186

def rawBody861_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody861_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody861_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody861_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody861_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody861_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody861_196 : StackLang.HolProg 64 :=
.seq rawBody861_194 rawBody861_195

def rawBody861_197 : StackLang.HolProg 64 :=
.seq rawBody861_193 rawBody861_196

def rawBody861_198 : StackLang.HolProg 64 :=
.seq rawBody861_192 rawBody861_197

def rawBody861_199 : StackLang.HolProg 64 :=
.seq rawBody861_191 rawBody861_198

def rawBody861_200 : StackLang.HolProg 64 :=
.seq rawBody861_190 rawBody861_199

def rawBody861_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody861_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody861_203 : StackLang.HolProg 64 :=
.seq rawBody861_201 rawBody861_202

def rawBody861_204 : StackLang.HolProg 64 :=
.call (some (rawBody861_200, 0, 861, 8)) (Sum.inl 860) (some (rawBody861_203, 861, 9))

def rawBody861_205 : StackLang.HolProg 64 :=
.seq rawBody861_189 rawBody861_204

def rawBody861_206 : StackLang.HolProg 64 :=
.seq rawBody861_188 rawBody861_205

def rawBody861_207 : StackLang.HolProg 64 :=
.seq rawBody861_187 rawBody861_206

def rawBody861_208 : StackLang.HolProg 64 :=
.seq rawBody861_168 rawBody861_207

def rawBody861_209 : StackLang.HolProg 64 :=
.seq rawBody861_165 rawBody861_208

def rawBody861_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody861_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody861_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 71#64)

def rawBody861_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody861_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def rawBody861_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody861_221 : StackLang.HolProg 64 :=
.seq rawBody861_219 rawBody861_220

def rawBody861_222 : StackLang.HolProg 64 :=
.seq rawBody861_218 rawBody861_221

def rawBody861_223 : StackLang.HolProg 64 :=
.seq rawBody861_217 rawBody861_222

def rawBody861_224 : StackLang.HolProg 64 :=
.seq rawBody861_216 rawBody861_223

def rawBody861_225 : StackLang.HolProg 64 :=
.seq rawBody861_215 rawBody861_224

def rawBody861_226 : StackLang.HolProg 64 :=
.seq rawBody861_214 rawBody861_225

def rawBody861_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody861_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody861_226 rawBody861_227

def rawBody861_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody861_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody861_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody861_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody861_234 : StackLang.HolProg 64 :=
.seq rawBody861_232 rawBody861_233

def rawBody861_235 : StackLang.HolProg 64 :=
.seq rawBody861_231 rawBody861_234

def rawBody861_236 : StackLang.HolProg 64 :=
.seq rawBody861_230 rawBody861_235

def rawBody861_237 : StackLang.HolProg 64 :=
.seq rawBody861_229 rawBody861_236

def rawBody861_238 : StackLang.HolProg 64 :=
.seq rawBody861_228 rawBody861_237

def rawBody861_239 : StackLang.HolProg 64 :=
.seq rawBody861_213 rawBody861_238

def rawBody861_240 : StackLang.HolProg 64 :=
.seq rawBody861_212 rawBody861_239

def rawBody861_241 : StackLang.HolProg 64 :=
.seq rawBody861_211 rawBody861_240

def rawBody861_242 : StackLang.HolProg 64 :=
.seq rawBody861_210 rawBody861_241

def rawBody861_243 : StackLang.HolProg 64 :=
.seq rawBody861_209 rawBody861_242

def rawBody861_244 : StackLang.HolProg 64 :=
.seq rawBody861_164 rawBody861_243

def rawBody861_245 : StackLang.HolProg 64 :=
.seq rawBody861_163 rawBody861_244

def rawBody861_246 : StackLang.HolProg 64 :=
.seq rawBody861_162 rawBody861_245

def rawBody861_247 : StackLang.HolProg 64 :=
.seq rawBody861_161 rawBody861_246

def rawBody861_248 : StackLang.HolProg 64 :=
.seq rawBody861_160 rawBody861_247

def rawBody861_249 : StackLang.HolProg 64 :=
.seq rawBody861_115 rawBody861_248

def rawBody861_250 : StackLang.HolProg 64 :=
.seq rawBody861_114 rawBody861_249

def rawBody861_251 : StackLang.HolProg 64 :=
.seq rawBody861_113 rawBody861_250

def rawBody861_252 : StackLang.HolProg 64 :=
.seq rawBody861_112 rawBody861_251

def rawBody861_253 : StackLang.HolProg 64 :=
.seq rawBody861_111 rawBody861_252

def rawBody861_254 : StackLang.HolProg 64 :=
.seq rawBody861_96 rawBody861_253

def rawBody861_255 : StackLang.HolProg 64 :=
.seq rawBody861_95 rawBody861_254

def rawBody861_256 : StackLang.HolProg 64 :=
.seq rawBody861_94 rawBody861_255

def rawBody861_257 : StackLang.HolProg 64 :=
.seq rawBody861_93 rawBody861_256

def rawBody861_258 : StackLang.HolProg 64 :=
.seq rawBody861_50 rawBody861_257

def rawBody861_259 : StackLang.HolProg 64 :=
.seq rawBody861_47 rawBody861_258

def rawBody861_260 : StackLang.HolProg 64 :=
.seq rawBody861_46 rawBody861_259

def rawBody861_261 : StackLang.HolProg 64 :=
.seq rawBody861_3 rawBody861_260

def rawBody861_262 : StackLang.HolProg 64 :=
.seq rawBody861_0 rawBody861_261

def raw861 : StackLang.HolProg 64 := rawBody861_262
theorem raw861_eq : StackRawCall.compTop RawInfo.rawInfo (function861 (.list [])).1 = raw861 := by
  kernel_rfl
#print axioms raw861_eq
end InitECandidate.Proofs.BackendStages
