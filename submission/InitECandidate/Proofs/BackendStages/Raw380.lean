import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function380
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody380_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody380_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody380_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody380_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody380_4 : StackLang.HolProg 64 :=
.seq rawBody380_2 rawBody380_3

def rawBody380_5 : StackLang.HolProg 64 :=
.seq rawBody380_1 rawBody380_4

def rawBody380_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1114#64)

def rawBody380_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_9 : StackLang.HolProg 64 :=
.seq rawBody380_7 rawBody380_8

def rawBody380_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody380_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody380_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 3

def rawBody380_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody380_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody380_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody380_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody380_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_20 : StackLang.HolProg 64 :=
.seq rawBody380_18 rawBody380_19

def rawBody380_21 : StackLang.HolProg 64 :=
.seq rawBody380_17 rawBody380_20

def rawBody380_22 : StackLang.HolProg 64 :=
.seq rawBody380_16 rawBody380_21

def rawBody380_23 : StackLang.HolProg 64 :=
.seq rawBody380_15 rawBody380_22

def rawBody380_24 : StackLang.HolProg 64 :=
.seq rawBody380_14 rawBody380_23

def rawBody380_25 : StackLang.HolProg 64 :=
.seq rawBody380_13 rawBody380_24

def rawBody380_26 : StackLang.HolProg 64 :=
.seq rawBody380_12 rawBody380_25

def rawBody380_27 : StackLang.HolProg 64 :=
.seq rawBody380_11 rawBody380_26

def rawBody380_28 : StackLang.HolProg 64 :=
.seq rawBody380_10 rawBody380_27

def rawBody380_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody380_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody380_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody380_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody380_36 : StackLang.HolProg 64 :=
.seq rawBody380_34 rawBody380_35

def rawBody380_37 : StackLang.HolProg 64 :=
.seq rawBody380_33 rawBody380_36

def rawBody380_38 : StackLang.HolProg 64 :=
.seq rawBody380_32 rawBody380_37

def rawBody380_39 : StackLang.HolProg 64 :=
.seq rawBody380_31 rawBody380_38

def rawBody380_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody380_42 : StackLang.HolProg 64 :=
.seq rawBody380_40 rawBody380_41

def rawBody380_43 : StackLang.HolProg 64 :=
.call (some (rawBody380_39, 0, 380, 2)) (Sum.inl 69) (some (rawBody380_42, 380, 3))

def rawBody380_44 : StackLang.HolProg 64 :=
.seq rawBody380_30 rawBody380_43

def rawBody380_45 : StackLang.HolProg 64 :=
.seq rawBody380_29 rawBody380_44

def rawBody380_46 : StackLang.HolProg 64 :=
.seq rawBody380_28 rawBody380_45

def rawBody380_47 : StackLang.HolProg 64 :=
.seq rawBody380_9 rawBody380_46

def rawBody380_48 : StackLang.HolProg 64 :=
.seq rawBody380_6 rawBody380_47

def rawBody380_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody380_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody380_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody380_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1115#64)

def rawBody380_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_55 : StackLang.HolProg 64 :=
.seq rawBody380_53 rawBody380_54

def rawBody380_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody380_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody380_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 5

def rawBody380_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody380_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody380_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody380_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody380_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_66 : StackLang.HolProg 64 :=
.seq rawBody380_64 rawBody380_65

def rawBody380_67 : StackLang.HolProg 64 :=
.seq rawBody380_63 rawBody380_66

def rawBody380_68 : StackLang.HolProg 64 :=
.seq rawBody380_62 rawBody380_67

def rawBody380_69 : StackLang.HolProg 64 :=
.seq rawBody380_61 rawBody380_68

def rawBody380_70 : StackLang.HolProg 64 :=
.seq rawBody380_60 rawBody380_69

def rawBody380_71 : StackLang.HolProg 64 :=
.seq rawBody380_59 rawBody380_70

def rawBody380_72 : StackLang.HolProg 64 :=
.seq rawBody380_58 rawBody380_71

def rawBody380_73 : StackLang.HolProg 64 :=
.seq rawBody380_57 rawBody380_72

def rawBody380_74 : StackLang.HolProg 64 :=
.seq rawBody380_56 rawBody380_73

def rawBody380_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody380_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody380_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody380_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody380_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody380_83 : StackLang.HolProg 64 :=
.seq rawBody380_81 rawBody380_82

