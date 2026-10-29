import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function786
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody786_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody786_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody786_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody786_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody786_4 : StackLang.HolProg 64 :=
.seq rawBody786_2 rawBody786_3

def rawBody786_5 : StackLang.HolProg 64 :=
.seq rawBody786_1 rawBody786_4

def rawBody786_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3634#64)

def rawBody786_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_9 : StackLang.HolProg 64 :=
.seq rawBody786_7 rawBody786_8

def rawBody786_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody786_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody786_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 3

def rawBody786_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody786_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody786_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody786_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_20 : StackLang.HolProg 64 :=
.seq rawBody786_18 rawBody786_19

def rawBody786_21 : StackLang.HolProg 64 :=
.seq rawBody786_17 rawBody786_20

def rawBody786_22 : StackLang.HolProg 64 :=
.seq rawBody786_16 rawBody786_21

def rawBody786_23 : StackLang.HolProg 64 :=
.seq rawBody786_15 rawBody786_22

def rawBody786_24 : StackLang.HolProg 64 :=
.seq rawBody786_14 rawBody786_23

def rawBody786_25 : StackLang.HolProg 64 :=
.seq rawBody786_13 rawBody786_24

def rawBody786_26 : StackLang.HolProg 64 :=
.seq rawBody786_12 rawBody786_25

def rawBody786_27 : StackLang.HolProg 64 :=
.seq rawBody786_11 rawBody786_26

def rawBody786_28 : StackLang.HolProg 64 :=
.seq rawBody786_10 rawBody786_27

def rawBody786_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody786_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody786_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody786_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody786_36 : StackLang.HolProg 64 :=
.seq rawBody786_34 rawBody786_35

def rawBody786_37 : StackLang.HolProg 64 :=
.seq rawBody786_33 rawBody786_36

def rawBody786_38 : StackLang.HolProg 64 :=
.seq rawBody786_32 rawBody786_37

def rawBody786_39 : StackLang.HolProg 64 :=
.seq rawBody786_31 rawBody786_38

def rawBody786_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody786_42 : StackLang.HolProg 64 :=
.seq rawBody786_40 rawBody786_41

def rawBody786_43 : StackLang.HolProg 64 :=
.call (some (rawBody786_39, 0, 786, 2)) (Sum.inl 69) (some (rawBody786_42, 786, 3))

def rawBody786_44 : StackLang.HolProg 64 :=
.seq rawBody786_30 rawBody786_43

def rawBody786_45 : StackLang.HolProg 64 :=
.seq rawBody786_29 rawBody786_44

def rawBody786_46 : StackLang.HolProg 64 :=
.seq rawBody786_28 rawBody786_45

def rawBody786_47 : StackLang.HolProg 64 :=
.seq rawBody786_9 rawBody786_46

def rawBody786_48 : StackLang.HolProg 64 :=
.seq rawBody786_6 rawBody786_47

def rawBody786_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody786_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def rawBody786_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody786_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3635#64)

def rawBody786_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_55 : StackLang.HolProg 64 :=
.seq rawBody786_53 rawBody786_54

def rawBody786_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody786_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody786_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 5

def rawBody786_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody786_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody786_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody786_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_66 : StackLang.HolProg 64 :=
.seq rawBody786_64 rawBody786_65

def rawBody786_67 : StackLang.HolProg 64 :=
.seq rawBody786_63 rawBody786_66

def rawBody786_68 : StackLang.HolProg 64 :=
.seq rawBody786_62 rawBody786_67

def rawBody786_69 : StackLang.HolProg 64 :=
.seq rawBody786_61 rawBody786_68

def rawBody786_70 : StackLang.HolProg 64 :=
.seq rawBody786_60 rawBody786_69

def rawBody786_71 : StackLang.HolProg 64 :=
.seq rawBody786_59 rawBody786_70

def rawBody786_72 : StackLang.HolProg 64 :=
.seq rawBody786_58 rawBody786_71

