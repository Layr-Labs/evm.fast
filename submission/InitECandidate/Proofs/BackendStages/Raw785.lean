import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function785
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody785_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody785_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody785_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody785_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody785_4 : StackLang.HolProg 64 :=
.seq rawBody785_2 rawBody785_3

def rawBody785_5 : StackLang.HolProg 64 :=
.seq rawBody785_1 rawBody785_4

def rawBody785_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3625#64)

def rawBody785_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_9 : StackLang.HolProg 64 :=
.seq rawBody785_7 rawBody785_8

def rawBody785_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody785_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody785_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 3

def rawBody785_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody785_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody785_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody785_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody785_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_20 : StackLang.HolProg 64 :=
.seq rawBody785_18 rawBody785_19

def rawBody785_21 : StackLang.HolProg 64 :=
.seq rawBody785_17 rawBody785_20

def rawBody785_22 : StackLang.HolProg 64 :=
.seq rawBody785_16 rawBody785_21

def rawBody785_23 : StackLang.HolProg 64 :=
.seq rawBody785_15 rawBody785_22

def rawBody785_24 : StackLang.HolProg 64 :=
.seq rawBody785_14 rawBody785_23

def rawBody785_25 : StackLang.HolProg 64 :=
.seq rawBody785_13 rawBody785_24

def rawBody785_26 : StackLang.HolProg 64 :=
.seq rawBody785_12 rawBody785_25

def rawBody785_27 : StackLang.HolProg 64 :=
.seq rawBody785_11 rawBody785_26

def rawBody785_28 : StackLang.HolProg 64 :=
.seq rawBody785_10 rawBody785_27

def rawBody785_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody785_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody785_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody785_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody785_36 : StackLang.HolProg 64 :=
.seq rawBody785_34 rawBody785_35

def rawBody785_37 : StackLang.HolProg 64 :=
.seq rawBody785_33 rawBody785_36

def rawBody785_38 : StackLang.HolProg 64 :=
.seq rawBody785_32 rawBody785_37

def rawBody785_39 : StackLang.HolProg 64 :=
.seq rawBody785_31 rawBody785_38

def rawBody785_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody785_42 : StackLang.HolProg 64 :=
.seq rawBody785_40 rawBody785_41

def rawBody785_43 : StackLang.HolProg 64 :=
.call (some (rawBody785_39, 0, 785, 2)) (Sum.inl 69) (some (rawBody785_42, 785, 3))

def rawBody785_44 : StackLang.HolProg 64 :=
.seq rawBody785_30 rawBody785_43

def rawBody785_45 : StackLang.HolProg 64 :=
.seq rawBody785_29 rawBody785_44

def rawBody785_46 : StackLang.HolProg 64 :=
.seq rawBody785_28 rawBody785_45

def rawBody785_47 : StackLang.HolProg 64 :=
.seq rawBody785_9 rawBody785_46

def rawBody785_48 : StackLang.HolProg 64 :=
.seq rawBody785_6 rawBody785_47

def rawBody785_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def rawBody785_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody785_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3626#64)

def rawBody785_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_55 : StackLang.HolProg 64 :=
.seq rawBody785_53 rawBody785_54

def rawBody785_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody785_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody785_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 5

def rawBody785_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody785_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody785_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody785_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody785_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_66 : StackLang.HolProg 64 :=
.seq rawBody785_64 rawBody785_65

def rawBody785_67 : StackLang.HolProg 64 :=
.seq rawBody785_63 rawBody785_66

def rawBody785_68 : StackLang.HolProg 64 :=
.seq rawBody785_62 rawBody785_67

def rawBody785_69 : StackLang.HolProg 64 :=
.seq rawBody785_61 rawBody785_68

def rawBody785_70 : StackLang.HolProg 64 :=
.seq rawBody785_60 rawBody785_69

def rawBody785_71 : StackLang.HolProg 64 :=
.seq rawBody785_59 rawBody785_70

def rawBody785_72 : StackLang.HolProg 64 :=
.seq rawBody785_58 rawBody785_71

