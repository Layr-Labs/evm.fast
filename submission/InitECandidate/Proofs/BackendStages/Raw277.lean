import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function277
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody277_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody277_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody277_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody277_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody277_4 : StackLang.HolProg 64 :=
.seq rawBody277_2 rawBody277_3

def rawBody277_5 : StackLang.HolProg 64 :=
.seq rawBody277_1 rawBody277_4

def rawBody277_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 722#64)

def rawBody277_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody277_9 : StackLang.HolProg 64 :=
.seq rawBody277_7 rawBody277_8

def rawBody277_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody277_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody277_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody277_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 3

def rawBody277_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody277_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody277_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody277_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody277_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody277_20 : StackLang.HolProg 64 :=
.seq rawBody277_18 rawBody277_19

def rawBody277_21 : StackLang.HolProg 64 :=
.seq rawBody277_17 rawBody277_20

def rawBody277_22 : StackLang.HolProg 64 :=
.seq rawBody277_16 rawBody277_21

def rawBody277_23 : StackLang.HolProg 64 :=
.seq rawBody277_15 rawBody277_22

def rawBody277_24 : StackLang.HolProg 64 :=
.seq rawBody277_14 rawBody277_23

def rawBody277_25 : StackLang.HolProg 64 :=
.seq rawBody277_13 rawBody277_24

def rawBody277_26 : StackLang.HolProg 64 :=
.seq rawBody277_12 rawBody277_25

def rawBody277_27 : StackLang.HolProg 64 :=
.seq rawBody277_11 rawBody277_26

def rawBody277_28 : StackLang.HolProg 64 :=
.seq rawBody277_10 rawBody277_27

def rawBody277_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody277_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody277_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody277_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody277_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody277_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody277_37 : StackLang.HolProg 64 :=
.seq rawBody277_35 rawBody277_36

def rawBody277_38 : StackLang.HolProg 64 :=
.seq rawBody277_34 rawBody277_37

def rawBody277_39 : StackLang.HolProg 64 :=
.seq rawBody277_33 rawBody277_38

def rawBody277_40 : StackLang.HolProg 64 :=
.seq rawBody277_32 rawBody277_39

def rawBody277_41 : StackLang.HolProg 64 :=
.seq rawBody277_31 rawBody277_40

def rawBody277_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody277_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody277_44 : StackLang.HolProg 64 :=
.seq rawBody277_42 rawBody277_43

def rawBody277_45 : StackLang.HolProg 64 :=
.call (some (rawBody277_41, 0, 277, 2)) (Sum.inl 69) (some (rawBody277_44, 277, 3))

def rawBody277_46 : StackLang.HolProg 64 :=
.seq rawBody277_30 rawBody277_45

def rawBody277_47 : StackLang.HolProg 64 :=
.seq rawBody277_29 rawBody277_46

def rawBody277_48 : StackLang.HolProg 64 :=
.seq rawBody277_28 rawBody277_47

def rawBody277_49 : StackLang.HolProg 64 :=
.seq rawBody277_9 rawBody277_48

def rawBody277_50 : StackLang.HolProg 64 :=
.seq rawBody277_6 rawBody277_49

def rawBody277_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody277_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody277_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody277_54 : StackLang.HolProg 64 :=
.seq rawBody277_52 rawBody277_53

def rawBody277_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 723#64)

def rawBody277_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody277_58 : StackLang.HolProg 64 :=
.seq rawBody277_56 rawBody277_57

def rawBody277_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody277_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody277_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody277_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 5

def rawBody277_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody277_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody277_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody277_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody277_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody277_69 : StackLang.HolProg 64 :=
.seq rawBody277_67 rawBody277_68

def rawBody277_70 : StackLang.HolProg 64 :=
.seq rawBody277_66 rawBody277_69

def rawBody277_71 : StackLang.HolProg 64 :=
.seq rawBody277_65 rawBody277_70

def rawBody277_72 : StackLang.HolProg 64 :=
.seq rawBody277_64 rawBody277_71

def rawBody277_73 : StackLang.HolProg 64 :=
.seq rawBody277_63 rawBody277_72

def rawBody277_74 : StackLang.HolProg 64 :=
.seq rawBody277_62 rawBody277_73

def rawBody277_75 : StackLang.HolProg 64 :=
.seq rawBody277_61 rawBody277_74

def rawBody277_76 : StackLang.HolProg 64 :=
.seq rawBody277_60 rawBody277_75