def rawBody786_73 : StackLang.HolProg 64 :=
.seq rawBody786_57 rawBody786_72

def rawBody786_74 : StackLang.HolProg 64 :=
.seq rawBody786_56 rawBody786_73

def rawBody786_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody786_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody786_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody786_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody786_82 : StackLang.HolProg 64 :=
.seq rawBody786_80 rawBody786_81

def rawBody786_83 : StackLang.HolProg 64 :=
.seq rawBody786_79 rawBody786_82

def rawBody786_84 : StackLang.HolProg 64 :=
.seq rawBody786_78 rawBody786_83

def rawBody786_85 : StackLang.HolProg 64 :=
.seq rawBody786_77 rawBody786_84

def rawBody786_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody786_88 : StackLang.HolProg 64 :=
.seq rawBody786_86 rawBody786_87

def rawBody786_89 : StackLang.HolProg 64 :=
.call (some (rawBody786_85, 0, 786, 4)) (Sum.inl 68) (some (rawBody786_88, 786, 5))

def rawBody786_90 : StackLang.HolProg 64 :=
.seq rawBody786_76 rawBody786_89

def rawBody786_91 : StackLang.HolProg 64 :=
.seq rawBody786_75 rawBody786_90

def rawBody786_92 : StackLang.HolProg 64 :=
.seq rawBody786_74 rawBody786_91

def rawBody786_93 : StackLang.HolProg 64 :=
.seq rawBody786_55 rawBody786_92

def rawBody786_94 : StackLang.HolProg 64 :=
.seq rawBody786_52 rawBody786_93

def rawBody786_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody786_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def rawBody786_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody786_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3636#64)

def rawBody786_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_101 : StackLang.HolProg 64 :=
.seq rawBody786_99 rawBody786_100

def rawBody786_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody786_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody786_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 7

def rawBody786_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody786_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody786_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody786_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_112 : StackLang.HolProg 64 :=
.seq rawBody786_110 rawBody786_111

def rawBody786_113 : StackLang.HolProg 64 :=
.seq rawBody786_109 rawBody786_112

def rawBody786_114 : StackLang.HolProg 64 :=
.seq rawBody786_108 rawBody786_113

def rawBody786_115 : StackLang.HolProg 64 :=
.seq rawBody786_107 rawBody786_114

def rawBody786_116 : StackLang.HolProg 64 :=
.seq rawBody786_106 rawBody786_115

def rawBody786_117 : StackLang.HolProg 64 :=
.seq rawBody786_105 rawBody786_116

def rawBody786_118 : StackLang.HolProg 64 :=
.seq rawBody786_104 rawBody786_117

def rawBody786_119 : StackLang.HolProg 64 :=
.seq rawBody786_103 rawBody786_118

def rawBody786_120 : StackLang.HolProg 64 :=
.seq rawBody786_102 rawBody786_119

def rawBody786_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody786_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody786_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody786_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody786_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody786_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody786_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody786_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_132 : StackLang.HolProg 64 :=
.seq rawBody786_130 rawBody786_131

def rawBody786_133 : StackLang.HolProg 64 :=
.seq rawBody786_129 rawBody786_132

def rawBody786_134 : StackLang.HolProg 64 :=
.seq rawBody786_128 rawBody786_133

def rawBody786_135 : StackLang.HolProg 64 :=
.seq rawBody786_127 rawBody786_134

def rawBody786_136 : StackLang.HolProg 64 :=
.seq rawBody786_126 rawBody786_135

def rawBody786_137 : StackLang.HolProg 64 :=
.seq rawBody786_125 rawBody786_136

def rawBody786_138 : StackLang.HolProg 64 :=
.seq rawBody786_124 rawBody786_137

def rawBody786_139 : StackLang.HolProg 64 :=
.seq rawBody786_123 rawBody786_138

