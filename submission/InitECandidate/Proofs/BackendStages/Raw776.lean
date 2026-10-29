import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function776
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody776_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody776_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody776_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody776_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody776_4 : StackLang.HolProg 64 :=
.seq rawBody776_2 rawBody776_3

def rawBody776_5 : StackLang.HolProg 64 :=
.seq rawBody776_1 rawBody776_4

def rawBody776_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3532#64)

def rawBody776_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_9 : StackLang.HolProg 64 :=
.seq rawBody776_7 rawBody776_8

def rawBody776_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody776_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody776_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 3

def rawBody776_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody776_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody776_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody776_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody776_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_20 : StackLang.HolProg 64 :=
.seq rawBody776_18 rawBody776_19

def rawBody776_21 : StackLang.HolProg 64 :=
.seq rawBody776_17 rawBody776_20

def rawBody776_22 : StackLang.HolProg 64 :=
.seq rawBody776_16 rawBody776_21

def rawBody776_23 : StackLang.HolProg 64 :=
.seq rawBody776_15 rawBody776_22

def rawBody776_24 : StackLang.HolProg 64 :=
.seq rawBody776_14 rawBody776_23

def rawBody776_25 : StackLang.HolProg 64 :=
.seq rawBody776_13 rawBody776_24

def rawBody776_26 : StackLang.HolProg 64 :=
.seq rawBody776_12 rawBody776_25

def rawBody776_27 : StackLang.HolProg 64 :=
.seq rawBody776_11 rawBody776_26

def rawBody776_28 : StackLang.HolProg 64 :=
.seq rawBody776_10 rawBody776_27

def rawBody776_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody776_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody776_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody776_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody776_36 : StackLang.HolProg 64 :=
.seq rawBody776_34 rawBody776_35

def rawBody776_37 : StackLang.HolProg 64 :=
.seq rawBody776_33 rawBody776_36

def rawBody776_38 : StackLang.HolProg 64 :=
.seq rawBody776_32 rawBody776_37

def rawBody776_39 : StackLang.HolProg 64 :=
.seq rawBody776_31 rawBody776_38

def rawBody776_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody776_42 : StackLang.HolProg 64 :=
.seq rawBody776_40 rawBody776_41

def rawBody776_43 : StackLang.HolProg 64 :=
.call (some (rawBody776_39, 0, 776, 2)) (Sum.inl 69) (some (rawBody776_42, 776, 3))

def rawBody776_44 : StackLang.HolProg 64 :=
.seq rawBody776_30 rawBody776_43

def rawBody776_45 : StackLang.HolProg 64 :=
.seq rawBody776_29 rawBody776_44

def rawBody776_46 : StackLang.HolProg 64 :=
.seq rawBody776_28 rawBody776_45

def rawBody776_47 : StackLang.HolProg 64 :=
.seq rawBody776_9 rawBody776_46

def rawBody776_48 : StackLang.HolProg 64 :=
.seq rawBody776_6 rawBody776_47

def rawBody776_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody776_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def rawBody776_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody776_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3533#64)

def rawBody776_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_55 : StackLang.HolProg 64 :=
.seq rawBody776_53 rawBody776_54

def rawBody776_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody776_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody776_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 5

def rawBody776_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody776_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody776_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody776_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody776_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_66 : StackLang.HolProg 64 :=
.seq rawBody776_64 rawBody776_65

def rawBody776_67 : StackLang.HolProg 64 :=
.seq rawBody776_63 rawBody776_66

def rawBody776_68 : StackLang.HolProg 64 :=
.seq rawBody776_62 rawBody776_67

def rawBody776_69 : StackLang.HolProg 64 :=
.seq rawBody776_61 rawBody776_68

def rawBody776_70 : StackLang.HolProg 64 :=
.seq rawBody776_60 rawBody776_69

def rawBody776_71 : StackLang.HolProg 64 :=
.seq rawBody776_59 rawBody776_70

def rawBody776_72 : StackLang.HolProg 64 :=
.seq rawBody776_58 rawBody776_71

def rawBody776_73 : StackLang.HolProg 64 :=
.seq rawBody776_57 rawBody776_72