def rawBody785_73 : StackLang.HolProg 64 :=
.seq rawBody785_57 rawBody785_72

def rawBody785_74 : StackLang.HolProg 64 :=
.seq rawBody785_56 rawBody785_73

def rawBody785_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody785_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody785_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody785_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody785_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody785_83 : StackLang.HolProg 64 :=
.seq rawBody785_81 rawBody785_82

def rawBody785_84 : StackLang.HolProg 64 :=
.seq rawBody785_80 rawBody785_83

def rawBody785_85 : StackLang.HolProg 64 :=
.seq rawBody785_79 rawBody785_84

def rawBody785_86 : StackLang.HolProg 64 :=
.seq rawBody785_78 rawBody785_85

def rawBody785_87 : StackLang.HolProg 64 :=
.seq rawBody785_77 rawBody785_86

def rawBody785_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody785_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody785_90 : StackLang.HolProg 64 :=
.seq rawBody785_88 rawBody785_89

def rawBody785_91 : StackLang.HolProg 64 :=
.call (some (rawBody785_87, 0, 785, 4)) (Sum.inl 68) (some (rawBody785_90, 785, 5))

def rawBody785_92 : StackLang.HolProg 64 :=
.seq rawBody785_76 rawBody785_91

def rawBody785_93 : StackLang.HolProg 64 :=
.seq rawBody785_75 rawBody785_92

def rawBody785_94 : StackLang.HolProg 64 :=
.seq rawBody785_74 rawBody785_93

def rawBody785_95 : StackLang.HolProg 64 :=
.seq rawBody785_55 rawBody785_94

def rawBody785_96 : StackLang.HolProg 64 :=
.seq rawBody785_52 rawBody785_95

def rawBody785_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody785_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody785_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody785_101 : StackLang.HolProg 64 :=
.seq rawBody785_99 rawBody785_100

def rawBody785_102 : StackLang.HolProg 64 :=
.seq rawBody785_98 rawBody785_101

def rawBody785_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3627#64)

def rawBody785_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_106 : StackLang.HolProg 64 :=
.seq rawBody785_104 rawBody785_105

def rawBody785_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody785_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody785_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 7

def rawBody785_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody785_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody785_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody785_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody785_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_117 : StackLang.HolProg 64 :=
.seq rawBody785_115 rawBody785_116

def rawBody785_118 : StackLang.HolProg 64 :=
.seq rawBody785_114 rawBody785_117

def rawBody785_119 : StackLang.HolProg 64 :=
.seq rawBody785_113 rawBody785_118

def rawBody785_120 : StackLang.HolProg 64 :=
.seq rawBody785_112 rawBody785_119

def rawBody785_121 : StackLang.HolProg 64 :=
.seq rawBody785_111 rawBody785_120

def rawBody785_122 : StackLang.HolProg 64 :=
.seq rawBody785_110 rawBody785_121

def rawBody785_123 : StackLang.HolProg 64 :=
.seq rawBody785_109 rawBody785_122

def rawBody785_124 : StackLang.HolProg 64 :=
.seq rawBody785_108 rawBody785_123

def rawBody785_125 : StackLang.HolProg 64 :=
.seq rawBody785_107 rawBody785_124

def rawBody785_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody785_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody785_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody785_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody785_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody785_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody785_135 : StackLang.HolProg 64 :=
.seq rawBody785_133 rawBody785_134

def rawBody785_136 : StackLang.HolProg 64 :=
.seq rawBody785_132 rawBody785_135

def rawBody785_137 : StackLang.HolProg 64 :=
.seq rawBody785_131 rawBody785_136

def rawBody785_138 : StackLang.HolProg 64 :=
.seq rawBody785_130 rawBody785_137

def rawBody785_139 : StackLang.HolProg 64 :=
.seq rawBody785_129 rawBody785_138

def rawBody785_140 : StackLang.HolProg 64 :=
.seq rawBody785_128 rawBody785_139

def rawBody785_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody785_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody785_143 : StackLang.HolProg 64 :=
.seq rawBody785_141 rawBody785_142