def rawBody786_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody786_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody786_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody786_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_144 : StackLang.HolProg 64 :=
.seq rawBody786_142 rawBody786_143

def rawBody786_145 : StackLang.HolProg 64 :=
.seq rawBody786_141 rawBody786_144

def rawBody786_146 : StackLang.HolProg 64 :=
.seq rawBody786_140 rawBody786_145

def rawBody786_147 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody786_148 : StackLang.HolProg 64 :=
.seq rawBody786_146 rawBody786_147

def rawBody786_149 : StackLang.HolProg 64 :=
.call (some (rawBody786_139, 0, 786, 6)) (Sum.inl 68) (some (rawBody786_148, 786, 7))

def rawBody786_150 : StackLang.HolProg 64 :=
.seq rawBody786_122 rawBody786_149

def rawBody786_151 : StackLang.HolProg 64 :=
.seq rawBody786_121 rawBody786_150

def rawBody786_152 : StackLang.HolProg 64 :=
.seq rawBody786_120 rawBody786_151

def rawBody786_153 : StackLang.HolProg 64 :=
.seq rawBody786_101 rawBody786_152

def rawBody786_154 : StackLang.HolProg 64 :=
.seq rawBody786_98 rawBody786_153

def rawBody786_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody786_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody786_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody786_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody786_159 : StackLang.HolProg 64 :=
.seq rawBody786_157 rawBody786_158

def rawBody786_160 : StackLang.HolProg 64 :=
.seq rawBody786_156 rawBody786_159

def rawBody786_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3637#64)

def rawBody786_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_164 : StackLang.HolProg 64 :=
.seq rawBody786_162 rawBody786_163

def rawBody786_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody786_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody786_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 9

def rawBody786_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody786_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody786_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody786_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_175 : StackLang.HolProg 64 :=
.seq rawBody786_173 rawBody786_174

def rawBody786_176 : StackLang.HolProg 64 :=
.seq rawBody786_172 rawBody786_175

def rawBody786_177 : StackLang.HolProg 64 :=
.seq rawBody786_171 rawBody786_176

def rawBody786_178 : StackLang.HolProg 64 :=
.seq rawBody786_170 rawBody786_177

def rawBody786_179 : StackLang.HolProg 64 :=
.seq rawBody786_169 rawBody786_178

def rawBody786_180 : StackLang.HolProg 64 :=
.seq rawBody786_168 rawBody786_179

def rawBody786_181 : StackLang.HolProg 64 :=
.seq rawBody786_167 rawBody786_180

def rawBody786_182 : StackLang.HolProg 64 :=
.seq rawBody786_166 rawBody786_181

def rawBody786_183 : StackLang.HolProg 64 :=
.seq rawBody786_165 rawBody786_182

def rawBody786_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody786_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody786_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody786_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody786_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody786_192 : StackLang.HolProg 64 :=
.seq rawBody786_190 rawBody786_191

def rawBody786_193 : StackLang.HolProg 64 :=
.seq rawBody786_189 rawBody786_192

def rawBody786_194 : StackLang.HolProg 64 :=
.seq rawBody786_188 rawBody786_193

def rawBody786_195 : StackLang.HolProg 64 :=
.seq rawBody786_187 rawBody786_194

def rawBody786_196 : StackLang.HolProg 64 :=
.seq rawBody786_186 rawBody786_195

def rawBody786_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody786_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody786_199 : StackLang.HolProg 64 :=
.seq rawBody786_197 rawBody786_198

def rawBody786_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody786_201 : StackLang.HolProg 64 :=
.seq rawBody786_199 rawBody786_200

def rawBody786_202 : StackLang.HolProg 64 :=
.call (some (rawBody786_196, 0, 786, 8)) (Sum.inl 740) (some (rawBody786_201, 786, 9))

def rawBody786_203 : StackLang.HolProg 64 :=
.seq rawBody786_185 rawBody786_202

def rawBody786_204 : StackLang.HolProg 64 :=
.seq rawBody786_184 rawBody786_203

