import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function536
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody536_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody536_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody536_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody536_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody536_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody536_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody536_7 : StackLang.HolProg 64 :=
.seq rawBody536_5 rawBody536_6

def rawBody536_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1775#64)

def rawBody536_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_11 : StackLang.HolProg 64 :=
.seq rawBody536_9 rawBody536_10

def rawBody536_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody536_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody536_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 3

def rawBody536_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody536_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody536_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody536_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody536_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_22 : StackLang.HolProg 64 :=
.seq rawBody536_20 rawBody536_21

def rawBody536_23 : StackLang.HolProg 64 :=
.seq rawBody536_19 rawBody536_22

def rawBody536_24 : StackLang.HolProg 64 :=
.seq rawBody536_18 rawBody536_23

def rawBody536_25 : StackLang.HolProg 64 :=
.seq rawBody536_17 rawBody536_24

def rawBody536_26 : StackLang.HolProg 64 :=
.seq rawBody536_16 rawBody536_25

def rawBody536_27 : StackLang.HolProg 64 :=
.seq rawBody536_15 rawBody536_26

def rawBody536_28 : StackLang.HolProg 64 :=
.seq rawBody536_14 rawBody536_27

def rawBody536_29 : StackLang.HolProg 64 :=
.seq rawBody536_13 rawBody536_28

def rawBody536_30 : StackLang.HolProg 64 :=
.seq rawBody536_12 rawBody536_29

def rawBody536_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody536_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody536_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody536_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_38 : StackLang.HolProg 64 :=
.seq rawBody536_36 rawBody536_37

def rawBody536_39 : StackLang.HolProg 64 :=
.seq rawBody536_35 rawBody536_38

def rawBody536_40 : StackLang.HolProg 64 :=
.seq rawBody536_34 rawBody536_39

def rawBody536_41 : StackLang.HolProg 64 :=
.seq rawBody536_33 rawBody536_40

def rawBody536_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody536_44 : StackLang.HolProg 64 :=
.seq rawBody536_42 rawBody536_43

def rawBody536_45 : StackLang.HolProg 64 :=
.call (some (rawBody536_41, 0, 536, 2)) (Sum.inl 470) (some (rawBody536_44, 536, 3))

def rawBody536_46 : StackLang.HolProg 64 :=
.seq rawBody536_32 rawBody536_45

def rawBody536_47 : StackLang.HolProg 64 :=
.seq rawBody536_31 rawBody536_46

def rawBody536_48 : StackLang.HolProg 64 :=
.seq rawBody536_30 rawBody536_47

def rawBody536_49 : StackLang.HolProg 64 :=
.seq rawBody536_11 rawBody536_48

def rawBody536_50 : StackLang.HolProg 64 :=
.seq rawBody536_8 rawBody536_49

def rawBody536_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_53 : StackLang.HolProg 64 :=
.seq rawBody536_51 rawBody536_52

def rawBody536_54 : StackLang.HolProg 64 :=
.seq rawBody536_50 rawBody536_53

def rawBody536_55 : StackLang.HolProg 64 :=
.seq rawBody536_7 rawBody536_54

def rawBody536_56 : StackLang.HolProg 64 :=
.seq rawBody536_4 rawBody536_55

def rawBody536_57 : StackLang.HolProg 64 :=
.seq rawBody536_3 rawBody536_56

def rawBody536_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody536_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody536_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody536_62 : StackLang.HolProg 64 :=
.seq rawBody536_60 rawBody536_61

def rawBody536_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1776#64)

def rawBody536_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_66 : StackLang.HolProg 64 :=
.seq rawBody536_64 rawBody536_65

def rawBody536_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody536_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody536_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 5

def rawBody536_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody536_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody536_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody536_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody536_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_77 : StackLang.HolProg 64 :=
.seq rawBody536_75 rawBody536_76

def rawBody536_78 : StackLang.HolProg 64 :=
.seq rawBody536_74 rawBody536_77

def rawBody536_79 : StackLang.HolProg 64 :=
.seq rawBody536_73 rawBody536_78

def rawBody536_80 : StackLang.HolProg 64 :=
.seq rawBody536_72 rawBody536_79

