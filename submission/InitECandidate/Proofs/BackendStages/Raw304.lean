import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function304
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody304_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody304_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody304_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody304_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody304_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody304_5 : StackLang.HolProg 64 :=
.seq rawBody304_3 rawBody304_4

def rawBody304_6 : StackLang.HolProg 64 :=
.seq rawBody304_2 rawBody304_5

def rawBody304_7 : StackLang.HolProg 64 :=
.seq rawBody304_1 rawBody304_6

def rawBody304_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 835#64)

def rawBody304_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody304_11 : StackLang.HolProg 64 :=
.seq rawBody304_9 rawBody304_10

def rawBody304_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody304_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody304_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody304_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 3

def rawBody304_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody304_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody304_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody304_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody304_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody304_22 : StackLang.HolProg 64 :=
.seq rawBody304_20 rawBody304_21

def rawBody304_23 : StackLang.HolProg 64 :=
.seq rawBody304_19 rawBody304_22

def rawBody304_24 : StackLang.HolProg 64 :=
.seq rawBody304_18 rawBody304_23

def rawBody304_25 : StackLang.HolProg 64 :=
.seq rawBody304_17 rawBody304_24

def rawBody304_26 : StackLang.HolProg 64 :=
.seq rawBody304_16 rawBody304_25

def rawBody304_27 : StackLang.HolProg 64 :=
.seq rawBody304_15 rawBody304_26

def rawBody304_28 : StackLang.HolProg 64 :=
.seq rawBody304_14 rawBody304_27

def rawBody304_29 : StackLang.HolProg 64 :=
.seq rawBody304_13 rawBody304_28

def rawBody304_30 : StackLang.HolProg 64 :=
.seq rawBody304_12 rawBody304_29

def rawBody304_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody304_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody304_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody304_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody304_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody304_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody304_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody304_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody304_41 : StackLang.HolProg 64 :=
.seq rawBody304_39 rawBody304_40

def rawBody304_42 : StackLang.HolProg 64 :=
.seq rawBody304_38 rawBody304_41

def rawBody304_43 : StackLang.HolProg 64 :=
.seq rawBody304_37 rawBody304_42

def rawBody304_44 : StackLang.HolProg 64 :=
.seq rawBody304_36 rawBody304_43

def rawBody304_45 : StackLang.HolProg 64 :=
.seq rawBody304_35 rawBody304_44

def rawBody304_46 : StackLang.HolProg 64 :=
.seq rawBody304_34 rawBody304_45

def rawBody304_47 : StackLang.HolProg 64 :=
.seq rawBody304_33 rawBody304_46

def rawBody304_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody304_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody304_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody304_51 : StackLang.HolProg 64 :=
.seq rawBody304_49 rawBody304_50

def rawBody304_52 : StackLang.HolProg 64 :=
.seq rawBody304_48 rawBody304_51

def rawBody304_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody304_54 : StackLang.HolProg 64 :=
.seq rawBody304_52 rawBody304_53

def rawBody304_55 : StackLang.HolProg 64 :=
.call (some (rawBody304_47, 0, 304, 2)) (Sum.inl 75) (some (rawBody304_54, 304, 3))

def rawBody304_56 : StackLang.HolProg 64 :=
.seq rawBody304_32 rawBody304_55

def rawBody304_57 : StackLang.HolProg 64 :=
.seq rawBody304_31 rawBody304_56

def rawBody304_58 : StackLang.HolProg 64 :=
.seq rawBody304_30 rawBody304_57

def rawBody304_59 : StackLang.HolProg 64 :=
.seq rawBody304_11 rawBody304_58

def rawBody304_60 : StackLang.HolProg 64 :=
.seq rawBody304_8 rawBody304_59

def rawBody304_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody304_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody304_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody304_64 : StackLang.HolProg 64 :=
.seq rawBody304_62 rawBody304_63

def rawBody304_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 836#64)