def rawBody786_205 : StackLang.HolProg 64 :=
.seq rawBody786_183 rawBody786_204

def rawBody786_206 : StackLang.HolProg 64 :=
.seq rawBody786_164 rawBody786_205

def rawBody786_207 : StackLang.HolProg 64 :=
.seq rawBody786_161 rawBody786_206

def rawBody786_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody786_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody786_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody786_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody786_212 : StackLang.HolProg 64 :=
.seq rawBody786_210 rawBody786_211

def rawBody786_213 : StackLang.HolProg 64 :=
.seq rawBody786_209 rawBody786_212

def rawBody786_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3638#64)

def rawBody786_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_217 : StackLang.HolProg 64 :=
.seq rawBody786_215 rawBody786_216

def rawBody786_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody786_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody786_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 11

def rawBody786_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody786_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody786_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody786_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_228 : StackLang.HolProg 64 :=
.seq rawBody786_226 rawBody786_227

def rawBody786_229 : StackLang.HolProg 64 :=
.seq rawBody786_225 rawBody786_228

def rawBody786_230 : StackLang.HolProg 64 :=
.seq rawBody786_224 rawBody786_229

def rawBody786_231 : StackLang.HolProg 64 :=
.seq rawBody786_223 rawBody786_230

def rawBody786_232 : StackLang.HolProg 64 :=
.seq rawBody786_222 rawBody786_231

def rawBody786_233 : StackLang.HolProg 64 :=
.seq rawBody786_221 rawBody786_232

def rawBody786_234 : StackLang.HolProg 64 :=
.seq rawBody786_220 rawBody786_233

def rawBody786_235 : StackLang.HolProg 64 :=
.seq rawBody786_219 rawBody786_234

def rawBody786_236 : StackLang.HolProg 64 :=
.seq rawBody786_218 rawBody786_235

def rawBody786_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody786_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody786_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody786_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody786_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody786_245 : StackLang.HolProg 64 :=
.seq rawBody786_243 rawBody786_244

def rawBody786_246 : StackLang.HolProg 64 :=
.seq rawBody786_242 rawBody786_245

def rawBody786_247 : StackLang.HolProg 64 :=
.seq rawBody786_241 rawBody786_246

def rawBody786_248 : StackLang.HolProg 64 :=
.seq rawBody786_240 rawBody786_247

def rawBody786_249 : StackLang.HolProg 64 :=
.seq rawBody786_239 rawBody786_248

def rawBody786_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody786_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody786_252 : StackLang.HolProg 64 :=
.seq rawBody786_250 rawBody786_251

def rawBody786_253 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody786_254 : StackLang.HolProg 64 :=
.seq rawBody786_252 rawBody786_253

def rawBody786_255 : StackLang.HolProg 64 :=
.call (some (rawBody786_249, 0, 786, 10)) (Sum.inl 740) (some (rawBody786_254, 786, 11))

def rawBody786_256 : StackLang.HolProg 64 :=
.seq rawBody786_238 rawBody786_255

def rawBody786_257 : StackLang.HolProg 64 :=
.seq rawBody786_237 rawBody786_256

def rawBody786_258 : StackLang.HolProg 64 :=
.seq rawBody786_236 rawBody786_257

def rawBody786_259 : StackLang.HolProg 64 :=
.seq rawBody786_217 rawBody786_258

def rawBody786_260 : StackLang.HolProg 64 :=
.seq rawBody786_214 rawBody786_259

def rawBody786_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody786_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody786_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody786_264 : StackLang.HolProg 64 :=
.seq rawBody786_262 rawBody786_263

def rawBody786_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3639#64)

def rawBody786_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_268 : StackLang.HolProg 64 :=
.seq rawBody786_266 rawBody786_267

def rawBody786_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody786_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody786_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 13

def rawBody786_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody786_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody786_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody786_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_279 : StackLang.HolProg 64 :=
.seq rawBody786_277 rawBody786_278