def rawBody536_81 : StackLang.HolProg 64 :=
.seq rawBody536_71 rawBody536_80

def rawBody536_82 : StackLang.HolProg 64 :=
.seq rawBody536_70 rawBody536_81

def rawBody536_83 : StackLang.HolProg 64 :=
.seq rawBody536_69 rawBody536_82

def rawBody536_84 : StackLang.HolProg 64 :=
.seq rawBody536_68 rawBody536_83

def rawBody536_85 : StackLang.HolProg 64 :=
.seq rawBody536_67 rawBody536_84

def rawBody536_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody536_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody536_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody536_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_93 : StackLang.HolProg 64 :=
.seq rawBody536_91 rawBody536_92

def rawBody536_94 : StackLang.HolProg 64 :=
.seq rawBody536_90 rawBody536_93

def rawBody536_95 : StackLang.HolProg 64 :=
.seq rawBody536_89 rawBody536_94

def rawBody536_96 : StackLang.HolProg 64 :=
.seq rawBody536_88 rawBody536_95

def rawBody536_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_98 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody536_99 : StackLang.HolProg 64 :=
.seq rawBody536_97 rawBody536_98

def rawBody536_100 : StackLang.HolProg 64 :=
.call (some (rawBody536_96, 0, 536, 4)) (Sum.inl 470) (some (rawBody536_99, 536, 5))

def rawBody536_101 : StackLang.HolProg 64 :=
.seq rawBody536_87 rawBody536_100

def rawBody536_102 : StackLang.HolProg 64 :=
.seq rawBody536_86 rawBody536_101

def rawBody536_103 : StackLang.HolProg 64 :=
.seq rawBody536_85 rawBody536_102

def rawBody536_104 : StackLang.HolProg 64 :=
.seq rawBody536_66 rawBody536_103

def rawBody536_105 : StackLang.HolProg 64 :=
.seq rawBody536_63 rawBody536_104

def rawBody536_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_108 : StackLang.HolProg 64 :=
.seq rawBody536_106 rawBody536_107

def rawBody536_109 : StackLang.HolProg 64 :=
.seq rawBody536_105 rawBody536_108

def rawBody536_110 : StackLang.HolProg 64 :=
.seq rawBody536_62 rawBody536_109

def rawBody536_111 : StackLang.HolProg 64 :=
.seq rawBody536_59 rawBody536_110

def rawBody536_112 : StackLang.HolProg 64 :=
.seq rawBody536_58 rawBody536_111

def rawBody536_113 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody536_57 rawBody536_112

def rawBody536_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1777#64)

def rawBody536_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_119 : StackLang.HolProg 64 :=
.seq rawBody536_117 rawBody536_118

def rawBody536_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody536_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody536_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 7

def rawBody536_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody536_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody536_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody536_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody536_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_130 : StackLang.HolProg 64 :=
.seq rawBody536_128 rawBody536_129

def rawBody536_131 : StackLang.HolProg 64 :=
.seq rawBody536_127 rawBody536_130

def rawBody536_132 : StackLang.HolProg 64 :=
.seq rawBody536_126 rawBody536_131

def rawBody536_133 : StackLang.HolProg 64 :=
.seq rawBody536_125 rawBody536_132

def rawBody536_134 : StackLang.HolProg 64 :=
.seq rawBody536_124 rawBody536_133

def rawBody536_135 : StackLang.HolProg 64 :=
.seq rawBody536_123 rawBody536_134

def rawBody536_136 : StackLang.HolProg 64 :=
.seq rawBody536_122 rawBody536_135

def rawBody536_137 : StackLang.HolProg 64 :=
.seq rawBody536_121 rawBody536_136

def rawBody536_138 : StackLang.HolProg 64 :=
.seq rawBody536_120 rawBody536_137

def rawBody536_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody536_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody536_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody536_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody536_146 : StackLang.HolProg 64 :=
.seq rawBody536_144 rawBody536_145

def rawBody536_147 : StackLang.HolProg 64 :=
.seq rawBody536_143 rawBody536_146

def rawBody536_148 : StackLang.HolProg 64 :=
.seq rawBody536_142 rawBody536_147