def rawBody380_84 : StackLang.HolProg 64 :=
.seq rawBody380_80 rawBody380_83

def rawBody380_85 : StackLang.HolProg 64 :=
.seq rawBody380_79 rawBody380_84

def rawBody380_86 : StackLang.HolProg 64 :=
.seq rawBody380_78 rawBody380_85

def rawBody380_87 : StackLang.HolProg 64 :=
.seq rawBody380_77 rawBody380_86

def rawBody380_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody380_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody380_90 : StackLang.HolProg 64 :=
.seq rawBody380_88 rawBody380_89

def rawBody380_91 : StackLang.HolProg 64 :=
.call (some (rawBody380_87, 0, 380, 4)) (Sum.inl 68) (some (rawBody380_90, 380, 5))

def rawBody380_92 : StackLang.HolProg 64 :=
.seq rawBody380_76 rawBody380_91

def rawBody380_93 : StackLang.HolProg 64 :=
.seq rawBody380_75 rawBody380_92

def rawBody380_94 : StackLang.HolProg 64 :=
.seq rawBody380_74 rawBody380_93

def rawBody380_95 : StackLang.HolProg 64 :=
.seq rawBody380_55 rawBody380_94

def rawBody380_96 : StackLang.HolProg 64 :=
.seq rawBody380_52 rawBody380_95

def rawBody380_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody380_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody380_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def rawBody380_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody380_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1116#64)

def rawBody380_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_106 : StackLang.HolProg 64 :=
.seq rawBody380_104 rawBody380_105

def rawBody380_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody380_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody380_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 7

def rawBody380_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody380_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody380_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody380_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody380_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_117 : StackLang.HolProg 64 :=
.seq rawBody380_115 rawBody380_116

def rawBody380_118 : StackLang.HolProg 64 :=
.seq rawBody380_114 rawBody380_117

def rawBody380_119 : StackLang.HolProg 64 :=
.seq rawBody380_113 rawBody380_118

def rawBody380_120 : StackLang.HolProg 64 :=
.seq rawBody380_112 rawBody380_119

def rawBody380_121 : StackLang.HolProg 64 :=
.seq rawBody380_111 rawBody380_120

def rawBody380_122 : StackLang.HolProg 64 :=
.seq rawBody380_110 rawBody380_121

def rawBody380_123 : StackLang.HolProg 64 :=
.seq rawBody380_109 rawBody380_122

def rawBody380_124 : StackLang.HolProg 64 :=
.seq rawBody380_108 rawBody380_123

def rawBody380_125 : StackLang.HolProg 64 :=
.seq rawBody380_107 rawBody380_124

def rawBody380_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody380_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody380_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody380_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody380_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody380_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody380_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody380_136 : StackLang.HolProg 64 :=
.seq rawBody380_134 rawBody380_135

def rawBody380_137 : StackLang.HolProg 64 :=
.seq rawBody380_133 rawBody380_136

def rawBody380_138 : StackLang.HolProg 64 :=
.seq rawBody380_132 rawBody380_137

def rawBody380_139 : StackLang.HolProg 64 :=
.seq rawBody380_131 rawBody380_138

def rawBody380_140 : StackLang.HolProg 64 :=
.seq rawBody380_130 rawBody380_139

def rawBody380_141 : StackLang.HolProg 64 :=
.seq rawBody380_129 rawBody380_140

def rawBody380_142 : StackLang.HolProg 64 :=
.seq rawBody380_128 rawBody380_141

def rawBody380_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody380_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody380_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody380_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody380_147 : StackLang.HolProg 64 :=
.seq rawBody380_145 rawBody380_146

def rawBody380_148 : StackLang.HolProg 64 :=
.seq rawBody380_144 rawBody380_147

def rawBody380_149 : StackLang.HolProg 64 :=
.seq rawBody380_143 rawBody380_148

def rawBody380_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody380_151 : StackLang.HolProg 64 :=
.seq rawBody380_149 rawBody380_150

def rawBody380_152 : StackLang.HolProg 64 :=
.call (some (rawBody380_142, 0, 380, 6)) (Sum.inl 158) (some (rawBody380_151, 380, 7))

def rawBody380_153 : StackLang.HolProg 64 :=
.seq rawBody380_127 rawBody380_152

def rawBody380_154 : StackLang.HolProg 64 :=
.seq rawBody380_126 rawBody380_153

def rawBody380_155 : StackLang.HolProg 64 :=
.seq rawBody380_125 rawBody380_154