def rawBody786_280 : StackLang.HolProg 64 :=
.seq rawBody786_276 rawBody786_279

def rawBody786_281 : StackLang.HolProg 64 :=
.seq rawBody786_275 rawBody786_280

def rawBody786_282 : StackLang.HolProg 64 :=
.seq rawBody786_274 rawBody786_281

def rawBody786_283 : StackLang.HolProg 64 :=
.seq rawBody786_273 rawBody786_282

def rawBody786_284 : StackLang.HolProg 64 :=
.seq rawBody786_272 rawBody786_283

def rawBody786_285 : StackLang.HolProg 64 :=
.seq rawBody786_271 rawBody786_284

def rawBody786_286 : StackLang.HolProg 64 :=
.seq rawBody786_270 rawBody786_285

def rawBody786_287 : StackLang.HolProg 64 :=
.seq rawBody786_269 rawBody786_286

def rawBody786_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody786_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody786_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody786_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody786_295 : StackLang.HolProg 64 :=
.seq rawBody786_293 rawBody786_294

def rawBody786_296 : StackLang.HolProg 64 :=
.seq rawBody786_292 rawBody786_295

def rawBody786_297 : StackLang.HolProg 64 :=
.seq rawBody786_291 rawBody786_296

def rawBody786_298 : StackLang.HolProg 64 :=
.seq rawBody786_290 rawBody786_297

def rawBody786_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody786_300 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody786_301 : StackLang.HolProg 64 :=
.seq rawBody786_299 rawBody786_300

def rawBody786_302 : StackLang.HolProg 64 :=
.call (some (rawBody786_298, 0, 786, 12)) (Sum.inl 739) (some (rawBody786_301, 786, 13))

def rawBody786_303 : StackLang.HolProg 64 :=
.seq rawBody786_289 rawBody786_302

def rawBody786_304 : StackLang.HolProg 64 :=
.seq rawBody786_288 rawBody786_303

def rawBody786_305 : StackLang.HolProg 64 :=
.seq rawBody786_287 rawBody786_304

def rawBody786_306 : StackLang.HolProg 64 :=
.seq rawBody786_268 rawBody786_305

def rawBody786_307 : StackLang.HolProg 64 :=
.seq rawBody786_265 rawBody786_306

def rawBody786_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody786_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody786_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody786_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody786_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def rawBody786_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def rawBody786_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody786_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody786_317 : StackLang.HolProg 64 :=
.seq rawBody786_315 rawBody786_316

def rawBody786_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3640#64)

def rawBody786_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_321 : StackLang.HolProg 64 :=
.seq rawBody786_319 rawBody786_320

def rawBody786_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody786_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody786_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 15

def rawBody786_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody786_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody786_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody786_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_332 : StackLang.HolProg 64 :=
.seq rawBody786_330 rawBody786_331

def rawBody786_333 : StackLang.HolProg 64 :=
.seq rawBody786_329 rawBody786_332

def rawBody786_334 : StackLang.HolProg 64 :=
.seq rawBody786_328 rawBody786_333

def rawBody786_335 : StackLang.HolProg 64 :=
.seq rawBody786_327 rawBody786_334

def rawBody786_336 : StackLang.HolProg 64 :=
.seq rawBody786_326 rawBody786_335

def rawBody786_337 : StackLang.HolProg 64 :=
.seq rawBody786_325 rawBody786_336

def rawBody786_338 : StackLang.HolProg 64 :=
.seq rawBody786_324 rawBody786_337

def rawBody786_339 : StackLang.HolProg 64 :=
.seq rawBody786_323 rawBody786_338

def rawBody786_340 : StackLang.HolProg 64 :=
.seq rawBody786_322 rawBody786_339

def rawBody786_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody786_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody786_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody786_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody786_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody786_349 : StackLang.HolProg 64 :=
.seq rawBody786_347 rawBody786_348