def rawBody785_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody785_145 : StackLang.HolProg 64 :=
.seq rawBody785_143 rawBody785_144

def rawBody785_146 : StackLang.HolProg 64 :=
.call (some (rawBody785_140, 0, 785, 6)) (Sum.inl 779) (some (rawBody785_145, 785, 7))

def rawBody785_147 : StackLang.HolProg 64 :=
.seq rawBody785_127 rawBody785_146

def rawBody785_148 : StackLang.HolProg 64 :=
.seq rawBody785_126 rawBody785_147

def rawBody785_149 : StackLang.HolProg 64 :=
.seq rawBody785_125 rawBody785_148

def rawBody785_150 : StackLang.HolProg 64 :=
.seq rawBody785_106 rawBody785_149

def rawBody785_151 : StackLang.HolProg 64 :=
.seq rawBody785_103 rawBody785_150

def rawBody785_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody785_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 1

def rawBody785_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def rawBody785_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody785_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody785_160 : StackLang.HolProg 64 :=
.seq rawBody785_158 rawBody785_159

def rawBody785_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody785_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody785_163 : StackLang.HolProg 64 :=
.seq rawBody785_161 rawBody785_162

def rawBody785_164 : StackLang.HolProg 64 :=
.seq rawBody785_160 rawBody785_163

def rawBody785_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3628#64)

def rawBody785_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_168 : StackLang.HolProg 64 :=
.seq rawBody785_166 rawBody785_167

def rawBody785_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody785_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody785_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 9

def rawBody785_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody785_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody785_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody785_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody785_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_179 : StackLang.HolProg 64 :=
.seq rawBody785_177 rawBody785_178

def rawBody785_180 : StackLang.HolProg 64 :=
.seq rawBody785_176 rawBody785_179

def rawBody785_181 : StackLang.HolProg 64 :=
.seq rawBody785_175 rawBody785_180

def rawBody785_182 : StackLang.HolProg 64 :=
.seq rawBody785_174 rawBody785_181

def rawBody785_183 : StackLang.HolProg 64 :=
.seq rawBody785_173 rawBody785_182

def rawBody785_184 : StackLang.HolProg 64 :=
.seq rawBody785_172 rawBody785_183

def rawBody785_185 : StackLang.HolProg 64 :=
.seq rawBody785_171 rawBody785_184

def rawBody785_186 : StackLang.HolProg 64 :=
.seq rawBody785_170 rawBody785_185

def rawBody785_187 : StackLang.HolProg 64 :=
.seq rawBody785_169 rawBody785_186

def rawBody785_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody785_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody785_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody785_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody785_195 : StackLang.HolProg 64 :=
.seq rawBody785_193 rawBody785_194

def rawBody785_196 : StackLang.HolProg 64 :=
.seq rawBody785_192 rawBody785_195

def rawBody785_197 : StackLang.HolProg 64 :=
.seq rawBody785_191 rawBody785_196

def rawBody785_198 : StackLang.HolProg 64 :=
.seq rawBody785_190 rawBody785_197

def rawBody785_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody785_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody785_201 : StackLang.HolProg 64 :=
.seq rawBody785_199 rawBody785_200

def rawBody785_202 : StackLang.HolProg 64 :=
.call (some (rawBody785_198, 0, 785, 8)) (Sum.inl 78) (some (rawBody785_201, 785, 9))

def rawBody785_203 : StackLang.HolProg 64 :=
.seq rawBody785_189 rawBody785_202

def rawBody785_204 : StackLang.HolProg 64 :=
.seq rawBody785_188 rawBody785_203

def rawBody785_205 : StackLang.HolProg 64 :=
.seq rawBody785_187 rawBody785_204

def rawBody785_206 : StackLang.HolProg 64 :=
.seq rawBody785_168 rawBody785_205

def rawBody785_207 : StackLang.HolProg 64 :=
.seq rawBody785_165 rawBody785_206

def rawBody785_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody785_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3629#64)

def rawBody785_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_213 : StackLang.HolProg 64 :=
.seq rawBody785_211 rawBody785_212

