import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function398
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody398_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody398_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody398_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1181#64)

def rawBody398_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody398_5 : StackLang.HolProg 64 :=
.seq rawBody398_3 rawBody398_4

def rawBody398_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody398_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody398_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody398_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 3

def rawBody398_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody398_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody398_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody398_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody398_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody398_16 : StackLang.HolProg 64 :=
.seq rawBody398_14 rawBody398_15

def rawBody398_17 : StackLang.HolProg 64 :=
.seq rawBody398_13 rawBody398_16

def rawBody398_18 : StackLang.HolProg 64 :=
.seq rawBody398_12 rawBody398_17

def rawBody398_19 : StackLang.HolProg 64 :=
.seq rawBody398_11 rawBody398_18

def rawBody398_20 : StackLang.HolProg 64 :=
.seq rawBody398_10 rawBody398_19

def rawBody398_21 : StackLang.HolProg 64 :=
.seq rawBody398_9 rawBody398_20

def rawBody398_22 : StackLang.HolProg 64 :=
.seq rawBody398_8 rawBody398_21

def rawBody398_23 : StackLang.HolProg 64 :=
.seq rawBody398_7 rawBody398_22

def rawBody398_24 : StackLang.HolProg 64 :=
.seq rawBody398_6 rawBody398_23

def rawBody398_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody398_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody398_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody398_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody398_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody398_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody398_33 : StackLang.HolProg 64 :=
.seq rawBody398_31 rawBody398_32

def rawBody398_34 : StackLang.HolProg 64 :=
.seq rawBody398_30 rawBody398_33

def rawBody398_35 : StackLang.HolProg 64 :=
.seq rawBody398_29 rawBody398_34

def rawBody398_36 : StackLang.HolProg 64 :=
.seq rawBody398_28 rawBody398_35

def rawBody398_37 : StackLang.HolProg 64 :=
.seq rawBody398_27 rawBody398_36

def rawBody398_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody398_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody398_40 : StackLang.HolProg 64 :=
.seq rawBody398_38 rawBody398_39

def rawBody398_41 : StackLang.HolProg 64 :=
.call (some (rawBody398_37, 0, 398, 2)) (Sum.inl 397) (some (rawBody398_40, 398, 3))

def rawBody398_42 : StackLang.HolProg 64 :=
.seq rawBody398_26 rawBody398_41

def rawBody398_43 : StackLang.HolProg 64 :=
.seq rawBody398_25 rawBody398_42

def rawBody398_44 : StackLang.HolProg 64 :=
.seq rawBody398_24 rawBody398_43

def rawBody398_45 : StackLang.HolProg 64 :=
.seq rawBody398_5 rawBody398_44

def rawBody398_46 : StackLang.HolProg 64 :=
.seq rawBody398_2 rawBody398_45

def rawBody398_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody398_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody398_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody398_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody398_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody398_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody398_55 : StackLang.HolProg 64 :=
.seq rawBody398_53 rawBody398_54

def rawBody398_56 : StackLang.HolProg 64 :=
.seq rawBody398_52 rawBody398_55

def rawBody398_57 : StackLang.HolProg 64 :=
.seq rawBody398_51 rawBody398_56

def rawBody398_58 : StackLang.HolProg 64 :=
.seq rawBody398_50 rawBody398_57

def rawBody398_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody398_58 rawBody398_59

def rawBody398_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody398_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody398_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def rawBody398_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody398_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody398_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody398_67 : StackLang.HolProg 64 :=
.seq rawBody398_65 rawBody398_66

def rawBody398_68 : StackLang.HolProg 64 :=
.seq rawBody398_64 rawBody398_67

def rawBody398_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1182#64)

def rawBody398_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody398_72 : StackLang.HolProg 64 :=
.seq rawBody398_70 rawBody398_71

def rawBody398_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody398_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody398_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody398_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 5

def rawBody398_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody398_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody398_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody398_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody398_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody398_83 : StackLang.HolProg 64 :=
.seq rawBody398_81 rawBody398_82