def rawBody786_350 : StackLang.HolProg 64 :=
.seq rawBody786_346 rawBody786_349

def rawBody786_351 : StackLang.HolProg 64 :=
.seq rawBody786_345 rawBody786_350

def rawBody786_352 : StackLang.HolProg 64 :=
.seq rawBody786_344 rawBody786_351

def rawBody786_353 : StackLang.HolProg 64 :=
.seq rawBody786_343 rawBody786_352

def rawBody786_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody786_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody786_356 : StackLang.HolProg 64 :=
.seq rawBody786_354 rawBody786_355

def rawBody786_357 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody786_358 : StackLang.HolProg 64 :=
.seq rawBody786_356 rawBody786_357

def rawBody786_359 : StackLang.HolProg 64 :=
.call (some (rawBody786_353, 0, 786, 14)) (Sum.inl 734) (some (rawBody786_358, 786, 15))

def rawBody786_360 : StackLang.HolProg 64 :=
.seq rawBody786_342 rawBody786_359

def rawBody786_361 : StackLang.HolProg 64 :=
.seq rawBody786_341 rawBody786_360

def rawBody786_362 : StackLang.HolProg 64 :=
.seq rawBody786_340 rawBody786_361

def rawBody786_363 : StackLang.HolProg 64 :=
.seq rawBody786_321 rawBody786_362

def rawBody786_364 : StackLang.HolProg 64 :=
.seq rawBody786_318 rawBody786_363

def rawBody786_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody786_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody786_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3641#64)

def rawBody786_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_370 : StackLang.HolProg 64 :=
.seq rawBody786_368 rawBody786_369

def rawBody786_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody786_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody786_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 17

def rawBody786_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody786_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody786_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody786_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_381 : StackLang.HolProg 64 :=
.seq rawBody786_379 rawBody786_380

def rawBody786_382 : StackLang.HolProg 64 :=
.seq rawBody786_378 rawBody786_381

def rawBody786_383 : StackLang.HolProg 64 :=
.seq rawBody786_377 rawBody786_382

def rawBody786_384 : StackLang.HolProg 64 :=
.seq rawBody786_376 rawBody786_383

def rawBody786_385 : StackLang.HolProg 64 :=
.seq rawBody786_375 rawBody786_384

def rawBody786_386 : StackLang.HolProg 64 :=
.seq rawBody786_374 rawBody786_385

def rawBody786_387 : StackLang.HolProg 64 :=
.seq rawBody786_373 rawBody786_386

def rawBody786_388 : StackLang.HolProg 64 :=
.seq rawBody786_372 rawBody786_387

def rawBody786_389 : StackLang.HolProg 64 :=
.seq rawBody786_371 rawBody786_388

def rawBody786_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody786_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody786_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody786_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody786_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody786_398 : StackLang.HolProg 64 :=
.seq rawBody786_396 rawBody786_397

def rawBody786_399 : StackLang.HolProg 64 :=
.seq rawBody786_395 rawBody786_398

def rawBody786_400 : StackLang.HolProg 64 :=
.seq rawBody786_394 rawBody786_399

def rawBody786_401 : StackLang.HolProg 64 :=
.seq rawBody786_393 rawBody786_400

def rawBody786_402 : StackLang.HolProg 64 :=
.seq rawBody786_392 rawBody786_401

def rawBody786_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody786_404 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody786_405 : StackLang.HolProg 64 :=
.seq rawBody786_403 rawBody786_404

def rawBody786_406 : StackLang.HolProg 64 :=
.call (some (rawBody786_402, 0, 786, 16)) (Sum.inl 733) (some (rawBody786_405, 786, 17))

def rawBody786_407 : StackLang.HolProg 64 :=
.seq rawBody786_391 rawBody786_406

def rawBody786_408 : StackLang.HolProg 64 :=
.seq rawBody786_390 rawBody786_407