def rawBody536_149 : StackLang.HolProg 64 :=
.seq rawBody536_141 rawBody536_148

def rawBody536_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody536_152 : StackLang.HolProg 64 :=
.seq rawBody536_150 rawBody536_151

def rawBody536_153 : StackLang.HolProg 64 :=
.call (some (rawBody536_149, 0, 536, 6)) (Sum.inl 69) (some (rawBody536_152, 536, 7))

def rawBody536_154 : StackLang.HolProg 64 :=
.seq rawBody536_140 rawBody536_153

def rawBody536_155 : StackLang.HolProg 64 :=
.seq rawBody536_139 rawBody536_154

def rawBody536_156 : StackLang.HolProg 64 :=
.seq rawBody536_138 rawBody536_155

def rawBody536_157 : StackLang.HolProg 64 :=
.seq rawBody536_119 rawBody536_156

def rawBody536_158 : StackLang.HolProg 64 :=
.seq rawBody536_116 rawBody536_157

def rawBody536_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody536_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody536_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1778#64)

def rawBody536_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_165 : StackLang.HolProg 64 :=
.seq rawBody536_163 rawBody536_164

def rawBody536_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody536_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody536_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 9

def rawBody536_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody536_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody536_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody536_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody536_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_176 : StackLang.HolProg 64 :=
.seq rawBody536_174 rawBody536_175

def rawBody536_177 : StackLang.HolProg 64 :=
.seq rawBody536_173 rawBody536_176

def rawBody536_178 : StackLang.HolProg 64 :=
.seq rawBody536_172 rawBody536_177

def rawBody536_179 : StackLang.HolProg 64 :=
.seq rawBody536_171 rawBody536_178

def rawBody536_180 : StackLang.HolProg 64 :=
.seq rawBody536_170 rawBody536_179

def rawBody536_181 : StackLang.HolProg 64 :=
.seq rawBody536_169 rawBody536_180

def rawBody536_182 : StackLang.HolProg 64 :=
.seq rawBody536_168 rawBody536_181

def rawBody536_183 : StackLang.HolProg 64 :=
.seq rawBody536_167 rawBody536_182

def rawBody536_184 : StackLang.HolProg 64 :=
.seq rawBody536_166 rawBody536_183

def rawBody536_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody536_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody536_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody536_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody536_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody536_193 : StackLang.HolProg 64 :=
.seq rawBody536_191 rawBody536_192

def rawBody536_194 : StackLang.HolProg 64 :=
.seq rawBody536_190 rawBody536_193

def rawBody536_195 : StackLang.HolProg 64 :=
.seq rawBody536_189 rawBody536_194

def rawBody536_196 : StackLang.HolProg 64 :=
.seq rawBody536_188 rawBody536_195

def rawBody536_197 : StackLang.HolProg 64 :=
.seq rawBody536_187 rawBody536_196

def rawBody536_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody536_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody536_200 : StackLang.HolProg 64 :=
.seq rawBody536_198 rawBody536_199

def rawBody536_201 : StackLang.HolProg 64 :=
.call (some (rawBody536_197, 0, 536, 8)) (Sum.inl 68) (some (rawBody536_200, 536, 9))

def rawBody536_202 : StackLang.HolProg 64 :=
.seq rawBody536_186 rawBody536_201

def rawBody536_203 : StackLang.HolProg 64 :=
.seq rawBody536_185 rawBody536_202

def rawBody536_204 : StackLang.HolProg 64 :=
.seq rawBody536_184 rawBody536_203

def rawBody536_205 : StackLang.HolProg 64 :=
.seq rawBody536_165 rawBody536_204

def rawBody536_206 : StackLang.HolProg 64 :=
.seq rawBody536_162 rawBody536_205

def rawBody536_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody536_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody536_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody536_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody536_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def rawBody536_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def rawBody536_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody536_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody536_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody536_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody536_220 : StackLang.HolProg 64 :=
.seq rawBody536_218 rawBody536_219

def rawBody536_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1779#64)

def rawBody536_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_224 : StackLang.HolProg 64 :=
.seq rawBody536_222 rawBody536_223