def rawBody398_84 : StackLang.HolProg 64 :=
.seq rawBody398_80 rawBody398_83

def rawBody398_85 : StackLang.HolProg 64 :=
.seq rawBody398_79 rawBody398_84

def rawBody398_86 : StackLang.HolProg 64 :=
.seq rawBody398_78 rawBody398_85

def rawBody398_87 : StackLang.HolProg 64 :=
.seq rawBody398_77 rawBody398_86

def rawBody398_88 : StackLang.HolProg 64 :=
.seq rawBody398_76 rawBody398_87

def rawBody398_89 : StackLang.HolProg 64 :=
.seq rawBody398_75 rawBody398_88

def rawBody398_90 : StackLang.HolProg 64 :=
.seq rawBody398_74 rawBody398_89

def rawBody398_91 : StackLang.HolProg 64 :=
.seq rawBody398_73 rawBody398_90

def rawBody398_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody398_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody398_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody398_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody398_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody398_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody398_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody398_101 : StackLang.HolProg 64 :=
.seq rawBody398_99 rawBody398_100

def rawBody398_102 : StackLang.HolProg 64 :=
.seq rawBody398_98 rawBody398_101

def rawBody398_103 : StackLang.HolProg 64 :=
.seq rawBody398_97 rawBody398_102

def rawBody398_104 : StackLang.HolProg 64 :=
.seq rawBody398_96 rawBody398_103

def rawBody398_105 : StackLang.HolProg 64 :=
.seq rawBody398_95 rawBody398_104

def rawBody398_106 : StackLang.HolProg 64 :=
.seq rawBody398_94 rawBody398_105

def rawBody398_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody398_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody398_109 : StackLang.HolProg 64 :=
.seq rawBody398_107 rawBody398_108

def rawBody398_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody398_111 : StackLang.HolProg 64 :=
.seq rawBody398_109 rawBody398_110

def rawBody398_112 : StackLang.HolProg 64 :=
.call (some (rawBody398_106, 0, 398, 4)) (Sum.inl 68) (some (rawBody398_111, 398, 5))

def rawBody398_113 : StackLang.HolProg 64 :=
.seq rawBody398_93 rawBody398_112

def rawBody398_114 : StackLang.HolProg 64 :=
.seq rawBody398_92 rawBody398_113

def rawBody398_115 : StackLang.HolProg 64 :=
.seq rawBody398_91 rawBody398_114

def rawBody398_116 : StackLang.HolProg 64 :=
.seq rawBody398_72 rawBody398_115

def rawBody398_117 : StackLang.HolProg 64 :=
.seq rawBody398_69 rawBody398_116

def rawBody398_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody398_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody398_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody398_121 : StackLang.HolProg 64 :=
.seq rawBody398_119 rawBody398_120

def rawBody398_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1183#64)

def rawBody398_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody398_125 : StackLang.HolProg 64 :=
.seq rawBody398_123 rawBody398_124

def rawBody398_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody398_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody398_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody398_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 7

def rawBody398_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody398_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody398_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody398_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody398_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody398_136 : StackLang.HolProg 64 :=
.seq rawBody398_134 rawBody398_135

def rawBody398_137 : StackLang.HolProg 64 :=
.seq rawBody398_133 rawBody398_136

def rawBody398_138 : StackLang.HolProg 64 :=
.seq rawBody398_132 rawBody398_137

def rawBody398_139 : StackLang.HolProg 64 :=
.seq rawBody398_131 rawBody398_138

def rawBody398_140 : StackLang.HolProg 64 :=
.seq rawBody398_130 rawBody398_139

def rawBody398_141 : StackLang.HolProg 64 :=
.seq rawBody398_129 rawBody398_140

def rawBody398_142 : StackLang.HolProg 64 :=
.seq rawBody398_128 rawBody398_141

def rawBody398_143 : StackLang.HolProg 64 :=
.seq rawBody398_127 rawBody398_142