def rawBody786_409 : StackLang.HolProg 64 :=
.seq rawBody786_389 rawBody786_408

def rawBody786_410 : StackLang.HolProg 64 :=
.seq rawBody786_370 rawBody786_409

def rawBody786_411 : StackLang.HolProg 64 :=
.seq rawBody786_367 rawBody786_410

def rawBody786_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody786_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody786_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody786_415 : StackLang.HolProg 64 :=
.seq rawBody786_413 rawBody786_414

def rawBody786_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3642#64)

def rawBody786_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_419 : StackLang.HolProg 64 :=
.seq rawBody786_417 rawBody786_418

def rawBody786_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody786_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody786_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody786_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 19

def rawBody786_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody786_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody786_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody786_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody786_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_430 : StackLang.HolProg 64 :=
.seq rawBody786_428 rawBody786_429

def rawBody786_431 : StackLang.HolProg 64 :=
.seq rawBody786_427 rawBody786_430

def rawBody786_432 : StackLang.HolProg 64 :=
.seq rawBody786_426 rawBody786_431

def rawBody786_433 : StackLang.HolProg 64 :=
.seq rawBody786_425 rawBody786_432

def rawBody786_434 : StackLang.HolProg 64 :=
.seq rawBody786_424 rawBody786_433

def rawBody786_435 : StackLang.HolProg 64 :=
.seq rawBody786_423 rawBody786_434

def rawBody786_436 : StackLang.HolProg 64 :=
.seq rawBody786_422 rawBody786_435

def rawBody786_437 : StackLang.HolProg 64 :=
.seq rawBody786_421 rawBody786_436

def rawBody786_438 : StackLang.HolProg 64 :=
.seq rawBody786_420 rawBody786_437

def rawBody786_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody786_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody786_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody786_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody786_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody786_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody786_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody786_447 : StackLang.HolProg 64 :=
.seq rawBody786_445 rawBody786_446

def rawBody786_448 : StackLang.HolProg 64 :=
.seq rawBody786_444 rawBody786_447

def rawBody786_449 : StackLang.HolProg 64 :=
.seq rawBody786_443 rawBody786_448

def rawBody786_450 : StackLang.HolProg 64 :=
.seq rawBody786_442 rawBody786_449

def rawBody786_451 : StackLang.HolProg 64 :=
.seq rawBody786_441 rawBody786_450

def rawBody786_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody786_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody786_454 : StackLang.HolProg 64 :=
.seq rawBody786_452 rawBody786_453

def rawBody786_455 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody786_456 : StackLang.HolProg 64 :=
.seq rawBody786_454 rawBody786_455

def rawBody786_457 : StackLang.HolProg 64 :=
.call (some (rawBody786_451, 0, 786, 18)) (Sum.inl 70) (some (rawBody786_456, 786, 19))

def rawBody786_458 : StackLang.HolProg 64 :=
.seq rawBody786_440 rawBody786_457

def rawBody786_459 : StackLang.HolProg 64 :=
.seq rawBody786_439 rawBody786_458

def rawBody786_460 : StackLang.HolProg 64 :=
.seq rawBody786_438 rawBody786_459

def rawBody786_461 : StackLang.HolProg 64 :=
.seq rawBody786_419 rawBody786_460

def rawBody786_462 : StackLang.HolProg 64 :=
.seq rawBody786_416 rawBody786_461

def rawBody786_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody786_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody786_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody786_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody786_467 : StackLang.HolProg 64 :=
.seq rawBody786_465 rawBody786_466

def rawBody786_468 : StackLang.HolProg 64 :=
.seq rawBody786_464 rawBody786_467

def rawBody786_469 : StackLang.HolProg 64 :=
.seq rawBody786_463 rawBody786_468

def rawBody786_470 : StackLang.HolProg 64 :=
.seq rawBody786_462 rawBody786_469

def rawBody786_471 : StackLang.HolProg 64 :=
.seq rawBody786_415 rawBody786_470