def rawBody785_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody785_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody785_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 11

def rawBody785_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody785_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody785_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody785_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody785_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_224 : StackLang.HolProg 64 :=
.seq rawBody785_222 rawBody785_223

def rawBody785_225 : StackLang.HolProg 64 :=
.seq rawBody785_221 rawBody785_224

def rawBody785_226 : StackLang.HolProg 64 :=
.seq rawBody785_220 rawBody785_225

def rawBody785_227 : StackLang.HolProg 64 :=
.seq rawBody785_219 rawBody785_226

def rawBody785_228 : StackLang.HolProg 64 :=
.seq rawBody785_218 rawBody785_227

def rawBody785_229 : StackLang.HolProg 64 :=
.seq rawBody785_217 rawBody785_228

def rawBody785_230 : StackLang.HolProg 64 :=
.seq rawBody785_216 rawBody785_229

def rawBody785_231 : StackLang.HolProg 64 :=
.seq rawBody785_215 rawBody785_230

def rawBody785_232 : StackLang.HolProg 64 :=
.seq rawBody785_214 rawBody785_231

def rawBody785_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody785_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody785_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody785_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody785_240 : StackLang.HolProg 64 :=
.seq rawBody785_238 rawBody785_239

def rawBody785_241 : StackLang.HolProg 64 :=
.seq rawBody785_237 rawBody785_240

def rawBody785_242 : StackLang.HolProg 64 :=
.seq rawBody785_236 rawBody785_241

def rawBody785_243 : StackLang.HolProg 64 :=
.seq rawBody785_235 rawBody785_242

def rawBody785_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody785_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody785_246 : StackLang.HolProg 64 :=
.seq rawBody785_244 rawBody785_245

def rawBody785_247 : StackLang.HolProg 64 :=
.call (some (rawBody785_243, 0, 785, 10)) (Sum.inl 70) (some (rawBody785_246, 785, 11))

def rawBody785_248 : StackLang.HolProg 64 :=
.seq rawBody785_234 rawBody785_247

def rawBody785_249 : StackLang.HolProg 64 :=
.seq rawBody785_233 rawBody785_248

def rawBody785_250 : StackLang.HolProg 64 :=
.seq rawBody785_232 rawBody785_249

def rawBody785_251 : StackLang.HolProg 64 :=
.seq rawBody785_213 rawBody785_250

def rawBody785_252 : StackLang.HolProg 64 :=
.seq rawBody785_210 rawBody785_251

def rawBody785_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody785_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody785_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody785_258 : StackLang.HolProg 64 :=
.seq rawBody785_256 rawBody785_257

def rawBody785_259 : StackLang.HolProg 64 :=
.seq rawBody785_255 rawBody785_258

def rawBody785_260 : StackLang.HolProg 64 :=
.seq rawBody785_254 rawBody785_259

def rawBody785_261 : StackLang.HolProg 64 :=
.seq rawBody785_253 rawBody785_260

def rawBody785_262 : StackLang.HolProg 64 :=
.seq rawBody785_252 rawBody785_261

def rawBody785_263 : StackLang.HolProg 64 :=
.seq rawBody785_209 rawBody785_262

def rawBody785_264 : StackLang.HolProg 64 :=
.seq rawBody785_208 rawBody785_263

def rawBody785_265 : StackLang.HolProg 64 :=
.seq rawBody785_207 rawBody785_264

def rawBody785_266 : StackLang.HolProg 64 :=
.seq rawBody785_164 rawBody785_265

def rawBody785_267 : StackLang.HolProg 64 :=
.seq rawBody785_157 rawBody785_266

def rawBody785_268 : StackLang.HolProg 64 :=
.seq rawBody785_156 rawBody785_267

def rawBody785_269 : StackLang.HolProg 64 :=
.seq rawBody785_155 rawBody785_268

def rawBody785_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_271 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody785_269 rawBody785_270

def rawBody785_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody785_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody785_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody785_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody785_278 : StackLang.HolProg 64 :=
.seq rawBody785_276 rawBody785_277

def rawBody785_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3630#64)