def rawBody398_144 : StackLang.HolProg 64 :=
.seq rawBody398_126 rawBody398_143

def rawBody398_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody398_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody398_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody398_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody398_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody398_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody398_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody398_153 : StackLang.HolProg 64 :=
.seq rawBody398_151 rawBody398_152

def rawBody398_154 : StackLang.HolProg 64 :=
.seq rawBody398_150 rawBody398_153

def rawBody398_155 : StackLang.HolProg 64 :=
.seq rawBody398_149 rawBody398_154

def rawBody398_156 : StackLang.HolProg 64 :=
.seq rawBody398_148 rawBody398_155

def rawBody398_157 : StackLang.HolProg 64 :=
.seq rawBody398_147 rawBody398_156

def rawBody398_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody398_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody398_160 : StackLang.HolProg 64 :=
.seq rawBody398_158 rawBody398_159

def rawBody398_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody398_162 : StackLang.HolProg 64 :=
.seq rawBody398_160 rawBody398_161

def rawBody398_163 : StackLang.HolProg 64 :=
.call (some (rawBody398_157, 0, 398, 6)) (Sum.inl 333) (some (rawBody398_162, 398, 7))

def rawBody398_164 : StackLang.HolProg 64 :=
.seq rawBody398_146 rawBody398_163

def rawBody398_165 : StackLang.HolProg 64 :=
.seq rawBody398_145 rawBody398_164

def rawBody398_166 : StackLang.HolProg 64 :=
.seq rawBody398_144 rawBody398_165

def rawBody398_167 : StackLang.HolProg 64 :=
.seq rawBody398_125 rawBody398_166

def rawBody398_168 : StackLang.HolProg 64 :=
.seq rawBody398_122 rawBody398_167

def rawBody398_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody398_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody398_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody398_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody398_173 : StackLang.HolProg 64 :=
.seq rawBody398_171 rawBody398_172

def rawBody398_174 : StackLang.HolProg 64 :=
.seq rawBody398_170 rawBody398_173

def rawBody398_175 : StackLang.HolProg 64 :=
.seq rawBody398_169 rawBody398_174

def rawBody398_176 : StackLang.HolProg 64 :=
.seq rawBody398_168 rawBody398_175

def rawBody398_177 : StackLang.HolProg 64 :=
.seq rawBody398_121 rawBody398_176

def rawBody398_178 : StackLang.HolProg 64 :=
.seq rawBody398_118 rawBody398_177

def rawBody398_179 : StackLang.HolProg 64 :=
.seq rawBody398_117 rawBody398_178

def rawBody398_180 : StackLang.HolProg 64 :=
.seq rawBody398_68 rawBody398_179

def rawBody398_181 : StackLang.HolProg 64 :=
.seq rawBody398_63 rawBody398_180

def rawBody398_182 : StackLang.HolProg 64 :=
.seq rawBody398_62 rawBody398_181

def rawBody398_183 : StackLang.HolProg 64 :=
.seq rawBody398_61 rawBody398_182

def rawBody398_184 : StackLang.HolProg 64 :=
.seq rawBody398_60 rawBody398_183

def rawBody398_185 : StackLang.HolProg 64 :=
.seq rawBody398_49 rawBody398_184

def rawBody398_186 : StackLang.HolProg 64 :=
.seq rawBody398_48 rawBody398_185

def rawBody398_187 : StackLang.HolProg 64 :=
.seq rawBody398_47 rawBody398_186

def rawBody398_188 : StackLang.HolProg 64 :=
.seq rawBody398_46 rawBody398_187

def rawBody398_189 : StackLang.HolProg 64 :=
.seq rawBody398_1 rawBody398_188

def rawBody398_190 : StackLang.HolProg 64 :=
.seq rawBody398_0 rawBody398_189

def raw398 : StackLang.HolProg 64 := rawBody398_190
theorem raw398_eq : StackRawCall.compTop RawInfo.rawInfo (function398 (.list [])).1 = raw398 := by
  kernel_rfl
#print axioms raw398_eq
end InitECandidate.Proofs.BackendStages