def rawBody380_156 : StackLang.HolProg 64 :=
.seq rawBody380_106 rawBody380_155

def rawBody380_157 : StackLang.HolProg 64 :=
.seq rawBody380_103 rawBody380_156

def rawBody380_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody380_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody380_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def rawBody380_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def rawBody380_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1117#64)

def rawBody380_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_166 : StackLang.HolProg 64 :=
.seq rawBody380_164 rawBody380_165

def rawBody380_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody380_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody380_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 9

def rawBody380_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody380_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody380_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody380_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody380_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_177 : StackLang.HolProg 64 :=
.seq rawBody380_175 rawBody380_176

def rawBody380_178 : StackLang.HolProg 64 :=
.seq rawBody380_174 rawBody380_177

def rawBody380_179 : StackLang.HolProg 64 :=
.seq rawBody380_173 rawBody380_178

def rawBody380_180 : StackLang.HolProg 64 :=
.seq rawBody380_172 rawBody380_179

def rawBody380_181 : StackLang.HolProg 64 :=
.seq rawBody380_171 rawBody380_180

def rawBody380_182 : StackLang.HolProg 64 :=
.seq rawBody380_170 rawBody380_181

def rawBody380_183 : StackLang.HolProg 64 :=
.seq rawBody380_169 rawBody380_182

def rawBody380_184 : StackLang.HolProg 64 :=
.seq rawBody380_168 rawBody380_183

def rawBody380_185 : StackLang.HolProg 64 :=
.seq rawBody380_167 rawBody380_184

def rawBody380_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody380_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody380_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody380_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody380_193 : StackLang.HolProg 64 :=
.seq rawBody380_191 rawBody380_192

def rawBody380_194 : StackLang.HolProg 64 :=
.seq rawBody380_190 rawBody380_193

def rawBody380_195 : StackLang.HolProg 64 :=
.seq rawBody380_189 rawBody380_194

def rawBody380_196 : StackLang.HolProg 64 :=
.seq rawBody380_188 rawBody380_195

def rawBody380_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody380_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody380_199 : StackLang.HolProg 64 :=
.seq rawBody380_197 rawBody380_198

def rawBody380_200 : StackLang.HolProg 64 :=
.call (some (rawBody380_196, 0, 380, 8)) (Sum.inl 77) (some (rawBody380_199, 380, 9))

def rawBody380_201 : StackLang.HolProg 64 :=
.seq rawBody380_187 rawBody380_200

def rawBody380_202 : StackLang.HolProg 64 :=
.seq rawBody380_186 rawBody380_201

def rawBody380_203 : StackLang.HolProg 64 :=
.seq rawBody380_185 rawBody380_202

def rawBody380_204 : StackLang.HolProg 64 :=
.seq rawBody380_166 rawBody380_203

def rawBody380_205 : StackLang.HolProg 64 :=
.seq rawBody380_163 rawBody380_204

def rawBody380_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody380_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody380_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1118#64)

def rawBody380_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_211 : StackLang.HolProg 64 :=
.seq rawBody380_209 rawBody380_210

def rawBody380_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody380_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody380_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody380_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 11

def rawBody380_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody380_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody380_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody380_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody380_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_222 : StackLang.HolProg 64 :=
.seq rawBody380_220 rawBody380_221

def rawBody380_223 : StackLang.HolProg 64 :=
.seq rawBody380_219 rawBody380_222

def rawBody380_224 : StackLang.HolProg 64 :=
.seq rawBody380_218 rawBody380_223

def rawBody380_225 : StackLang.HolProg 64 :=
.seq rawBody380_217 rawBody380_224

def rawBody380_226 : StackLang.HolProg 64 :=
.seq rawBody380_216 rawBody380_225

def rawBody380_227 : StackLang.HolProg 64 :=
.seq rawBody380_215 rawBody380_226

def rawBody380_228 : StackLang.HolProg 64 :=
.seq rawBody380_214 rawBody380_227

def rawBody380_229 : StackLang.HolProg 64 :=
.seq rawBody380_213 rawBody380_228

def rawBody380_230 : StackLang.HolProg 64 :=
.seq rawBody380_212 rawBody380_229

def rawBody380_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody380_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody380_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody380_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody380_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody380_238 : StackLang.HolProg 64 :=
.seq rawBody380_236 rawBody380_237

def rawBody380_239 : StackLang.HolProg 64 :=
.seq rawBody380_235 rawBody380_238