def rawBody536_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody536_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody536_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 11

def rawBody536_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody536_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody536_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody536_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody536_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_235 : StackLang.HolProg 64 :=
.seq rawBody536_233 rawBody536_234

def rawBody536_236 : StackLang.HolProg 64 :=
.seq rawBody536_232 rawBody536_235

def rawBody536_237 : StackLang.HolProg 64 :=
.seq rawBody536_231 rawBody536_236

def rawBody536_238 : StackLang.HolProg 64 :=
.seq rawBody536_230 rawBody536_237

def rawBody536_239 : StackLang.HolProg 64 :=
.seq rawBody536_229 rawBody536_238

def rawBody536_240 : StackLang.HolProg 64 :=
.seq rawBody536_228 rawBody536_239

def rawBody536_241 : StackLang.HolProg 64 :=
.seq rawBody536_227 rawBody536_240

def rawBody536_242 : StackLang.HolProg 64 :=
.seq rawBody536_226 rawBody536_241

def rawBody536_243 : StackLang.HolProg 64 :=
.seq rawBody536_225 rawBody536_242

def rawBody536_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody536_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody536_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody536_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody536_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody536_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody536_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody536_254 : StackLang.HolProg 64 :=
.seq rawBody536_252 rawBody536_253

def rawBody536_255 : StackLang.HolProg 64 :=
.seq rawBody536_251 rawBody536_254

def rawBody536_256 : StackLang.HolProg 64 :=
.seq rawBody536_250 rawBody536_255

def rawBody536_257 : StackLang.HolProg 64 :=
.seq rawBody536_249 rawBody536_256

def rawBody536_258 : StackLang.HolProg 64 :=
.seq rawBody536_248 rawBody536_257

def rawBody536_259 : StackLang.HolProg 64 :=
.seq rawBody536_247 rawBody536_258

def rawBody536_260 : StackLang.HolProg 64 :=
.seq rawBody536_246 rawBody536_259

def rawBody536_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody536_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody536_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody536_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody536_265 : StackLang.HolProg 64 :=
.seq rawBody536_263 rawBody536_264

def rawBody536_266 : StackLang.HolProg 64 :=
.seq rawBody536_262 rawBody536_265

def rawBody536_267 : StackLang.HolProg 64 :=
.seq rawBody536_261 rawBody536_266

def rawBody536_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody536_269 : StackLang.HolProg 64 :=
.seq rawBody536_267 rawBody536_268

def rawBody536_270 : StackLang.HolProg 64 :=
.call (some (rawBody536_260, 0, 536, 10)) (Sum.inl 484) (some (rawBody536_269, 536, 11))

def rawBody536_271 : StackLang.HolProg 64 :=
.seq rawBody536_245 rawBody536_270

def rawBody536_272 : StackLang.HolProg 64 :=
.seq rawBody536_244 rawBody536_271

def rawBody536_273 : StackLang.HolProg 64 :=
.seq rawBody536_243 rawBody536_272

def rawBody536_274 : StackLang.HolProg 64 :=
.seq rawBody536_224 rawBody536_273

def rawBody536_275 : StackLang.HolProg 64 :=
.seq rawBody536_221 rawBody536_274

def rawBody536_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody536_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody536_279 : StackLang.HolProg 64 :=
.seq rawBody536_277 rawBody536_278

def rawBody536_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1780#64)

def rawBody536_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_283 : StackLang.HolProg 64 :=
.seq rawBody536_281 rawBody536_282

def rawBody536_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody536_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody536_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 13

def rawBody536_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody536_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody536_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody536_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody536_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_294 : StackLang.HolProg 64 :=
.seq rawBody536_292 rawBody536_293

def rawBody536_295 : StackLang.HolProg 64 :=
.seq rawBody536_291 rawBody536_294

def rawBody536_296 : StackLang.HolProg 64 :=
.seq rawBody536_290 rawBody536_295

def rawBody536_297 : StackLang.HolProg 64 :=
.seq rawBody536_289 rawBody536_296

def rawBody536_298 : StackLang.HolProg 64 :=
.seq rawBody536_288 rawBody536_297

