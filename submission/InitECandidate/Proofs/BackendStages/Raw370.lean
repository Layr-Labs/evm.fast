import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function370
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody370_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody370_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody370_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody370_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody370_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody370_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody370_6 : StackLang.HolProg 64 :=
.seq rawBody370_4 rawBody370_5

def rawBody370_7 : StackLang.HolProg 64 :=
.seq rawBody370_3 rawBody370_6

def rawBody370_8 : StackLang.HolProg 64 :=
.seq rawBody370_2 rawBody370_7

def rawBody370_9 : StackLang.HolProg 64 :=
.seq rawBody370_1 rawBody370_8

def rawBody370_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1085#64)

def rawBody370_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody370_13 : StackLang.HolProg 64 :=
.seq rawBody370_11 rawBody370_12

def rawBody370_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody370_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody370_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody370_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 3

def rawBody370_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody370_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody370_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody370_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody370_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody370_24 : StackLang.HolProg 64 :=
.seq rawBody370_22 rawBody370_23

def rawBody370_25 : StackLang.HolProg 64 :=
.seq rawBody370_21 rawBody370_24

def rawBody370_26 : StackLang.HolProg 64 :=
.seq rawBody370_20 rawBody370_25

def rawBody370_27 : StackLang.HolProg 64 :=
.seq rawBody370_19 rawBody370_26

def rawBody370_28 : StackLang.HolProg 64 :=
.seq rawBody370_18 rawBody370_27

def rawBody370_29 : StackLang.HolProg 64 :=
.seq rawBody370_17 rawBody370_28

def rawBody370_30 : StackLang.HolProg 64 :=
.seq rawBody370_16 rawBody370_29

def rawBody370_31 : StackLang.HolProg 64 :=
.seq rawBody370_15 rawBody370_30

def rawBody370_32 : StackLang.HolProg 64 :=
.seq rawBody370_14 rawBody370_31

def rawBody370_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody370_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody370_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody370_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody370_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody370_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody370_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody370_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody370_43 : StackLang.HolProg 64 :=
.seq rawBody370_41 rawBody370_42

def rawBody370_44 : StackLang.HolProg 64 :=
.seq rawBody370_40 rawBody370_43

def rawBody370_45 : StackLang.HolProg 64 :=
.seq rawBody370_39 rawBody370_44

def rawBody370_46 : StackLang.HolProg 64 :=
.seq rawBody370_38 rawBody370_45

def rawBody370_47 : StackLang.HolProg 64 :=
.seq rawBody370_37 rawBody370_46

def rawBody370_48 : StackLang.HolProg 64 :=
.seq rawBody370_36 rawBody370_47

def rawBody370_49 : StackLang.HolProg 64 :=
.seq rawBody370_35 rawBody370_48

def rawBody370_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody370_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody370_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody370_53 : StackLang.HolProg 64 :=
.seq rawBody370_51 rawBody370_52

def rawBody370_54 : StackLang.HolProg 64 :=
.seq rawBody370_50 rawBody370_53

def rawBody370_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody370_56 : StackLang.HolProg 64 :=
.seq rawBody370_54 rawBody370_55

def rawBody370_57 : StackLang.HolProg 64 :=
.call (some (rawBody370_49, 0, 370, 2)) (Sum.inl 69) (some (rawBody370_56, 370, 3))

def rawBody370_58 : StackLang.HolProg 64 :=
.seq rawBody370_34 rawBody370_57

def rawBody370_59 : StackLang.HolProg 64 :=
.seq rawBody370_33 rawBody370_58

def rawBody370_60 : StackLang.HolProg 64 :=
.seq rawBody370_32 rawBody370_59

def rawBody370_61 : StackLang.HolProg 64 :=
.seq rawBody370_13 rawBody370_60

def rawBody370_62 : StackLang.HolProg 64 :=
.seq rawBody370_10 rawBody370_61

def rawBody370_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody370_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody370_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody370_66 : StackLang.HolProg 64 :=
.seq rawBody370_64 rawBody370_65

def rawBody370_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1086#64)

def rawBody370_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody370_70 : StackLang.HolProg 64 :=
.seq rawBody370_68 rawBody370_69

def rawBody370_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody370_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody370_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody370_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 5

def rawBody370_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody370_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody370_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody370_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody370_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody370_81 : StackLang.HolProg 64 :=
.seq rawBody370_79 rawBody370_80

def rawBody370_82 : StackLang.HolProg 64 :=
.seq rawBody370_78 rawBody370_81

def rawBody370_83 : StackLang.HolProg 64 :=
.seq rawBody370_77 rawBody370_82

def rawBody370_84 : StackLang.HolProg 64 :=
.seq rawBody370_76 rawBody370_83

def rawBody370_85 : StackLang.HolProg 64 :=
.seq rawBody370_75 rawBody370_84