def rawBody277_77 : StackLang.HolProg 64 :=
.seq rawBody277_59 rawBody277_76

def rawBody277_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody277_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody277_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody277_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody277_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody277_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody277_86 : StackLang.HolProg 64 :=
.seq rawBody277_84 rawBody277_85

def rawBody277_87 : StackLang.HolProg 64 :=
.seq rawBody277_83 rawBody277_86

def rawBody277_88 : StackLang.HolProg 64 :=
.seq rawBody277_82 rawBody277_87

def rawBody277_89 : StackLang.HolProg 64 :=
.seq rawBody277_81 rawBody277_88

def rawBody277_90 : StackLang.HolProg 64 :=
.seq rawBody277_80 rawBody277_89

def rawBody277_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody277_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody277_93 : StackLang.HolProg 64 :=
.seq rawBody277_91 rawBody277_92

def rawBody277_94 : StackLang.HolProg 64 :=
.call (some (rawBody277_90, 0, 277, 4)) (Sum.inl 276) (some (rawBody277_93, 277, 5))

def rawBody277_95 : StackLang.HolProg 64 :=
.seq rawBody277_79 rawBody277_94

def rawBody277_96 : StackLang.HolProg 64 :=
.seq rawBody277_78 rawBody277_95

def rawBody277_97 : StackLang.HolProg 64 :=
.seq rawBody277_77 rawBody277_96

def rawBody277_98 : StackLang.HolProg 64 :=
.seq rawBody277_58 rawBody277_97

def rawBody277_99 : StackLang.HolProg 64 :=
.seq rawBody277_55 rawBody277_98

def rawBody277_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody277_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody277_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 724#64)

def rawBody277_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody277_105 : StackLang.HolProg 64 :=
.seq rawBody277_103 rawBody277_104

def rawBody277_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody277_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody277_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody277_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 7

def rawBody277_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody277_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody277_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody277_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody277_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody277_116 : StackLang.HolProg 64 :=
.seq rawBody277_114 rawBody277_115

def rawBody277_117 : StackLang.HolProg 64 :=
.seq rawBody277_113 rawBody277_116

def rawBody277_118 : StackLang.HolProg 64 :=
.seq rawBody277_112 rawBody277_117

def rawBody277_119 : StackLang.HolProg 64 :=
.seq rawBody277_111 rawBody277_118

def rawBody277_120 : StackLang.HolProg 64 :=
.seq rawBody277_110 rawBody277_119

def rawBody277_121 : StackLang.HolProg 64 :=
.seq rawBody277_109 rawBody277_120

def rawBody277_122 : StackLang.HolProg 64 :=
.seq rawBody277_108 rawBody277_121

def rawBody277_123 : StackLang.HolProg 64 :=
.seq rawBody277_107 rawBody277_122

def rawBody277_124 : StackLang.HolProg 64 :=
.seq rawBody277_106 rawBody277_123

def rawBody277_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody277_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody277_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody277_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody277_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody277_132 : StackLang.HolProg 64 :=
.seq rawBody277_130 rawBody277_131

def rawBody277_133 : StackLang.HolProg 64 :=
.seq rawBody277_129 rawBody277_132

def rawBody277_134 : StackLang.HolProg 64 :=
.seq rawBody277_128 rawBody277_133

def rawBody277_135 : StackLang.HolProg 64 :=
.seq rawBody277_127 rawBody277_134

def rawBody277_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody277_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody277_138 : StackLang.HolProg 64 :=
.seq rawBody277_136 rawBody277_137

def rawBody277_139 : StackLang.HolProg 64 :=
.call (some (rawBody277_135, 0, 277, 6)) (Sum.inl 158) (some (rawBody277_138, 277, 7))

def rawBody277_140 : StackLang.HolProg 64 :=
.seq rawBody277_126 rawBody277_139

def rawBody277_141 : StackLang.HolProg 64 :=
.seq rawBody277_125 rawBody277_140

def rawBody277_142 : StackLang.HolProg 64 :=
.seq rawBody277_124 rawBody277_141

def rawBody277_143 : StackLang.HolProg 64 :=
.seq rawBody277_105 rawBody277_142

def rawBody277_144 : StackLang.HolProg 64 :=
.seq rawBody277_102 rawBody277_143

def rawBody277_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody277_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody277_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 725#64)

def rawBody277_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody277_150 : StackLang.HolProg 64 :=
.seq rawBody277_148 rawBody277_149

def rawBody277_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody277_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody277_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody277_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 9