def rawBody304_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody304_68 : StackLang.HolProg 64 :=
.seq rawBody304_66 rawBody304_67

def rawBody304_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody304_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody304_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody304_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 7

def rawBody304_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody304_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody304_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody304_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody304_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody304_79 : StackLang.HolProg 64 :=
.seq rawBody304_77 rawBody304_78

def rawBody304_80 : StackLang.HolProg 64 :=
.seq rawBody304_76 rawBody304_79

def rawBody304_81 : StackLang.HolProg 64 :=
.seq rawBody304_75 rawBody304_80

def rawBody304_82 : StackLang.HolProg 64 :=
.seq rawBody304_74 rawBody304_81

def rawBody304_83 : StackLang.HolProg 64 :=
.seq rawBody304_73 rawBody304_82

def rawBody304_84 : StackLang.HolProg 64 :=
.seq rawBody304_72 rawBody304_83

def rawBody304_85 : StackLang.HolProg 64 :=
.seq rawBody304_71 rawBody304_84

def rawBody304_86 : StackLang.HolProg 64 :=
.seq rawBody304_70 rawBody304_85

def rawBody304_87 : StackLang.HolProg 64 :=
.seq rawBody304_69 rawBody304_86

def rawBody304_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody304_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody304_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody304_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody304_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody304_95 : StackLang.HolProg 64 :=
.seq rawBody304_93 rawBody304_94

def rawBody304_96 : StackLang.HolProg 64 :=
.seq rawBody304_92 rawBody304_95

def rawBody304_97 : StackLang.HolProg 64 :=
.seq rawBody304_91 rawBody304_96

def rawBody304_98 : StackLang.HolProg 64 :=
.seq rawBody304_90 rawBody304_97

def rawBody304_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody304_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody304_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody304_102 : StackLang.HolProg 64 :=
.seq rawBody304_100 rawBody304_101

def rawBody304_103 : StackLang.HolProg 64 :=
.seq rawBody304_99 rawBody304_102

def rawBody304_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_105 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody304_106 : StackLang.HolProg 64 :=
.seq rawBody304_104 rawBody304_105

def rawBody304_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody304_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody304_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody304_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody304_111 : StackLang.HolProg 64 :=
.seq rawBody304_109 rawBody304_110

def rawBody304_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 837#64)

def rawBody304_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody304_115 : StackLang.HolProg 64 :=
.seq rawBody304_113 rawBody304_114

def rawBody304_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody304_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody304_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody304_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 6

def rawBody304_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody304_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody304_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody304_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody304_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody304_126 : StackLang.HolProg 64 :=
.seq rawBody304_124 rawBody304_125

def rawBody304_127 : StackLang.HolProg 64 :=
.seq rawBody304_123 rawBody304_126

def rawBody304_128 : StackLang.HolProg 64 :=
.seq rawBody304_122 rawBody304_127

def rawBody304_129 : StackLang.HolProg 64 :=
.seq rawBody304_121 rawBody304_128

def rawBody304_130 : StackLang.HolProg 64 :=
.seq rawBody304_120 rawBody304_129

def rawBody304_131 : StackLang.HolProg 64 :=
.seq rawBody304_119 rawBody304_130

def rawBody304_132 : StackLang.HolProg 64 :=
.seq rawBody304_118 rawBody304_131

def rawBody304_133 : StackLang.HolProg 64 :=
.seq rawBody304_117 rawBody304_132

def rawBody304_134 : StackLang.HolProg 64 :=
.seq rawBody304_116 rawBody304_133

def rawBody304_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody304_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody304_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody304_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody304_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody304_142 : StackLang.HolProg 64 :=
.seq rawBody304_140 rawBody304_141

def rawBody304_143 : StackLang.HolProg 64 :=
.seq rawBody304_139 rawBody304_142

def rawBody304_144 : StackLang.HolProg 64 :=
.seq rawBody304_138 rawBody304_143

def rawBody304_145 : StackLang.HolProg 64 :=
.seq rawBody304_137 rawBody304_144