def rawBody776_74 : StackLang.HolProg 64 :=
.seq rawBody776_56 rawBody776_73

def rawBody776_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody776_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody776_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody776_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody776_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody776_83 : StackLang.HolProg 64 :=
.seq rawBody776_81 rawBody776_82

def rawBody776_84 : StackLang.HolProg 64 :=
.seq rawBody776_80 rawBody776_83

def rawBody776_85 : StackLang.HolProg 64 :=
.seq rawBody776_79 rawBody776_84

def rawBody776_86 : StackLang.HolProg 64 :=
.seq rawBody776_78 rawBody776_85

def rawBody776_87 : StackLang.HolProg 64 :=
.seq rawBody776_77 rawBody776_86

def rawBody776_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody776_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody776_90 : StackLang.HolProg 64 :=
.seq rawBody776_88 rawBody776_89

def rawBody776_91 : StackLang.HolProg 64 :=
.call (some (rawBody776_87, 0, 776, 4)) (Sum.inl 68) (some (rawBody776_90, 776, 5))

def rawBody776_92 : StackLang.HolProg 64 :=
.seq rawBody776_76 rawBody776_91

def rawBody776_93 : StackLang.HolProg 64 :=
.seq rawBody776_75 rawBody776_92

def rawBody776_94 : StackLang.HolProg 64 :=
.seq rawBody776_74 rawBody776_93

def rawBody776_95 : StackLang.HolProg 64 :=
.seq rawBody776_55 rawBody776_94

def rawBody776_96 : StackLang.HolProg 64 :=
.seq rawBody776_52 rawBody776_95

def rawBody776_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody776_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody776_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody776_100 : StackLang.HolProg 64 :=
.seq rawBody776_98 rawBody776_99

def rawBody776_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3534#64)

def rawBody776_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_104 : StackLang.HolProg 64 :=
.seq rawBody776_102 rawBody776_103

def rawBody776_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody776_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody776_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 7

def rawBody776_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody776_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody776_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody776_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody776_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_115 : StackLang.HolProg 64 :=
.seq rawBody776_113 rawBody776_114

def rawBody776_116 : StackLang.HolProg 64 :=
.seq rawBody776_112 rawBody776_115

def rawBody776_117 : StackLang.HolProg 64 :=
.seq rawBody776_111 rawBody776_116

def rawBody776_118 : StackLang.HolProg 64 :=
.seq rawBody776_110 rawBody776_117

def rawBody776_119 : StackLang.HolProg 64 :=
.seq rawBody776_109 rawBody776_118

def rawBody776_120 : StackLang.HolProg 64 :=
.seq rawBody776_108 rawBody776_119

def rawBody776_121 : StackLang.HolProg 64 :=
.seq rawBody776_107 rawBody776_120

def rawBody776_122 : StackLang.HolProg 64 :=
.seq rawBody776_106 rawBody776_121

def rawBody776_123 : StackLang.HolProg 64 :=
.seq rawBody776_105 rawBody776_122

def rawBody776_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody776_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody776_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody776_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody776_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody776_132 : StackLang.HolProg 64 :=
.seq rawBody776_130 rawBody776_131

def rawBody776_133 : StackLang.HolProg 64 :=
.seq rawBody776_129 rawBody776_132

def rawBody776_134 : StackLang.HolProg 64 :=
.seq rawBody776_128 rawBody776_133

def rawBody776_135 : StackLang.HolProg 64 :=
.seq rawBody776_127 rawBody776_134

def rawBody776_136 : StackLang.HolProg 64 :=
.seq rawBody776_126 rawBody776_135

def rawBody776_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody776_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody776_139 : StackLang.HolProg 64 :=
.seq rawBody776_137 rawBody776_138

def rawBody776_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody776_141 : StackLang.HolProg 64 :=
.seq rawBody776_139 rawBody776_140

def rawBody776_142 : StackLang.HolProg 64 :=
.call (some (rawBody776_136, 0, 776, 6)) (Sum.inl 773) (some (rawBody776_141, 776, 7))

def rawBody776_143 : StackLang.HolProg 64 :=
.seq rawBody776_125 rawBody776_142

def rawBody776_144 : StackLang.HolProg 64 :=
.seq rawBody776_124 rawBody776_143