def rawBody785_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_282 : StackLang.HolProg 64 :=
.seq rawBody785_280 rawBody785_281

def rawBody785_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody785_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody785_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 13

def rawBody785_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody785_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody785_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody785_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody785_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_293 : StackLang.HolProg 64 :=
.seq rawBody785_291 rawBody785_292

def rawBody785_294 : StackLang.HolProg 64 :=
.seq rawBody785_290 rawBody785_293

def rawBody785_295 : StackLang.HolProg 64 :=
.seq rawBody785_289 rawBody785_294

def rawBody785_296 : StackLang.HolProg 64 :=
.seq rawBody785_288 rawBody785_295

def rawBody785_297 : StackLang.HolProg 64 :=
.seq rawBody785_287 rawBody785_296

def rawBody785_298 : StackLang.HolProg 64 :=
.seq rawBody785_286 rawBody785_297

def rawBody785_299 : StackLang.HolProg 64 :=
.seq rawBody785_285 rawBody785_298

def rawBody785_300 : StackLang.HolProg 64 :=
.seq rawBody785_284 rawBody785_299

def rawBody785_301 : StackLang.HolProg 64 :=
.seq rawBody785_283 rawBody785_300

def rawBody785_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody785_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody785_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody785_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody785_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody785_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody785_311 : StackLang.HolProg 64 :=
.seq rawBody785_309 rawBody785_310

def rawBody785_312 : StackLang.HolProg 64 :=
.seq rawBody785_308 rawBody785_311

def rawBody785_313 : StackLang.HolProg 64 :=
.seq rawBody785_307 rawBody785_312

def rawBody785_314 : StackLang.HolProg 64 :=
.seq rawBody785_306 rawBody785_313

def rawBody785_315 : StackLang.HolProg 64 :=
.seq rawBody785_305 rawBody785_314

def rawBody785_316 : StackLang.HolProg 64 :=
.seq rawBody785_304 rawBody785_315

def rawBody785_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody785_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody785_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody785_320 : StackLang.HolProg 64 :=
.seq rawBody785_318 rawBody785_319

def rawBody785_321 : StackLang.HolProg 64 :=
.seq rawBody785_317 rawBody785_320

def rawBody785_322 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody785_323 : StackLang.HolProg 64 :=
.seq rawBody785_321 rawBody785_322

def rawBody785_324 : StackLang.HolProg 64 :=
.call (some (rawBody785_316, 0, 785, 12)) (Sum.inl 743) (some (rawBody785_323, 785, 13))

def rawBody785_325 : StackLang.HolProg 64 :=
.seq rawBody785_303 rawBody785_324

def rawBody785_326 : StackLang.HolProg 64 :=
.seq rawBody785_302 rawBody785_325

def rawBody785_327 : StackLang.HolProg 64 :=
.seq rawBody785_301 rawBody785_326

def rawBody785_328 : StackLang.HolProg 64 :=
.seq rawBody785_282 rawBody785_327

def rawBody785_329 : StackLang.HolProg 64 :=
.seq rawBody785_279 rawBody785_328

def rawBody785_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody785_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody785_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody785_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody785_335 : StackLang.HolProg 64 :=
.seq rawBody785_333 rawBody785_334

def rawBody785_336 : StackLang.HolProg 64 :=
.seq rawBody785_332 rawBody785_335

def rawBody785_337 : StackLang.HolProg 64 :=
.seq rawBody785_331 rawBody785_336

def rawBody785_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3631#64)

def rawBody785_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_341 : StackLang.HolProg 64 :=
.seq rawBody785_339 rawBody785_340

def rawBody785_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody785_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody785_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 15

def rawBody785_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody785_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody785_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody785_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody785_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_352 : StackLang.HolProg 64 :=
.seq rawBody785_350 rawBody785_351

def rawBody785_353 : StackLang.HolProg 64 :=
.seq rawBody785_349 rawBody785_352

def rawBody785_354 : StackLang.HolProg 64 :=
.seq rawBody785_348 rawBody785_353