def rawBody380_240 : StackLang.HolProg 64 :=
.seq rawBody380_234 rawBody380_239

def rawBody380_241 : StackLang.HolProg 64 :=
.seq rawBody380_233 rawBody380_240

def rawBody380_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody380_243 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody380_244 : StackLang.HolProg 64 :=
.seq rawBody380_242 rawBody380_243

def rawBody380_245 : StackLang.HolProg 64 :=
.call (some (rawBody380_241, 0, 380, 10)) (Sum.inl 70) (some (rawBody380_244, 380, 11))

def rawBody380_246 : StackLang.HolProg 64 :=
.seq rawBody380_232 rawBody380_245

def rawBody380_247 : StackLang.HolProg 64 :=
.seq rawBody380_231 rawBody380_246

def rawBody380_248 : StackLang.HolProg 64 :=
.seq rawBody380_230 rawBody380_247

def rawBody380_249 : StackLang.HolProg 64 :=
.seq rawBody380_211 rawBody380_248

def rawBody380_250 : StackLang.HolProg 64 :=
.seq rawBody380_208 rawBody380_249

def rawBody380_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody380_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody380_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody380_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody380_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody380_256 : StackLang.HolProg 64 :=
.seq rawBody380_254 rawBody380_255

def rawBody380_257 : StackLang.HolProg 64 :=
.seq rawBody380_253 rawBody380_256

def rawBody380_258 : StackLang.HolProg 64 :=
.seq rawBody380_252 rawBody380_257

def rawBody380_259 : StackLang.HolProg 64 :=
.seq rawBody380_251 rawBody380_258

def rawBody380_260 : StackLang.HolProg 64 :=
.seq rawBody380_250 rawBody380_259

def rawBody380_261 : StackLang.HolProg 64 :=
.seq rawBody380_207 rawBody380_260

def rawBody380_262 : StackLang.HolProg 64 :=
.seq rawBody380_206 rawBody380_261

def rawBody380_263 : StackLang.HolProg 64 :=
.seq rawBody380_205 rawBody380_262

def rawBody380_264 : StackLang.HolProg 64 :=
.seq rawBody380_162 rawBody380_263

def rawBody380_265 : StackLang.HolProg 64 :=
.seq rawBody380_161 rawBody380_264

def rawBody380_266 : StackLang.HolProg 64 :=
.seq rawBody380_160 rawBody380_265

def rawBody380_267 : StackLang.HolProg 64 :=
.seq rawBody380_159 rawBody380_266

def rawBody380_268 : StackLang.HolProg 64 :=
.seq rawBody380_158 rawBody380_267

def rawBody380_269 : StackLang.HolProg 64 :=
.seq rawBody380_157 rawBody380_268

def rawBody380_270 : StackLang.HolProg 64 :=
.seq rawBody380_102 rawBody380_269

def rawBody380_271 : StackLang.HolProg 64 :=
.seq rawBody380_101 rawBody380_270

def rawBody380_272 : StackLang.HolProg 64 :=
.seq rawBody380_100 rawBody380_271

def rawBody380_273 : StackLang.HolProg 64 :=
.seq rawBody380_99 rawBody380_272

def rawBody380_274 : StackLang.HolProg 64 :=
.seq rawBody380_98 rawBody380_273

def rawBody380_275 : StackLang.HolProg 64 :=
.seq rawBody380_97 rawBody380_274

def rawBody380_276 : StackLang.HolProg 64 :=
.seq rawBody380_96 rawBody380_275

def rawBody380_277 : StackLang.HolProg 64 :=
.seq rawBody380_51 rawBody380_276

def rawBody380_278 : StackLang.HolProg 64 :=
.seq rawBody380_50 rawBody380_277

def rawBody380_279 : StackLang.HolProg 64 :=
.seq rawBody380_49 rawBody380_278

def rawBody380_280 : StackLang.HolProg 64 :=
.seq rawBody380_48 rawBody380_279

def rawBody380_281 : StackLang.HolProg 64 :=
.seq rawBody380_5 rawBody380_280

def rawBody380_282 : StackLang.HolProg 64 :=
.seq rawBody380_0 rawBody380_281

def raw380 : StackLang.HolProg 64 := rawBody380_282
theorem raw380_eq : StackRawCall.compTop RawInfo.rawInfo (function380 (.list [])).1 = raw380 := by
  kernel_rfl
#print axioms raw380_eq
end InitECandidate.Proofs.BackendStages