def rawBody776_145 : StackLang.HolProg 64 :=
.seq rawBody776_123 rawBody776_144

def rawBody776_146 : StackLang.HolProg 64 :=
.seq rawBody776_104 rawBody776_145

def rawBody776_147 : StackLang.HolProg 64 :=
.seq rawBody776_101 rawBody776_146

def rawBody776_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody776_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody776_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody776_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody776_152 : StackLang.HolProg 64 :=
.seq rawBody776_150 rawBody776_151

def rawBody776_153 : StackLang.HolProg 64 :=
.seq rawBody776_149 rawBody776_152

def rawBody776_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3535#64)

def rawBody776_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_157 : StackLang.HolProg 64 :=
.seq rawBody776_155 rawBody776_156

def rawBody776_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody776_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody776_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 9

def rawBody776_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody776_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody776_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody776_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody776_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_168 : StackLang.HolProg 64 :=
.seq rawBody776_166 rawBody776_167

def rawBody776_169 : StackLang.HolProg 64 :=
.seq rawBody776_165 rawBody776_168

def rawBody776_170 : StackLang.HolProg 64 :=
.seq rawBody776_164 rawBody776_169

def rawBody776_171 : StackLang.HolProg 64 :=
.seq rawBody776_163 rawBody776_170

def rawBody776_172 : StackLang.HolProg 64 :=
.seq rawBody776_162 rawBody776_171

def rawBody776_173 : StackLang.HolProg 64 :=
.seq rawBody776_161 rawBody776_172

def rawBody776_174 : StackLang.HolProg 64 :=
.seq rawBody776_160 rawBody776_173

def rawBody776_175 : StackLang.HolProg 64 :=
.seq rawBody776_159 rawBody776_174

def rawBody776_176 : StackLang.HolProg 64 :=
.seq rawBody776_158 rawBody776_175

def rawBody776_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody776_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody776_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody776_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody776_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody776_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody776_186 : StackLang.HolProg 64 :=
.seq rawBody776_184 rawBody776_185

def rawBody776_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody776_188 : StackLang.HolProg 64 :=
.seq rawBody776_186 rawBody776_187

def rawBody776_189 : StackLang.HolProg 64 :=
.seq rawBody776_183 rawBody776_188

def rawBody776_190 : StackLang.HolProg 64 :=
.seq rawBody776_182 rawBody776_189

def rawBody776_191 : StackLang.HolProg 64 :=
.seq rawBody776_181 rawBody776_190

def rawBody776_192 : StackLang.HolProg 64 :=
.seq rawBody776_180 rawBody776_191

def rawBody776_193 : StackLang.HolProg 64 :=
.seq rawBody776_179 rawBody776_192

def rawBody776_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody776_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody776_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody776_197 : StackLang.HolProg 64 :=
.seq rawBody776_195 rawBody776_196

def rawBody776_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody776_199 : StackLang.HolProg 64 :=
.seq rawBody776_197 rawBody776_198

def rawBody776_200 : StackLang.HolProg 64 :=
.seq rawBody776_194 rawBody776_199

def rawBody776_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody776_202 : StackLang.HolProg 64 :=
.seq rawBody776_200 rawBody776_201

def rawBody776_203 : StackLang.HolProg 64 :=
.call (some (rawBody776_193, 0, 776, 8)) (Sum.inl 728) (some (rawBody776_202, 776, 9))

def rawBody776_204 : StackLang.HolProg 64 :=
.seq rawBody776_178 rawBody776_203

def rawBody776_205 : StackLang.HolProg 64 :=
.seq rawBody776_177 rawBody776_204

def rawBody776_206 : StackLang.HolProg 64 :=
.seq rawBody776_176 rawBody776_205

def rawBody776_207 : StackLang.HolProg 64 :=
.seq rawBody776_157 rawBody776_206

def rawBody776_208 : StackLang.HolProg 64 :=
.seq rawBody776_154 rawBody776_207

def rawBody776_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody776_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody776_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody776_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3536#64)

def rawBody776_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_218 : StackLang.HolProg 64 :=
.seq rawBody776_216 rawBody776_217

def rawBody776_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody776_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody776_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 11