def rawBody785_355 : StackLang.HolProg 64 :=
.seq rawBody785_347 rawBody785_354

def rawBody785_356 : StackLang.HolProg 64 :=
.seq rawBody785_346 rawBody785_355

def rawBody785_357 : StackLang.HolProg 64 :=
.seq rawBody785_345 rawBody785_356

def rawBody785_358 : StackLang.HolProg 64 :=
.seq rawBody785_344 rawBody785_357

def rawBody785_359 : StackLang.HolProg 64 :=
.seq rawBody785_343 rawBody785_358

def rawBody785_360 : StackLang.HolProg 64 :=
.seq rawBody785_342 rawBody785_359

def rawBody785_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody785_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody785_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody785_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody785_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody785_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody785_370 : StackLang.HolProg 64 :=
.seq rawBody785_368 rawBody785_369

def rawBody785_371 : StackLang.HolProg 64 :=
.seq rawBody785_367 rawBody785_370

def rawBody785_372 : StackLang.HolProg 64 :=
.seq rawBody785_366 rawBody785_371

def rawBody785_373 : StackLang.HolProg 64 :=
.seq rawBody785_365 rawBody785_372

def rawBody785_374 : StackLang.HolProg 64 :=
.seq rawBody785_364 rawBody785_373

def rawBody785_375 : StackLang.HolProg 64 :=
.seq rawBody785_363 rawBody785_374

def rawBody785_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody785_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody785_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody785_379 : StackLang.HolProg 64 :=
.seq rawBody785_377 rawBody785_378

def rawBody785_380 : StackLang.HolProg 64 :=
.seq rawBody785_376 rawBody785_379

def rawBody785_381 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody785_382 : StackLang.HolProg 64 :=
.seq rawBody785_380 rawBody785_381

def rawBody785_383 : StackLang.HolProg 64 :=
.call (some (rawBody785_375, 0, 785, 14)) (Sum.inl 739) (some (rawBody785_382, 785, 15))

def rawBody785_384 : StackLang.HolProg 64 :=
.seq rawBody785_362 rawBody785_383

def rawBody785_385 : StackLang.HolProg 64 :=
.seq rawBody785_361 rawBody785_384

def rawBody785_386 : StackLang.HolProg 64 :=
.seq rawBody785_360 rawBody785_385

def rawBody785_387 : StackLang.HolProg 64 :=
.seq rawBody785_341 rawBody785_386

def rawBody785_388 : StackLang.HolProg 64 :=
.seq rawBody785_338 rawBody785_387

def rawBody785_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody785_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody785_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3632#64)

def rawBody785_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_398 : StackLang.HolProg 64 :=
.seq rawBody785_396 rawBody785_397

def rawBody785_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody785_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody785_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 17

def rawBody785_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody785_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody785_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody785_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody785_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_409 : StackLang.HolProg 64 :=
.seq rawBody785_407 rawBody785_408

def rawBody785_410 : StackLang.HolProg 64 :=
.seq rawBody785_406 rawBody785_409

def rawBody785_411 : StackLang.HolProg 64 :=
.seq rawBody785_405 rawBody785_410

def rawBody785_412 : StackLang.HolProg 64 :=
.seq rawBody785_404 rawBody785_411

def rawBody785_413 : StackLang.HolProg 64 :=
.seq rawBody785_403 rawBody785_412

def rawBody785_414 : StackLang.HolProg 64 :=
.seq rawBody785_402 rawBody785_413

def rawBody785_415 : StackLang.HolProg 64 :=
.seq rawBody785_401 rawBody785_414

def rawBody785_416 : StackLang.HolProg 64 :=
.seq rawBody785_400 rawBody785_415

def rawBody785_417 : StackLang.HolProg 64 :=
.seq rawBody785_399 rawBody785_416

def rawBody785_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody785_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody785_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody785_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody785_425 : StackLang.HolProg 64 :=
.seq rawBody785_423 rawBody785_424

def rawBody785_426 : StackLang.HolProg 64 :=
.seq rawBody785_422 rawBody785_425