def rawBody370_86 : StackLang.HolProg 64 :=
.seq rawBody370_74 rawBody370_85

def rawBody370_87 : StackLang.HolProg 64 :=
.seq rawBody370_73 rawBody370_86

def rawBody370_88 : StackLang.HolProg 64 :=
.seq rawBody370_72 rawBody370_87

def rawBody370_89 : StackLang.HolProg 64 :=
.seq rawBody370_71 rawBody370_88

def rawBody370_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody370_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody370_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody370_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody370_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody370_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody370_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody370_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody370_100 : StackLang.HolProg 64 :=
.seq rawBody370_98 rawBody370_99

def rawBody370_101 : StackLang.HolProg 64 :=
.seq rawBody370_97 rawBody370_100

def rawBody370_102 : StackLang.HolProg 64 :=
.seq rawBody370_96 rawBody370_101

def rawBody370_103 : StackLang.HolProg 64 :=
.seq rawBody370_95 rawBody370_102

def rawBody370_104 : StackLang.HolProg 64 :=
.seq rawBody370_94 rawBody370_103

def rawBody370_105 : StackLang.HolProg 64 :=
.seq rawBody370_93 rawBody370_104

def rawBody370_106 : StackLang.HolProg 64 :=
.seq rawBody370_92 rawBody370_105

def rawBody370_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody370_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody370_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody370_110 : StackLang.HolProg 64 :=
.seq rawBody370_108 rawBody370_109

def rawBody370_111 : StackLang.HolProg 64 :=
.seq rawBody370_107 rawBody370_110

def rawBody370_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody370_113 : StackLang.HolProg 64 :=
.seq rawBody370_111 rawBody370_112

def rawBody370_114 : StackLang.HolProg 64 :=
.call (some (rawBody370_106, 0, 370, 4)) (Sum.inl 367) (some (rawBody370_113, 370, 5))

def rawBody370_115 : StackLang.HolProg 64 :=
.seq rawBody370_91 rawBody370_114

def rawBody370_116 : StackLang.HolProg 64 :=
.seq rawBody370_90 rawBody370_115

def rawBody370_117 : StackLang.HolProg 64 :=
.seq rawBody370_89 rawBody370_116

def rawBody370_118 : StackLang.HolProg 64 :=
.seq rawBody370_70 rawBody370_117

def rawBody370_119 : StackLang.HolProg 64 :=
.seq rawBody370_67 rawBody370_118

def rawBody370_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody370_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody370_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1087#64)

def rawBody370_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody370_125 : StackLang.HolProg 64 :=
.seq rawBody370_123 rawBody370_124

def rawBody370_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody370_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody370_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody370_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 7

def rawBody370_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody370_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody370_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody370_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody370_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody370_136 : StackLang.HolProg 64 :=
.seq rawBody370_134 rawBody370_135

def rawBody370_137 : StackLang.HolProg 64 :=
.seq rawBody370_133 rawBody370_136

def rawBody370_138 : StackLang.HolProg 64 :=
.seq rawBody370_132 rawBody370_137

def rawBody370_139 : StackLang.HolProg 64 :=
.seq rawBody370_131 rawBody370_138

def rawBody370_140 : StackLang.HolProg 64 :=
.seq rawBody370_130 rawBody370_139

def rawBody370_141 : StackLang.HolProg 64 :=
.seq rawBody370_129 rawBody370_140

def rawBody370_142 : StackLang.HolProg 64 :=
.seq rawBody370_128 rawBody370_141

def rawBody370_143 : StackLang.HolProg 64 :=
.seq rawBody370_127 rawBody370_142

def rawBody370_144 : StackLang.HolProg 64 :=
.seq rawBody370_126 rawBody370_143

def rawBody370_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody370_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody370_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody370_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody370_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody370_152 : StackLang.HolProg 64 :=
.seq rawBody370_150 rawBody370_151

def rawBody370_153 : StackLang.HolProg 64 :=
.seq rawBody370_149 rawBody370_152

def rawBody370_154 : StackLang.HolProg 64 :=
.seq rawBody370_148 rawBody370_153

def rawBody370_155 : StackLang.HolProg 64 :=
.seq rawBody370_147 rawBody370_154

def rawBody370_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody370_157 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody370_158 : StackLang.HolProg 64 :=
.seq rawBody370_156 rawBody370_157

def rawBody370_159 : StackLang.HolProg 64 :=
.call (some (rawBody370_155, 0, 370, 6)) (Sum.inl 158) (some (rawBody370_158, 370, 7))

def rawBody370_160 : StackLang.HolProg 64 :=
.seq rawBody370_146 rawBody370_159

def rawBody370_161 : StackLang.HolProg 64 :=
.seq rawBody370_145 rawBody370_160

def rawBody370_162 : StackLang.HolProg 64 :=
.seq rawBody370_144 rawBody370_161

def rawBody370_163 : StackLang.HolProg 64 :=
.seq rawBody370_125 rawBody370_162