def rawBody536_299 : StackLang.HolProg 64 :=
.seq rawBody536_287 rawBody536_298

def rawBody536_300 : StackLang.HolProg 64 :=
.seq rawBody536_286 rawBody536_299

def rawBody536_301 : StackLang.HolProg 64 :=
.seq rawBody536_285 rawBody536_300

def rawBody536_302 : StackLang.HolProg 64 :=
.seq rawBody536_284 rawBody536_301

def rawBody536_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody536_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody536_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody536_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody536_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody536_311 : StackLang.HolProg 64 :=
.seq rawBody536_309 rawBody536_310

def rawBody536_312 : StackLang.HolProg 64 :=
.seq rawBody536_308 rawBody536_311

def rawBody536_313 : StackLang.HolProg 64 :=
.seq rawBody536_307 rawBody536_312

def rawBody536_314 : StackLang.HolProg 64 :=
.seq rawBody536_306 rawBody536_313

def rawBody536_315 : StackLang.HolProg 64 :=
.seq rawBody536_305 rawBody536_314

def rawBody536_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody536_317 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody536_318 : StackLang.HolProg 64 :=
.seq rawBody536_316 rawBody536_317

def rawBody536_319 : StackLang.HolProg 64 :=
.call (some (rawBody536_315, 0, 536, 12)) (Sum.inl 146) (some (rawBody536_318, 536, 13))

def rawBody536_320 : StackLang.HolProg 64 :=
.seq rawBody536_304 rawBody536_319

def rawBody536_321 : StackLang.HolProg 64 :=
.seq rawBody536_303 rawBody536_320

def rawBody536_322 : StackLang.HolProg 64 :=
.seq rawBody536_302 rawBody536_321

def rawBody536_323 : StackLang.HolProg 64 :=
.seq rawBody536_283 rawBody536_322

def rawBody536_324 : StackLang.HolProg 64 :=
.seq rawBody536_280 rawBody536_323

def rawBody536_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody536_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody536_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody536_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody536_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody536_331 : StackLang.HolProg 64 :=
.seq rawBody536_329 rawBody536_330

def rawBody536_332 : StackLang.HolProg 64 :=
.seq rawBody536_328 rawBody536_331

def rawBody536_333 : StackLang.HolProg 64 :=
.seq rawBody536_327 rawBody536_332

def rawBody536_334 : StackLang.HolProg 64 :=
.seq rawBody536_326 rawBody536_333

def rawBody536_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1781#64)

def rawBody536_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_338 : StackLang.HolProg 64 :=
.seq rawBody536_336 rawBody536_337

def rawBody536_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody536_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody536_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 15

def rawBody536_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody536_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody536_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody536_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody536_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_349 : StackLang.HolProg 64 :=
.seq rawBody536_347 rawBody536_348

def rawBody536_350 : StackLang.HolProg 64 :=
.seq rawBody536_346 rawBody536_349

def rawBody536_351 : StackLang.HolProg 64 :=
.seq rawBody536_345 rawBody536_350

def rawBody536_352 : StackLang.HolProg 64 :=
.seq rawBody536_344 rawBody536_351

def rawBody536_353 : StackLang.HolProg 64 :=
.seq rawBody536_343 rawBody536_352

def rawBody536_354 : StackLang.HolProg 64 :=
.seq rawBody536_342 rawBody536_353

def rawBody536_355 : StackLang.HolProg 64 :=
.seq rawBody536_341 rawBody536_354

def rawBody536_356 : StackLang.HolProg 64 :=
.seq rawBody536_340 rawBody536_355

def rawBody536_357 : StackLang.HolProg 64 :=
.seq rawBody536_339 rawBody536_356

def rawBody536_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody536_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody536_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody536_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody536_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody536_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody536_367 : StackLang.HolProg 64 :=
.seq rawBody536_365 rawBody536_366

def rawBody536_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody536_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody536_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody536_371 : StackLang.HolProg 64 :=
.seq rawBody536_369 rawBody536_370

def rawBody536_372 : StackLang.HolProg 64 :=
.seq rawBody536_368 rawBody536_371