def rawBody785_427 : StackLang.HolProg 64 :=
.seq rawBody785_421 rawBody785_426

def rawBody785_428 : StackLang.HolProg 64 :=
.seq rawBody785_420 rawBody785_427

def rawBody785_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody785_430 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody785_431 : StackLang.HolProg 64 :=
.seq rawBody785_429 rawBody785_430

def rawBody785_432 : StackLang.HolProg 64 :=
.call (some (rawBody785_428, 0, 785, 16)) (Sum.inl 739) (some (rawBody785_431, 785, 17))

def rawBody785_433 : StackLang.HolProg 64 :=
.seq rawBody785_419 rawBody785_432

def rawBody785_434 : StackLang.HolProg 64 :=
.seq rawBody785_418 rawBody785_433

def rawBody785_435 : StackLang.HolProg 64 :=
.seq rawBody785_417 rawBody785_434

def rawBody785_436 : StackLang.HolProg 64 :=
.seq rawBody785_398 rawBody785_435

def rawBody785_437 : StackLang.HolProg 64 :=
.seq rawBody785_395 rawBody785_436

def rawBody785_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody785_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3633#64)

def rawBody785_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_443 : StackLang.HolProg 64 :=
.seq rawBody785_441 rawBody785_442

def rawBody785_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody785_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody785_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody785_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 19

def rawBody785_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody785_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody785_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody785_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody785_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_454 : StackLang.HolProg 64 :=
.seq rawBody785_452 rawBody785_453

def rawBody785_455 : StackLang.HolProg 64 :=
.seq rawBody785_451 rawBody785_454

def rawBody785_456 : StackLang.HolProg 64 :=
.seq rawBody785_450 rawBody785_455

def rawBody785_457 : StackLang.HolProg 64 :=
.seq rawBody785_449 rawBody785_456

def rawBody785_458 : StackLang.HolProg 64 :=
.seq rawBody785_448 rawBody785_457

def rawBody785_459 : StackLang.HolProg 64 :=
.seq rawBody785_447 rawBody785_458

def rawBody785_460 : StackLang.HolProg 64 :=
.seq rawBody785_446 rawBody785_459

def rawBody785_461 : StackLang.HolProg 64 :=
.seq rawBody785_445 rawBody785_460

def rawBody785_462 : StackLang.HolProg 64 :=
.seq rawBody785_444 rawBody785_461

def rawBody785_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody785_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody785_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody785_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody785_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody785_470 : StackLang.HolProg 64 :=
.seq rawBody785_468 rawBody785_469

def rawBody785_471 : StackLang.HolProg 64 :=
.seq rawBody785_467 rawBody785_470

def rawBody785_472 : StackLang.HolProg 64 :=
.seq rawBody785_466 rawBody785_471

def rawBody785_473 : StackLang.HolProg 64 :=
.seq rawBody785_465 rawBody785_472

def rawBody785_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody785_475 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody785_476 : StackLang.HolProg 64 :=
.seq rawBody785_474 rawBody785_475

def rawBody785_477 : StackLang.HolProg 64 :=
.call (some (rawBody785_473, 0, 785, 18)) (Sum.inl 70) (some (rawBody785_476, 785, 19))

def rawBody785_478 : StackLang.HolProg 64 :=
.seq rawBody785_464 rawBody785_477

def rawBody785_479 : StackLang.HolProg 64 :=
.seq rawBody785_463 rawBody785_478

def rawBody785_480 : StackLang.HolProg 64 :=
.seq rawBody785_462 rawBody785_479

def rawBody785_481 : StackLang.HolProg 64 :=
.seq rawBody785_443 rawBody785_480

def rawBody785_482 : StackLang.HolProg 64 :=
.seq rawBody785_440 rawBody785_481

def rawBody785_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody785_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody785_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody785_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody785_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody785_488 : StackLang.HolProg 64 :=
.seq rawBody785_486 rawBody785_487

def rawBody785_489 : StackLang.HolProg 64 :=
.seq rawBody785_485 rawBody785_488

def rawBody785_490 : StackLang.HolProg 64 :=
.seq rawBody785_484 rawBody785_489