def rawBody370_164 : StackLang.HolProg 64 :=
.seq rawBody370_122 rawBody370_163

def rawBody370_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody370_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody370_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1088#64)

def rawBody370_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody370_170 : StackLang.HolProg 64 :=
.seq rawBody370_168 rawBody370_169

def rawBody370_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody370_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody370_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody370_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 9

def rawBody370_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody370_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody370_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody370_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody370_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody370_181 : StackLang.HolProg 64 :=
.seq rawBody370_179 rawBody370_180

def rawBody370_182 : StackLang.HolProg 64 :=
.seq rawBody370_178 rawBody370_181

def rawBody370_183 : StackLang.HolProg 64 :=
.seq rawBody370_177 rawBody370_182

def rawBody370_184 : StackLang.HolProg 64 :=
.seq rawBody370_176 rawBody370_183

def rawBody370_185 : StackLang.HolProg 64 :=
.seq rawBody370_175 rawBody370_184

def rawBody370_186 : StackLang.HolProg 64 :=
.seq rawBody370_174 rawBody370_185

def rawBody370_187 : StackLang.HolProg 64 :=
.seq rawBody370_173 rawBody370_186

def rawBody370_188 : StackLang.HolProg 64 :=
.seq rawBody370_172 rawBody370_187

def rawBody370_189 : StackLang.HolProg 64 :=
.seq rawBody370_171 rawBody370_188

def rawBody370_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody370_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody370_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody370_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody370_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody370_197 : StackLang.HolProg 64 :=
.seq rawBody370_195 rawBody370_196

def rawBody370_198 : StackLang.HolProg 64 :=
.seq rawBody370_194 rawBody370_197

def rawBody370_199 : StackLang.HolProg 64 :=
.seq rawBody370_193 rawBody370_198

def rawBody370_200 : StackLang.HolProg 64 :=
.seq rawBody370_192 rawBody370_199

def rawBody370_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody370_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody370_203 : StackLang.HolProg 64 :=
.seq rawBody370_201 rawBody370_202

def rawBody370_204 : StackLang.HolProg 64 :=
.call (some (rawBody370_200, 0, 370, 8)) (Sum.inl 70) (some (rawBody370_203, 370, 9))

def rawBody370_205 : StackLang.HolProg 64 :=
.seq rawBody370_191 rawBody370_204

def rawBody370_206 : StackLang.HolProg 64 :=
.seq rawBody370_190 rawBody370_205

def rawBody370_207 : StackLang.HolProg 64 :=
.seq rawBody370_189 rawBody370_206

def rawBody370_208 : StackLang.HolProg 64 :=
.seq rawBody370_170 rawBody370_207

def rawBody370_209 : StackLang.HolProg 64 :=
.seq rawBody370_167 rawBody370_208

def rawBody370_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody370_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody370_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody370_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody370_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody370_215 : StackLang.HolProg 64 :=
.seq rawBody370_213 rawBody370_214

def rawBody370_216 : StackLang.HolProg 64 :=
.seq rawBody370_212 rawBody370_215

def rawBody370_217 : StackLang.HolProg 64 :=
.seq rawBody370_211 rawBody370_216

def rawBody370_218 : StackLang.HolProg 64 :=
.seq rawBody370_210 rawBody370_217

def rawBody370_219 : StackLang.HolProg 64 :=
.seq rawBody370_209 rawBody370_218

def rawBody370_220 : StackLang.HolProg 64 :=
.seq rawBody370_166 rawBody370_219

def rawBody370_221 : StackLang.HolProg 64 :=
.seq rawBody370_165 rawBody370_220

def rawBody370_222 : StackLang.HolProg 64 :=
.seq rawBody370_164 rawBody370_221

def rawBody370_223 : StackLang.HolProg 64 :=
.seq rawBody370_121 rawBody370_222

def rawBody370_224 : StackLang.HolProg 64 :=
.seq rawBody370_120 rawBody370_223

def rawBody370_225 : StackLang.HolProg 64 :=
.seq rawBody370_119 rawBody370_224

def rawBody370_226 : StackLang.HolProg 64 :=
.seq rawBody370_66 rawBody370_225

def rawBody370_227 : StackLang.HolProg 64 :=
.seq rawBody370_63 rawBody370_226

def rawBody370_228 : StackLang.HolProg 64 :=
.seq rawBody370_62 rawBody370_227

def rawBody370_229 : StackLang.HolProg 64 :=
.seq rawBody370_9 rawBody370_228

def rawBody370_230 : StackLang.HolProg 64 :=
.seq rawBody370_0 rawBody370_229

def raw370 : StackLang.HolProg 64 := rawBody370_230
theorem raw370_eq : StackRawCall.compTop RawInfo.rawInfo (function370 (.list [])).1 = raw370 := by
  kernel_rfl
#print axioms raw370_eq
end InitECandidate.Proofs.BackendStages