def rawBody536_373 : StackLang.HolProg 64 :=
.seq rawBody536_367 rawBody536_372

def rawBody536_374 : StackLang.HolProg 64 :=
.seq rawBody536_364 rawBody536_373

def rawBody536_375 : StackLang.HolProg 64 :=
.seq rawBody536_363 rawBody536_374

def rawBody536_376 : StackLang.HolProg 64 :=
.seq rawBody536_362 rawBody536_375

def rawBody536_377 : StackLang.HolProg 64 :=
.seq rawBody536_361 rawBody536_376

def rawBody536_378 : StackLang.HolProg 64 :=
.seq rawBody536_360 rawBody536_377

def rawBody536_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody536_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody536_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody536_382 : StackLang.HolProg 64 :=
.seq rawBody536_380 rawBody536_381

def rawBody536_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody536_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody536_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody536_386 : StackLang.HolProg 64 :=
.seq rawBody536_384 rawBody536_385

def rawBody536_387 : StackLang.HolProg 64 :=
.seq rawBody536_383 rawBody536_386

def rawBody536_388 : StackLang.HolProg 64 :=
.seq rawBody536_382 rawBody536_387

def rawBody536_389 : StackLang.HolProg 64 :=
.seq rawBody536_379 rawBody536_388

def rawBody536_390 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody536_391 : StackLang.HolProg 64 :=
.seq rawBody536_389 rawBody536_390

def rawBody536_392 : StackLang.HolProg 64 :=
.call (some (rawBody536_378, 0, 536, 14)) (Sum.inl 70) (some (rawBody536_391, 536, 15))

def rawBody536_393 : StackLang.HolProg 64 :=
.seq rawBody536_359 rawBody536_392

def rawBody536_394 : StackLang.HolProg 64 :=
.seq rawBody536_358 rawBody536_393

def rawBody536_395 : StackLang.HolProg 64 :=
.seq rawBody536_357 rawBody536_394

def rawBody536_396 : StackLang.HolProg 64 :=
.seq rawBody536_338 rawBody536_395

def rawBody536_397 : StackLang.HolProg 64 :=
.seq rawBody536_335 rawBody536_396

def rawBody536_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody536_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1782#64)

def rawBody536_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_403 : StackLang.HolProg 64 :=
.seq rawBody536_401 rawBody536_402

def rawBody536_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody536_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody536_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 17

def rawBody536_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody536_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody536_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody536_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody536_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_414 : StackLang.HolProg 64 :=
.seq rawBody536_412 rawBody536_413

def rawBody536_415 : StackLang.HolProg 64 :=
.seq rawBody536_411 rawBody536_414

def rawBody536_416 : StackLang.HolProg 64 :=
.seq rawBody536_410 rawBody536_415

def rawBody536_417 : StackLang.HolProg 64 :=
.seq rawBody536_409 rawBody536_416

def rawBody536_418 : StackLang.HolProg 64 :=
.seq rawBody536_408 rawBody536_417

def rawBody536_419 : StackLang.HolProg 64 :=
.seq rawBody536_407 rawBody536_418

def rawBody536_420 : StackLang.HolProg 64 :=
.seq rawBody536_406 rawBody536_419

def rawBody536_421 : StackLang.HolProg 64 :=
.seq rawBody536_405 rawBody536_420

def rawBody536_422 : StackLang.HolProg 64 :=
.seq rawBody536_404 rawBody536_421

def rawBody536_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody536_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody536_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody536_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody536_430 : StackLang.HolProg 64 :=
.seq rawBody536_428 rawBody536_429

def rawBody536_431 : StackLang.HolProg 64 :=
.seq rawBody536_427 rawBody536_430

def rawBody536_432 : StackLang.HolProg 64 :=
.seq rawBody536_426 rawBody536_431

def rawBody536_433 : StackLang.HolProg 64 :=
.seq rawBody536_425 rawBody536_432

def rawBody536_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody536_435 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody536_436 : StackLang.HolProg 64 :=
.seq rawBody536_434 rawBody536_435