def rawBody786_472 : StackLang.HolProg 64 :=
.seq rawBody786_412 rawBody786_471

def rawBody786_473 : StackLang.HolProg 64 :=
.seq rawBody786_411 rawBody786_472

def rawBody786_474 : StackLang.HolProg 64 :=
.seq rawBody786_366 rawBody786_473

def rawBody786_475 : StackLang.HolProg 64 :=
.seq rawBody786_365 rawBody786_474

def rawBody786_476 : StackLang.HolProg 64 :=
.seq rawBody786_364 rawBody786_475

def rawBody786_477 : StackLang.HolProg 64 :=
.seq rawBody786_317 rawBody786_476

def rawBody786_478 : StackLang.HolProg 64 :=
.seq rawBody786_314 rawBody786_477

def rawBody786_479 : StackLang.HolProg 64 :=
.seq rawBody786_313 rawBody786_478

def rawBody786_480 : StackLang.HolProg 64 :=
.seq rawBody786_312 rawBody786_479

def rawBody786_481 : StackLang.HolProg 64 :=
.seq rawBody786_311 rawBody786_480

def rawBody786_482 : StackLang.HolProg 64 :=
.seq rawBody786_310 rawBody786_481

def rawBody786_483 : StackLang.HolProg 64 :=
.seq rawBody786_309 rawBody786_482

def rawBody786_484 : StackLang.HolProg 64 :=
.seq rawBody786_308 rawBody786_483

def rawBody786_485 : StackLang.HolProg 64 :=
.seq rawBody786_307 rawBody786_484

def rawBody786_486 : StackLang.HolProg 64 :=
.seq rawBody786_264 rawBody786_485

def rawBody786_487 : StackLang.HolProg 64 :=
.seq rawBody786_261 rawBody786_486

def rawBody786_488 : StackLang.HolProg 64 :=
.seq rawBody786_260 rawBody786_487

def rawBody786_489 : StackLang.HolProg 64 :=
.seq rawBody786_213 rawBody786_488

def rawBody786_490 : StackLang.HolProg 64 :=
.seq rawBody786_208 rawBody786_489

def rawBody786_491 : StackLang.HolProg 64 :=
.seq rawBody786_207 rawBody786_490

def rawBody786_492 : StackLang.HolProg 64 :=
.seq rawBody786_160 rawBody786_491

def rawBody786_493 : StackLang.HolProg 64 :=
.seq rawBody786_155 rawBody786_492

def rawBody786_494 : StackLang.HolProg 64 :=
.seq rawBody786_154 rawBody786_493

def rawBody786_495 : StackLang.HolProg 64 :=
.seq rawBody786_97 rawBody786_494

def rawBody786_496 : StackLang.HolProg 64 :=
.seq rawBody786_96 rawBody786_495

def rawBody786_497 : StackLang.HolProg 64 :=
.seq rawBody786_95 rawBody786_496

def rawBody786_498 : StackLang.HolProg 64 :=
.seq rawBody786_94 rawBody786_497

def rawBody786_499 : StackLang.HolProg 64 :=
.seq rawBody786_51 rawBody786_498

def rawBody786_500 : StackLang.HolProg 64 :=
.seq rawBody786_50 rawBody786_499

def rawBody786_501 : StackLang.HolProg 64 :=
.seq rawBody786_49 rawBody786_500

def rawBody786_502 : StackLang.HolProg 64 :=
.seq rawBody786_48 rawBody786_501

def rawBody786_503 : StackLang.HolProg 64 :=
.seq rawBody786_5 rawBody786_502

def rawBody786_504 : StackLang.HolProg 64 :=
.seq rawBody786_0 rawBody786_503

def raw786 : StackLang.HolProg 64 := rawBody786_504
theorem raw786_eq : StackRawCall.compTop RawInfo.rawInfo (function786 (.list [])).1 = raw786 := by
  kernel_rfl
#print axioms raw786_eq
end InitECandidate.Proofs.BackendStages