def rawBody776_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody776_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody776_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody776_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody776_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_229 : StackLang.HolProg 64 :=
.seq rawBody776_227 rawBody776_228

def rawBody776_230 : StackLang.HolProg 64 :=
.seq rawBody776_226 rawBody776_229

def rawBody776_231 : StackLang.HolProg 64 :=
.seq rawBody776_225 rawBody776_230

def rawBody776_232 : StackLang.HolProg 64 :=
.seq rawBody776_224 rawBody776_231

def rawBody776_233 : StackLang.HolProg 64 :=
.seq rawBody776_223 rawBody776_232

def rawBody776_234 : StackLang.HolProg 64 :=
.seq rawBody776_222 rawBody776_233

def rawBody776_235 : StackLang.HolProg 64 :=
.seq rawBody776_221 rawBody776_234

def rawBody776_236 : StackLang.HolProg 64 :=
.seq rawBody776_220 rawBody776_235

def rawBody776_237 : StackLang.HolProg 64 :=
.seq rawBody776_219 rawBody776_236

def rawBody776_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody776_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody776_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody776_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody776_245 : StackLang.HolProg 64 :=
.seq rawBody776_243 rawBody776_244

def rawBody776_246 : StackLang.HolProg 64 :=
.seq rawBody776_242 rawBody776_245

def rawBody776_247 : StackLang.HolProg 64 :=
.seq rawBody776_241 rawBody776_246

def rawBody776_248 : StackLang.HolProg 64 :=
.seq rawBody776_240 rawBody776_247

def rawBody776_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody776_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody776_251 : StackLang.HolProg 64 :=
.seq rawBody776_249 rawBody776_250

def rawBody776_252 : StackLang.HolProg 64 :=
.call (some (rawBody776_248, 0, 776, 10)) (Sum.inl 728) (some (rawBody776_251, 776, 11))

def rawBody776_253 : StackLang.HolProg 64 :=
.seq rawBody776_239 rawBody776_252

def rawBody776_254 : StackLang.HolProg 64 :=
.seq rawBody776_238 rawBody776_253

def rawBody776_255 : StackLang.HolProg 64 :=
.seq rawBody776_237 rawBody776_254

def rawBody776_256 : StackLang.HolProg 64 :=
.seq rawBody776_218 rawBody776_255

def rawBody776_257 : StackLang.HolProg 64 :=
.seq rawBody776_215 rawBody776_256

def rawBody776_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody776_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody776_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3537#64)

def rawBody776_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_263 : StackLang.HolProg 64 :=
.seq rawBody776_261 rawBody776_262

def rawBody776_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody776_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody776_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody776_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 13

def rawBody776_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody776_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody776_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody776_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody776_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_274 : StackLang.HolProg 64 :=
.seq rawBody776_272 rawBody776_273

def rawBody776_275 : StackLang.HolProg 64 :=
.seq rawBody776_271 rawBody776_274

def rawBody776_276 : StackLang.HolProg 64 :=
.seq rawBody776_270 rawBody776_275

def rawBody776_277 : StackLang.HolProg 64 :=
.seq rawBody776_269 rawBody776_276

def rawBody776_278 : StackLang.HolProg 64 :=
.seq rawBody776_268 rawBody776_277

def rawBody776_279 : StackLang.HolProg 64 :=
.seq rawBody776_267 rawBody776_278

def rawBody776_280 : StackLang.HolProg 64 :=
.seq rawBody776_266 rawBody776_279

def rawBody776_281 : StackLang.HolProg 64 :=
.seq rawBody776_265 rawBody776_280

def rawBody776_282 : StackLang.HolProg 64 :=
.seq rawBody776_264 rawBody776_281

def rawBody776_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody776_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody776_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody776_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody776_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody776_290 : StackLang.HolProg 64 :=
.seq rawBody776_288 rawBody776_289

def rawBody776_291 : StackLang.HolProg 64 :=
.seq rawBody776_287 rawBody776_290

def rawBody776_292 : StackLang.HolProg 64 :=
.seq rawBody776_286 rawBody776_291

def rawBody776_293 : StackLang.HolProg 64 :=
.seq rawBody776_285 rawBody776_292