def rawBody536_437 : StackLang.HolProg 64 :=
.call (some (rawBody536_433, 0, 536, 16)) (Sum.inl 476) (some (rawBody536_436, 536, 17))

def rawBody536_438 : StackLang.HolProg 64 :=
.seq rawBody536_424 rawBody536_437

def rawBody536_439 : StackLang.HolProg 64 :=
.seq rawBody536_423 rawBody536_438

def rawBody536_440 : StackLang.HolProg 64 :=
.seq rawBody536_422 rawBody536_439

def rawBody536_441 : StackLang.HolProg 64 :=
.seq rawBody536_403 rawBody536_440

def rawBody536_442 : StackLang.HolProg 64 :=
.seq rawBody536_400 rawBody536_441

def rawBody536_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody536_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1783#64)

def rawBody536_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_450 : StackLang.HolProg 64 :=
.seq rawBody536_448 rawBody536_449

def rawBody536_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody536_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody536_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody536_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 19

def rawBody536_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody536_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody536_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody536_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody536_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_461 : StackLang.HolProg 64 :=
.seq rawBody536_459 rawBody536_460

def rawBody536_462 : StackLang.HolProg 64 :=
.seq rawBody536_458 rawBody536_461

def rawBody536_463 : StackLang.HolProg 64 :=
.seq rawBody536_457 rawBody536_462

def rawBody536_464 : StackLang.HolProg 64 :=
.seq rawBody536_456 rawBody536_463

def rawBody536_465 : StackLang.HolProg 64 :=
.seq rawBody536_455 rawBody536_464

def rawBody536_466 : StackLang.HolProg 64 :=
.seq rawBody536_454 rawBody536_465

def rawBody536_467 : StackLang.HolProg 64 :=
.seq rawBody536_453 rawBody536_466

def rawBody536_468 : StackLang.HolProg 64 :=
.seq rawBody536_452 rawBody536_467

def rawBody536_469 : StackLang.HolProg 64 :=
.seq rawBody536_451 rawBody536_468

def rawBody536_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody536_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody536_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody536_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody536_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody536_477 : StackLang.HolProg 64 :=
.seq rawBody536_475 rawBody536_476

def rawBody536_478 : StackLang.HolProg 64 :=
.seq rawBody536_474 rawBody536_477

def rawBody536_479 : StackLang.HolProg 64 :=
.seq rawBody536_473 rawBody536_478

def rawBody536_480 : StackLang.HolProg 64 :=
.seq rawBody536_472 rawBody536_479

def rawBody536_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody536_482 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody536_483 : StackLang.HolProg 64 :=
.seq rawBody536_481 rawBody536_482

def rawBody536_484 : StackLang.HolProg 64 :=
.call (some (rawBody536_480, 0, 536, 18)) (Sum.inl 490) (some (rawBody536_483, 536, 19))

def rawBody536_485 : StackLang.HolProg 64 :=
.seq rawBody536_471 rawBody536_484

def rawBody536_486 : StackLang.HolProg 64 :=
.seq rawBody536_470 rawBody536_485

def rawBody536_487 : StackLang.HolProg 64 :=
.seq rawBody536_469 rawBody536_486

def rawBody536_488 : StackLang.HolProg 64 :=
.seq rawBody536_450 rawBody536_487

def rawBody536_489 : StackLang.HolProg 64 :=
.seq rawBody536_447 rawBody536_488

def rawBody536_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody536_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody536_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody536_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody536_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody536_495 : StackLang.HolProg 64 :=
.seq rawBody536_493 rawBody536_494

def rawBody536_496 : StackLang.HolProg 64 :=
.seq rawBody536_492 rawBody536_495

def rawBody536_497 : StackLang.HolProg 64 :=
.seq rawBody536_491 rawBody536_496

def rawBody536_498 : StackLang.HolProg 64 :=
.seq rawBody536_490 rawBody536_497

def rawBody536_499 : StackLang.HolProg 64 :=
.seq rawBody536_489 rawBody536_498

def rawBody536_500 : StackLang.HolProg 64 :=
.seq rawBody536_446 rawBody536_499

def rawBody536_501 : StackLang.HolProg 64 :=
.seq rawBody536_445 rawBody536_500