def rawBody304_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody304_147 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody304_148 : StackLang.HolProg 64 :=
.seq rawBody304_146 rawBody304_147

def rawBody304_149 : StackLang.HolProg 64 :=
.call (some (rawBody304_145, 0, 304, 5)) (Sum.inl 76) (some (rawBody304_148, 304, 6))

def rawBody304_150 : StackLang.HolProg 64 :=
.seq rawBody304_136 rawBody304_149

def rawBody304_151 : StackLang.HolProg 64 :=
.seq rawBody304_135 rawBody304_150

def rawBody304_152 : StackLang.HolProg 64 :=
.seq rawBody304_134 rawBody304_151

def rawBody304_153 : StackLang.HolProg 64 :=
.seq rawBody304_115 rawBody304_152

def rawBody304_154 : StackLang.HolProg 64 :=
.seq rawBody304_112 rawBody304_153

def rawBody304_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody304_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 2

def rawBody304_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody304_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_160 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody304_161 : StackLang.HolProg 64 :=
.seq rawBody304_159 rawBody304_160

def rawBody304_162 : StackLang.HolProg 64 :=
.seq rawBody304_158 rawBody304_161

def rawBody304_163 : StackLang.HolProg 64 :=
.seq rawBody304_157 rawBody304_162

def rawBody304_164 : StackLang.HolProg 64 :=
.seq rawBody304_156 rawBody304_163

def rawBody304_165 : StackLang.HolProg 64 :=
.seq rawBody304_155 rawBody304_164

def rawBody304_166 : StackLang.HolProg 64 :=
.seq rawBody304_154 rawBody304_165

def rawBody304_167 : StackLang.HolProg 64 :=
.seq rawBody304_111 rawBody304_166

def rawBody304_168 : StackLang.HolProg 64 :=
.seq rawBody304_108 rawBody304_167

def rawBody304_169 : StackLang.HolProg 64 :=
.seq rawBody304_107 rawBody304_168

def rawBody304_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) rawBody304_106 rawBody304_169

def rawBody304_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody304_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody304_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody304_174 : StackLang.HolProg 64 :=
.seq rawBody304_172 rawBody304_173

def rawBody304_175 : StackLang.HolProg 64 :=
.seq rawBody304_171 rawBody304_174

def rawBody304_176 : StackLang.HolProg 64 :=
.seq rawBody304_170 rawBody304_175

def rawBody304_177 : StackLang.HolProg 64 :=
.seq rawBody304_103 rawBody304_176

def rawBody304_178 : StackLang.HolProg 64 :=
.call (some (rawBody304_98, 0, 304, 4)) (Sum.inl 303) (some (rawBody304_177, 304, 7))

def rawBody304_179 : StackLang.HolProg 64 :=
.seq rawBody304_89 rawBody304_178

def rawBody304_180 : StackLang.HolProg 64 :=
.seq rawBody304_88 rawBody304_179

def rawBody304_181 : StackLang.HolProg 64 :=
.seq rawBody304_87 rawBody304_180

def rawBody304_182 : StackLang.HolProg 64 :=
.seq rawBody304_68 rawBody304_181

def rawBody304_183 : StackLang.HolProg 64 :=
.seq rawBody304_65 rawBody304_182

def rawBody304_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody304_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody304_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody304_187 : StackLang.HolProg 64 :=
.seq rawBody304_185 rawBody304_186

def rawBody304_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 838#64)

def rawBody304_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody304_191 : StackLang.HolProg 64 :=
.seq rawBody304_189 rawBody304_190

def rawBody304_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody304_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody304_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody304_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 9

def rawBody304_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody304_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody304_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody304_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody304_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody304_202 : StackLang.HolProg 64 :=
.seq rawBody304_200 rawBody304_201

def rawBody304_203 : StackLang.HolProg 64 :=
.seq rawBody304_199 rawBody304_202

def rawBody304_204 : StackLang.HolProg 64 :=
.seq rawBody304_198 rawBody304_203