def rawBody776_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody776_295 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody776_296 : StackLang.HolProg 64 :=
.seq rawBody776_294 rawBody776_295

def rawBody776_297 : StackLang.HolProg 64 :=
.call (some (rawBody776_293, 0, 776, 12)) (Sum.inl 70) (some (rawBody776_296, 776, 13))

def rawBody776_298 : StackLang.HolProg 64 :=
.seq rawBody776_284 rawBody776_297

def rawBody776_299 : StackLang.HolProg 64 :=
.seq rawBody776_283 rawBody776_298

def rawBody776_300 : StackLang.HolProg 64 :=
.seq rawBody776_282 rawBody776_299

def rawBody776_301 : StackLang.HolProg 64 :=
.seq rawBody776_263 rawBody776_300

def rawBody776_302 : StackLang.HolProg 64 :=
.seq rawBody776_260 rawBody776_301

def rawBody776_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody776_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody776_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody776_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody776_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody776_308 : StackLang.HolProg 64 :=
.seq rawBody776_306 rawBody776_307

def rawBody776_309 : StackLang.HolProg 64 :=
.seq rawBody776_305 rawBody776_308

def rawBody776_310 : StackLang.HolProg 64 :=
.seq rawBody776_304 rawBody776_309

def rawBody776_311 : StackLang.HolProg 64 :=
.seq rawBody776_303 rawBody776_310

def rawBody776_312 : StackLang.HolProg 64 :=
.seq rawBody776_302 rawBody776_311

def rawBody776_313 : StackLang.HolProg 64 :=
.seq rawBody776_259 rawBody776_312

def rawBody776_314 : StackLang.HolProg 64 :=
.seq rawBody776_258 rawBody776_313

def rawBody776_315 : StackLang.HolProg 64 :=
.seq rawBody776_257 rawBody776_314

def rawBody776_316 : StackLang.HolProg 64 :=
.seq rawBody776_214 rawBody776_315

def rawBody776_317 : StackLang.HolProg 64 :=
.seq rawBody776_213 rawBody776_316

def rawBody776_318 : StackLang.HolProg 64 :=
.seq rawBody776_212 rawBody776_317

def rawBody776_319 : StackLang.HolProg 64 :=
.seq rawBody776_211 rawBody776_318

def rawBody776_320 : StackLang.HolProg 64 :=
.seq rawBody776_210 rawBody776_319

def rawBody776_321 : StackLang.HolProg 64 :=
.seq rawBody776_209 rawBody776_320

def rawBody776_322 : StackLang.HolProg 64 :=
.seq rawBody776_208 rawBody776_321

def rawBody776_323 : StackLang.HolProg 64 :=
.seq rawBody776_153 rawBody776_322

def rawBody776_324 : StackLang.HolProg 64 :=
.seq rawBody776_148 rawBody776_323

def rawBody776_325 : StackLang.HolProg 64 :=
.seq rawBody776_147 rawBody776_324

def rawBody776_326 : StackLang.HolProg 64 :=
.seq rawBody776_100 rawBody776_325

def rawBody776_327 : StackLang.HolProg 64 :=
.seq rawBody776_97 rawBody776_326

def rawBody776_328 : StackLang.HolProg 64 :=
.seq rawBody776_96 rawBody776_327

def rawBody776_329 : StackLang.HolProg 64 :=
.seq rawBody776_51 rawBody776_328

def rawBody776_330 : StackLang.HolProg 64 :=
.seq rawBody776_50 rawBody776_329

def rawBody776_331 : StackLang.HolProg 64 :=
.seq rawBody776_49 rawBody776_330

def rawBody776_332 : StackLang.HolProg 64 :=
.seq rawBody776_48 rawBody776_331

def rawBody776_333 : StackLang.HolProg 64 :=
.seq rawBody776_5 rawBody776_332

def rawBody776_334 : StackLang.HolProg 64 :=
.seq rawBody776_0 rawBody776_333

def raw776 : StackLang.HolProg 64 := rawBody776_334
theorem raw776_eq : StackRawCall.compTop RawInfo.rawInfo (function776 (.list [])).1 = raw776 := by
  kernel_rfl
#print axioms raw776_eq
end InitECandidate.Proofs.BackendStages