def rawBody536_502 : StackLang.HolProg 64 :=
.seq rawBody536_444 rawBody536_501

def rawBody536_503 : StackLang.HolProg 64 :=
.seq rawBody536_443 rawBody536_502

def rawBody536_504 : StackLang.HolProg 64 :=
.seq rawBody536_442 rawBody536_503

def rawBody536_505 : StackLang.HolProg 64 :=
.seq rawBody536_399 rawBody536_504

def rawBody536_506 : StackLang.HolProg 64 :=
.seq rawBody536_398 rawBody536_505

def rawBody536_507 : StackLang.HolProg 64 :=
.seq rawBody536_397 rawBody536_506

def rawBody536_508 : StackLang.HolProg 64 :=
.seq rawBody536_334 rawBody536_507

def rawBody536_509 : StackLang.HolProg 64 :=
.seq rawBody536_325 rawBody536_508

def rawBody536_510 : StackLang.HolProg 64 :=
.seq rawBody536_324 rawBody536_509

def rawBody536_511 : StackLang.HolProg 64 :=
.seq rawBody536_279 rawBody536_510

def rawBody536_512 : StackLang.HolProg 64 :=
.seq rawBody536_276 rawBody536_511

def rawBody536_513 : StackLang.HolProg 64 :=
.seq rawBody536_275 rawBody536_512

def rawBody536_514 : StackLang.HolProg 64 :=
.seq rawBody536_220 rawBody536_513

def rawBody536_515 : StackLang.HolProg 64 :=
.seq rawBody536_217 rawBody536_514

def rawBody536_516 : StackLang.HolProg 64 :=
.seq rawBody536_216 rawBody536_515

def rawBody536_517 : StackLang.HolProg 64 :=
.seq rawBody536_215 rawBody536_516

def rawBody536_518 : StackLang.HolProg 64 :=
.seq rawBody536_214 rawBody536_517

def rawBody536_519 : StackLang.HolProg 64 :=
.seq rawBody536_213 rawBody536_518

def rawBody536_520 : StackLang.HolProg 64 :=
.seq rawBody536_212 rawBody536_519

def rawBody536_521 : StackLang.HolProg 64 :=
.seq rawBody536_211 rawBody536_520

def rawBody536_522 : StackLang.HolProg 64 :=
.seq rawBody536_210 rawBody536_521

def rawBody536_523 : StackLang.HolProg 64 :=
.seq rawBody536_209 rawBody536_522

def rawBody536_524 : StackLang.HolProg 64 :=
.seq rawBody536_208 rawBody536_523

def rawBody536_525 : StackLang.HolProg 64 :=
.seq rawBody536_207 rawBody536_524

def rawBody536_526 : StackLang.HolProg 64 :=
.seq rawBody536_206 rawBody536_525

def rawBody536_527 : StackLang.HolProg 64 :=
.seq rawBody536_161 rawBody536_526

def rawBody536_528 : StackLang.HolProg 64 :=
.seq rawBody536_160 rawBody536_527

def rawBody536_529 : StackLang.HolProg 64 :=
.seq rawBody536_159 rawBody536_528

def rawBody536_530 : StackLang.HolProg 64 :=
.seq rawBody536_158 rawBody536_529

def rawBody536_531 : StackLang.HolProg 64 :=
.seq rawBody536_115 rawBody536_530

def rawBody536_532 : StackLang.HolProg 64 :=
.seq rawBody536_114 rawBody536_531

def rawBody536_533 : StackLang.HolProg 64 :=
.seq rawBody536_113 rawBody536_532

def rawBody536_534 : StackLang.HolProg 64 :=
.seq rawBody536_2 rawBody536_533

def rawBody536_535 : StackLang.HolProg 64 :=
.seq rawBody536_1 rawBody536_534

def rawBody536_536 : StackLang.HolProg 64 :=
.seq rawBody536_0 rawBody536_535

def raw536 : StackLang.HolProg 64 := rawBody536_536
theorem raw536_eq : StackRawCall.compTop RawInfo.rawInfo (function536 (.list [])).1 = raw536 := by
  kernel_rfl
#print axioms raw536_eq
end InitECandidate.Proofs.BackendStages