def rawBody304_205 : StackLang.HolProg 64 :=
.seq rawBody304_197 rawBody304_204

def rawBody304_206 : StackLang.HolProg 64 :=
.seq rawBody304_196 rawBody304_205

def rawBody304_207 : StackLang.HolProg 64 :=
.seq rawBody304_195 rawBody304_206

def rawBody304_208 : StackLang.HolProg 64 :=
.seq rawBody304_194 rawBody304_207

def rawBody304_209 : StackLang.HolProg 64 :=
.seq rawBody304_193 rawBody304_208

def rawBody304_210 : StackLang.HolProg 64 :=
.seq rawBody304_192 rawBody304_209

def rawBody304_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody304_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody304_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody304_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody304_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody304_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody304_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody304_219 : StackLang.HolProg 64 :=
.seq rawBody304_217 rawBody304_218

def rawBody304_220 : StackLang.HolProg 64 :=
.seq rawBody304_216 rawBody304_219

def rawBody304_221 : StackLang.HolProg 64 :=
.seq rawBody304_215 rawBody304_220

def rawBody304_222 : StackLang.HolProg 64 :=
.seq rawBody304_214 rawBody304_221

def rawBody304_223 : StackLang.HolProg 64 :=
.seq rawBody304_213 rawBody304_222

def rawBody304_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody304_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody304_226 : StackLang.HolProg 64 :=
.seq rawBody304_224 rawBody304_225

def rawBody304_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody304_228 : StackLang.HolProg 64 :=
.seq rawBody304_226 rawBody304_227

def rawBody304_229 : StackLang.HolProg 64 :=
.call (some (rawBody304_223, 0, 304, 8)) (Sum.inl 76) (some (rawBody304_228, 304, 9))

def rawBody304_230 : StackLang.HolProg 64 :=
.seq rawBody304_212 rawBody304_229

def rawBody304_231 : StackLang.HolProg 64 :=
.seq rawBody304_211 rawBody304_230

def rawBody304_232 : StackLang.HolProg 64 :=
.seq rawBody304_210 rawBody304_231

def rawBody304_233 : StackLang.HolProg 64 :=
.seq rawBody304_191 rawBody304_232

def rawBody304_234 : StackLang.HolProg 64 :=
.seq rawBody304_188 rawBody304_233

def rawBody304_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody304_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody304_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody304_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody304_239 : StackLang.HolProg 64 :=
.seq rawBody304_237 rawBody304_238

def rawBody304_240 : StackLang.HolProg 64 :=
.seq rawBody304_236 rawBody304_239

def rawBody304_241 : StackLang.HolProg 64 :=
.seq rawBody304_235 rawBody304_240

def rawBody304_242 : StackLang.HolProg 64 :=
.seq rawBody304_234 rawBody304_241

def rawBody304_243 : StackLang.HolProg 64 :=
.seq rawBody304_187 rawBody304_242

def rawBody304_244 : StackLang.HolProg 64 :=
.seq rawBody304_184 rawBody304_243

def rawBody304_245 : StackLang.HolProg 64 :=
.seq rawBody304_183 rawBody304_244

def rawBody304_246 : StackLang.HolProg 64 :=
.seq rawBody304_64 rawBody304_245

def rawBody304_247 : StackLang.HolProg 64 :=
.seq rawBody304_61 rawBody304_246

def rawBody304_248 : StackLang.HolProg 64 :=
.seq rawBody304_60 rawBody304_247

def rawBody304_249 : StackLang.HolProg 64 :=
.seq rawBody304_7 rawBody304_248

def rawBody304_250 : StackLang.HolProg 64 :=
.seq rawBody304_0 rawBody304_249

def raw304 : StackLang.HolProg 64 := rawBody304_250
theorem raw304_eq : StackRawCall.compTop RawInfo.rawInfo (function304 (.list [])).1 = raw304 := by
  kernel_rfl
#print axioms raw304_eq
end InitECandidate.Proofs.BackendStages