def rawBody277_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody277_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody277_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody277_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody277_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody277_161 : StackLang.HolProg 64 :=
.seq rawBody277_159 rawBody277_160

def rawBody277_162 : StackLang.HolProg 64 :=
.seq rawBody277_158 rawBody277_161

def rawBody277_163 : StackLang.HolProg 64 :=
.seq rawBody277_157 rawBody277_162

def rawBody277_164 : StackLang.HolProg 64 :=
.seq rawBody277_156 rawBody277_163

def rawBody277_165 : StackLang.HolProg 64 :=
.seq rawBody277_155 rawBody277_164

def rawBody277_166 : StackLang.HolProg 64 :=
.seq rawBody277_154 rawBody277_165

def rawBody277_167 : StackLang.HolProg 64 :=
.seq rawBody277_153 rawBody277_166

def rawBody277_168 : StackLang.HolProg 64 :=
.seq rawBody277_152 rawBody277_167

def rawBody277_169 : StackLang.HolProg 64 :=
.seq rawBody277_151 rawBody277_168

def rawBody277_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody277_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody277_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody277_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody277_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody277_177 : StackLang.HolProg 64 :=
.seq rawBody277_175 rawBody277_176

def rawBody277_178 : StackLang.HolProg 64 :=
.seq rawBody277_174 rawBody277_177

def rawBody277_179 : StackLang.HolProg 64 :=
.seq rawBody277_173 rawBody277_178

def rawBody277_180 : StackLang.HolProg 64 :=
.seq rawBody277_172 rawBody277_179

def rawBody277_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody277_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody277_183 : StackLang.HolProg 64 :=
.seq rawBody277_181 rawBody277_182

def rawBody277_184 : StackLang.HolProg 64 :=
.call (some (rawBody277_180, 0, 277, 8)) (Sum.inl 70) (some (rawBody277_183, 277, 9))

def rawBody277_185 : StackLang.HolProg 64 :=
.seq rawBody277_171 rawBody277_184

def rawBody277_186 : StackLang.HolProg 64 :=
.seq rawBody277_170 rawBody277_185

def rawBody277_187 : StackLang.HolProg 64 :=
.seq rawBody277_169 rawBody277_186

def rawBody277_188 : StackLang.HolProg 64 :=
.seq rawBody277_150 rawBody277_187

def rawBody277_189 : StackLang.HolProg 64 :=
.seq rawBody277_147 rawBody277_188

def rawBody277_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody277_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody277_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody277_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody277_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody277_195 : StackLang.HolProg 64 :=
.seq rawBody277_193 rawBody277_194

def rawBody277_196 : StackLang.HolProg 64 :=
.seq rawBody277_192 rawBody277_195

def rawBody277_197 : StackLang.HolProg 64 :=
.seq rawBody277_191 rawBody277_196

def rawBody277_198 : StackLang.HolProg 64 :=
.seq rawBody277_190 rawBody277_197

def rawBody277_199 : StackLang.HolProg 64 :=
.seq rawBody277_189 rawBody277_198

def rawBody277_200 : StackLang.HolProg 64 :=
.seq rawBody277_146 rawBody277_199

def rawBody277_201 : StackLang.HolProg 64 :=
.seq rawBody277_145 rawBody277_200

def rawBody277_202 : StackLang.HolProg 64 :=
.seq rawBody277_144 rawBody277_201

def rawBody277_203 : StackLang.HolProg 64 :=
.seq rawBody277_101 rawBody277_202

def rawBody277_204 : StackLang.HolProg 64 :=
.seq rawBody277_100 rawBody277_203

def rawBody277_205 : StackLang.HolProg 64 :=
.seq rawBody277_99 rawBody277_204

def rawBody277_206 : StackLang.HolProg 64 :=
.seq rawBody277_54 rawBody277_205

def rawBody277_207 : StackLang.HolProg 64 :=
.seq rawBody277_51 rawBody277_206

def rawBody277_208 : StackLang.HolProg 64 :=
.seq rawBody277_50 rawBody277_207

def rawBody277_209 : StackLang.HolProg 64 :=
.seq rawBody277_5 rawBody277_208

def rawBody277_210 : StackLang.HolProg 64 :=
.seq rawBody277_0 rawBody277_209

def raw277 : StackLang.HolProg 64 := rawBody277_210
theorem raw277_eq : StackRawCall.compTop RawInfo.rawInfo (function277 (.list [])).1 = raw277 := by
  kernel_rfl
#print axioms raw277_eq
end InitECandidate.Proofs.BackendStages