def rawBody785_491 : StackLang.HolProg 64 :=
.seq rawBody785_483 rawBody785_490

def rawBody785_492 : StackLang.HolProg 64 :=
.seq rawBody785_482 rawBody785_491

def rawBody785_493 : StackLang.HolProg 64 :=
.seq rawBody785_439 rawBody785_492

def rawBody785_494 : StackLang.HolProg 64 :=
.seq rawBody785_438 rawBody785_493

def rawBody785_495 : StackLang.HolProg 64 :=
.seq rawBody785_437 rawBody785_494

def rawBody785_496 : StackLang.HolProg 64 :=
.seq rawBody785_394 rawBody785_495

def rawBody785_497 : StackLang.HolProg 64 :=
.seq rawBody785_393 rawBody785_496

def rawBody785_498 : StackLang.HolProg 64 :=
.seq rawBody785_392 rawBody785_497

def rawBody785_499 : StackLang.HolProg 64 :=
.seq rawBody785_391 rawBody785_498

def rawBody785_500 : StackLang.HolProg 64 :=
.seq rawBody785_390 rawBody785_499

def rawBody785_501 : StackLang.HolProg 64 :=
.seq rawBody785_389 rawBody785_500

def rawBody785_502 : StackLang.HolProg 64 :=
.seq rawBody785_388 rawBody785_501

def rawBody785_503 : StackLang.HolProg 64 :=
.seq rawBody785_337 rawBody785_502

def rawBody785_504 : StackLang.HolProg 64 :=
.seq rawBody785_330 rawBody785_503

def rawBody785_505 : StackLang.HolProg 64 :=
.seq rawBody785_329 rawBody785_504

def rawBody785_506 : StackLang.HolProg 64 :=
.seq rawBody785_278 rawBody785_505

def rawBody785_507 : StackLang.HolProg 64 :=
.seq rawBody785_275 rawBody785_506

def rawBody785_508 : StackLang.HolProg 64 :=
.seq rawBody785_274 rawBody785_507

def rawBody785_509 : StackLang.HolProg 64 :=
.seq rawBody785_273 rawBody785_508

def rawBody785_510 : StackLang.HolProg 64 :=
.seq rawBody785_272 rawBody785_509

def rawBody785_511 : StackLang.HolProg 64 :=
.seq rawBody785_271 rawBody785_510

def rawBody785_512 : StackLang.HolProg 64 :=
.seq rawBody785_154 rawBody785_511

def rawBody785_513 : StackLang.HolProg 64 :=
.seq rawBody785_153 rawBody785_512

def rawBody785_514 : StackLang.HolProg 64 :=
.seq rawBody785_152 rawBody785_513

def rawBody785_515 : StackLang.HolProg 64 :=
.seq rawBody785_151 rawBody785_514

def rawBody785_516 : StackLang.HolProg 64 :=
.seq rawBody785_102 rawBody785_515

def rawBody785_517 : StackLang.HolProg 64 :=
.seq rawBody785_97 rawBody785_516

def rawBody785_518 : StackLang.HolProg 64 :=
.seq rawBody785_96 rawBody785_517

def rawBody785_519 : StackLang.HolProg 64 :=
.seq rawBody785_51 rawBody785_518

def rawBody785_520 : StackLang.HolProg 64 :=
.seq rawBody785_50 rawBody785_519

def rawBody785_521 : StackLang.HolProg 64 :=
.seq rawBody785_49 rawBody785_520

def rawBody785_522 : StackLang.HolProg 64 :=
.seq rawBody785_48 rawBody785_521

def rawBody785_523 : StackLang.HolProg 64 :=
.seq rawBody785_5 rawBody785_522

def rawBody785_524 : StackLang.HolProg 64 :=
.seq rawBody785_0 rawBody785_523

def raw785 : StackLang.HolProg 64 := rawBody785_524
theorem raw785_eq : StackRawCall.compTop RawInfo.rawInfo (function785 (.list [])).1 = raw785 := by
  kernel_rfl
#print axioms raw785_eq
end InitECandidate.Proofs.BackendStages
