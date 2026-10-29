import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function812
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody812_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody812_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody812_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody812_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody812_4 : StackLang.HolProg 64 :=
.seq rawBody812_2 rawBody812_3

def rawBody812_5 : StackLang.HolProg 64 :=
.seq rawBody812_1 rawBody812_4

def rawBody812_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4010#64)

def rawBody812_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_9 : StackLang.HolProg 64 :=
.seq rawBody812_7 rawBody812_8

def rawBody812_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody812_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody812_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 3

def rawBody812_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody812_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody812_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody812_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_20 : StackLang.HolProg 64 :=
.seq rawBody812_18 rawBody812_19

def rawBody812_21 : StackLang.HolProg 64 :=
.seq rawBody812_17 rawBody812_20

def rawBody812_22 : StackLang.HolProg 64 :=
.seq rawBody812_16 rawBody812_21

def rawBody812_23 : StackLang.HolProg 64 :=
.seq rawBody812_15 rawBody812_22

def rawBody812_24 : StackLang.HolProg 64 :=
.seq rawBody812_14 rawBody812_23

def rawBody812_25 : StackLang.HolProg 64 :=
.seq rawBody812_13 rawBody812_24

def rawBody812_26 : StackLang.HolProg 64 :=
.seq rawBody812_12 rawBody812_25

def rawBody812_27 : StackLang.HolProg 64 :=
.seq rawBody812_11 rawBody812_26

def rawBody812_28 : StackLang.HolProg 64 :=
.seq rawBody812_10 rawBody812_27

def rawBody812_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody812_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody812_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody812_36 : StackLang.HolProg 64 :=
.seq rawBody812_34 rawBody812_35

def rawBody812_37 : StackLang.HolProg 64 :=
.seq rawBody812_33 rawBody812_36

def rawBody812_38 : StackLang.HolProg 64 :=
.seq rawBody812_32 rawBody812_37

def rawBody812_39 : StackLang.HolProg 64 :=
.seq rawBody812_31 rawBody812_38

def rawBody812_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody812_42 : StackLang.HolProg 64 :=
.seq rawBody812_40 rawBody812_41

def rawBody812_43 : StackLang.HolProg 64 :=
.call (some (rawBody812_39, 0, 812, 2)) (Sum.inl 69) (some (rawBody812_42, 812, 3))

def rawBody812_44 : StackLang.HolProg 64 :=
.seq rawBody812_30 rawBody812_43

def rawBody812_45 : StackLang.HolProg 64 :=
.seq rawBody812_29 rawBody812_44

def rawBody812_46 : StackLang.HolProg 64 :=
.seq rawBody812_28 rawBody812_45

def rawBody812_47 : StackLang.HolProg 64 :=
.seq rawBody812_9 rawBody812_46

def rawBody812_48 : StackLang.HolProg 64 :=
.seq rawBody812_6 rawBody812_47

def rawBody812_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def rawBody812_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody812_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4011#64)

def rawBody812_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_55 : StackLang.HolProg 64 :=
.seq rawBody812_53 rawBody812_54

def rawBody812_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody812_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody812_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 5

def rawBody812_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody812_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody812_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody812_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_66 : StackLang.HolProg 64 :=
.seq rawBody812_64 rawBody812_65

def rawBody812_67 : StackLang.HolProg 64 :=
.seq rawBody812_63 rawBody812_66

def rawBody812_68 : StackLang.HolProg 64 :=
.seq rawBody812_62 rawBody812_67

def rawBody812_69 : StackLang.HolProg 64 :=
.seq rawBody812_61 rawBody812_68

def rawBody812_70 : StackLang.HolProg 64 :=
.seq rawBody812_60 rawBody812_69

def rawBody812_71 : StackLang.HolProg 64 :=
.seq rawBody812_59 rawBody812_70

def rawBody812_72 : StackLang.HolProg 64 :=
.seq rawBody812_58 rawBody812_71

def rawBody812_73 : StackLang.HolProg 64 :=
.seq rawBody812_57 rawBody812_72

def rawBody812_74 : StackLang.HolProg 64 :=
.seq rawBody812_56 rawBody812_73

def rawBody812_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody812_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody812_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody812_82 : StackLang.HolProg 64 :=
.seq rawBody812_80 rawBody812_81

def rawBody812_83 : StackLang.HolProg 64 :=
.seq rawBody812_79 rawBody812_82

def rawBody812_84 : StackLang.HolProg 64 :=
.seq rawBody812_78 rawBody812_83

def rawBody812_85 : StackLang.HolProg 64 :=
.seq rawBody812_77 rawBody812_84

def rawBody812_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody812_88 : StackLang.HolProg 64 :=
.seq rawBody812_86 rawBody812_87

def rawBody812_89 : StackLang.HolProg 64 :=
.call (some (rawBody812_85, 0, 812, 4)) (Sum.inl 68) (some (rawBody812_88, 812, 5))

def rawBody812_90 : StackLang.HolProg 64 :=
.seq rawBody812_76 rawBody812_89

def rawBody812_91 : StackLang.HolProg 64 :=
.seq rawBody812_75 rawBody812_90

def rawBody812_92 : StackLang.HolProg 64 :=
.seq rawBody812_74 rawBody812_91

def rawBody812_93 : StackLang.HolProg 64 :=
.seq rawBody812_55 rawBody812_92

def rawBody812_94 : StackLang.HolProg 64 :=
.seq rawBody812_52 rawBody812_93

def rawBody812_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def rawBody812_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody812_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4012#64)

def rawBody812_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_101 : StackLang.HolProg 64 :=
.seq rawBody812_99 rawBody812_100

def rawBody812_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody812_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody812_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 7

def rawBody812_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody812_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody812_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody812_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_112 : StackLang.HolProg 64 :=
.seq rawBody812_110 rawBody812_111

def rawBody812_113 : StackLang.HolProg 64 :=
.seq rawBody812_109 rawBody812_112

def rawBody812_114 : StackLang.HolProg 64 :=
.seq rawBody812_108 rawBody812_113

def rawBody812_115 : StackLang.HolProg 64 :=
.seq rawBody812_107 rawBody812_114

def rawBody812_116 : StackLang.HolProg 64 :=
.seq rawBody812_106 rawBody812_115

def rawBody812_117 : StackLang.HolProg 64 :=
.seq rawBody812_105 rawBody812_116

def rawBody812_118 : StackLang.HolProg 64 :=
.seq rawBody812_104 rawBody812_117

def rawBody812_119 : StackLang.HolProg 64 :=
.seq rawBody812_103 rawBody812_118

def rawBody812_120 : StackLang.HolProg 64 :=
.seq rawBody812_102 rawBody812_119

def rawBody812_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody812_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody812_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody812_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody812_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody812_130 : StackLang.HolProg 64 :=
.seq rawBody812_128 rawBody812_129

def rawBody812_131 : StackLang.HolProg 64 :=
.seq rawBody812_127 rawBody812_130

def rawBody812_132 : StackLang.HolProg 64 :=
.seq rawBody812_126 rawBody812_131

def rawBody812_133 : StackLang.HolProg 64 :=
.seq rawBody812_125 rawBody812_132

def rawBody812_134 : StackLang.HolProg 64 :=
.seq rawBody812_124 rawBody812_133

def rawBody812_135 : StackLang.HolProg 64 :=
.seq rawBody812_123 rawBody812_134

def rawBody812_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody812_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody812_138 : StackLang.HolProg 64 :=
.seq rawBody812_136 rawBody812_137

def rawBody812_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody812_140 : StackLang.HolProg 64 :=
.seq rawBody812_138 rawBody812_139

def rawBody812_141 : StackLang.HolProg 64 :=
.call (some (rawBody812_135, 0, 812, 6)) (Sum.inl 68) (some (rawBody812_140, 812, 7))

def rawBody812_142 : StackLang.HolProg 64 :=
.seq rawBody812_122 rawBody812_141

def rawBody812_143 : StackLang.HolProg 64 :=
.seq rawBody812_121 rawBody812_142

def rawBody812_144 : StackLang.HolProg 64 :=
.seq rawBody812_120 rawBody812_143

def rawBody812_145 : StackLang.HolProg 64 :=
.seq rawBody812_101 rawBody812_144

def rawBody812_146 : StackLang.HolProg 64 :=
.seq rawBody812_98 rawBody812_145

def rawBody812_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody812_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody812_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody812_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody812_152 : StackLang.HolProg 64 :=
.seq rawBody812_150 rawBody812_151

def rawBody812_153 : StackLang.HolProg 64 :=
.seq rawBody812_149 rawBody812_152

def rawBody812_154 : StackLang.HolProg 64 :=
.seq rawBody812_148 rawBody812_153

def rawBody812_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4013#64)

def rawBody812_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_158 : StackLang.HolProg 64 :=
.seq rawBody812_156 rawBody812_157

def rawBody812_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody812_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody812_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 9

def rawBody812_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody812_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody812_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody812_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_169 : StackLang.HolProg 64 :=
.seq rawBody812_167 rawBody812_168

def rawBody812_170 : StackLang.HolProg 64 :=
.seq rawBody812_166 rawBody812_169

def rawBody812_171 : StackLang.HolProg 64 :=
.seq rawBody812_165 rawBody812_170

def rawBody812_172 : StackLang.HolProg 64 :=
.seq rawBody812_164 rawBody812_171

def rawBody812_173 : StackLang.HolProg 64 :=
.seq rawBody812_163 rawBody812_172

def rawBody812_174 : StackLang.HolProg 64 :=
.seq rawBody812_162 rawBody812_173

def rawBody812_175 : StackLang.HolProg 64 :=
.seq rawBody812_161 rawBody812_174

def rawBody812_176 : StackLang.HolProg 64 :=
.seq rawBody812_160 rawBody812_175

def rawBody812_177 : StackLang.HolProg 64 :=
.seq rawBody812_159 rawBody812_176

def rawBody812_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody812_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody812_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody812_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody812_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody812_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody812_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_189 : StackLang.HolProg 64 :=
.seq rawBody812_187 rawBody812_188

def rawBody812_190 : StackLang.HolProg 64 :=
.seq rawBody812_186 rawBody812_189

def rawBody812_191 : StackLang.HolProg 64 :=
.seq rawBody812_185 rawBody812_190

def rawBody812_192 : StackLang.HolProg 64 :=
.seq rawBody812_184 rawBody812_191

def rawBody812_193 : StackLang.HolProg 64 :=
.seq rawBody812_183 rawBody812_192

def rawBody812_194 : StackLang.HolProg 64 :=
.seq rawBody812_182 rawBody812_193

def rawBody812_195 : StackLang.HolProg 64 :=
.seq rawBody812_181 rawBody812_194

def rawBody812_196 : StackLang.HolProg 64 :=
.seq rawBody812_180 rawBody812_195

def rawBody812_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody812_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody812_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody812_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_201 : StackLang.HolProg 64 :=
.seq rawBody812_199 rawBody812_200

def rawBody812_202 : StackLang.HolProg 64 :=
.seq rawBody812_198 rawBody812_201

def rawBody812_203 : StackLang.HolProg 64 :=
.seq rawBody812_197 rawBody812_202

def rawBody812_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody812_205 : StackLang.HolProg 64 :=
.seq rawBody812_203 rawBody812_204

def rawBody812_206 : StackLang.HolProg 64 :=
.call (some (rawBody812_196, 0, 812, 8)) (Sum.inl 787) (some (rawBody812_205, 812, 9))

def rawBody812_207 : StackLang.HolProg 64 :=
.seq rawBody812_179 rawBody812_206

def rawBody812_208 : StackLang.HolProg 64 :=
.seq rawBody812_178 rawBody812_207

def rawBody812_209 : StackLang.HolProg 64 :=
.seq rawBody812_177 rawBody812_208

def rawBody812_210 : StackLang.HolProg 64 :=
.seq rawBody812_158 rawBody812_209

def rawBody812_211 : StackLang.HolProg 64 :=
.seq rawBody812_155 rawBody812_210

def rawBody812_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody812_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 256#64)))

def rawBody812_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody812_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody812_220 : StackLang.HolProg 64 :=
.seq rawBody812_218 rawBody812_219

def rawBody812_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4014#64)

def rawBody812_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_224 : StackLang.HolProg 64 :=
.seq rawBody812_222 rawBody812_223

def rawBody812_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody812_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody812_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 11

def rawBody812_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody812_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody812_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody812_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_235 : StackLang.HolProg 64 :=
.seq rawBody812_233 rawBody812_234

def rawBody812_236 : StackLang.HolProg 64 :=
.seq rawBody812_232 rawBody812_235

def rawBody812_237 : StackLang.HolProg 64 :=
.seq rawBody812_231 rawBody812_236

def rawBody812_238 : StackLang.HolProg 64 :=
.seq rawBody812_230 rawBody812_237

def rawBody812_239 : StackLang.HolProg 64 :=
.seq rawBody812_229 rawBody812_238

def rawBody812_240 : StackLang.HolProg 64 :=
.seq rawBody812_228 rawBody812_239

def rawBody812_241 : StackLang.HolProg 64 :=
.seq rawBody812_227 rawBody812_240

def rawBody812_242 : StackLang.HolProg 64 :=
.seq rawBody812_226 rawBody812_241

def rawBody812_243 : StackLang.HolProg 64 :=
.seq rawBody812_225 rawBody812_242

def rawBody812_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody812_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody812_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody812_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody812_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody812_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody812_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody812_255 : StackLang.HolProg 64 :=
.seq rawBody812_253 rawBody812_254

def rawBody812_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody812_258 : StackLang.HolProg 64 :=
.seq rawBody812_256 rawBody812_257

def rawBody812_259 : StackLang.HolProg 64 :=
.seq rawBody812_255 rawBody812_258

def rawBody812_260 : StackLang.HolProg 64 :=
.seq rawBody812_252 rawBody812_259

def rawBody812_261 : StackLang.HolProg 64 :=
.seq rawBody812_251 rawBody812_260

def rawBody812_262 : StackLang.HolProg 64 :=
.seq rawBody812_250 rawBody812_261

def rawBody812_263 : StackLang.HolProg 64 :=
.seq rawBody812_249 rawBody812_262

def rawBody812_264 : StackLang.HolProg 64 :=
.seq rawBody812_248 rawBody812_263

def rawBody812_265 : StackLang.HolProg 64 :=
.seq rawBody812_247 rawBody812_264

def rawBody812_266 : StackLang.HolProg 64 :=
.seq rawBody812_246 rawBody812_265

def rawBody812_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody812_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody812_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody812_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody812_271 : StackLang.HolProg 64 :=
.seq rawBody812_269 rawBody812_270

def rawBody812_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody812_274 : StackLang.HolProg 64 :=
.seq rawBody812_272 rawBody812_273

def rawBody812_275 : StackLang.HolProg 64 :=
.seq rawBody812_271 rawBody812_274

def rawBody812_276 : StackLang.HolProg 64 :=
.seq rawBody812_268 rawBody812_275

def rawBody812_277 : StackLang.HolProg 64 :=
.seq rawBody812_267 rawBody812_276

def rawBody812_278 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody812_279 : StackLang.HolProg 64 :=
.seq rawBody812_277 rawBody812_278

def rawBody812_280 : StackLang.HolProg 64 :=
.call (some (rawBody812_266, 0, 812, 10)) (Sum.inl 787) (some (rawBody812_279, 812, 11))

def rawBody812_281 : StackLang.HolProg 64 :=
.seq rawBody812_245 rawBody812_280

def rawBody812_282 : StackLang.HolProg 64 :=
.seq rawBody812_244 rawBody812_281

def rawBody812_283 : StackLang.HolProg 64 :=
.seq rawBody812_243 rawBody812_282

def rawBody812_284 : StackLang.HolProg 64 :=
.seq rawBody812_224 rawBody812_283

def rawBody812_285 : StackLang.HolProg 64 :=
.seq rawBody812_221 rawBody812_284

def rawBody812_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_288 : StackLang.HolProg 64 :=
.seq rawBody812_286 rawBody812_287

def rawBody812_289 : StackLang.HolProg 64 :=
.seq rawBody812_285 rawBody812_288

def rawBody812_290 : StackLang.HolProg 64 :=
.seq rawBody812_220 rawBody812_289

def rawBody812_291 : StackLang.HolProg 64 :=
.seq rawBody812_217 rawBody812_290

def rawBody812_292 : StackLang.HolProg 64 :=
.seq rawBody812_216 rawBody812_291

def rawBody812_293 : StackLang.HolProg 64 :=
.seq rawBody812_215 rawBody812_292

def rawBody812_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody812_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody812_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody812_298 : StackLang.HolProg 64 :=
.seq rawBody812_296 rawBody812_297

def rawBody812_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody812_301 : StackLang.HolProg 64 :=
.seq rawBody812_299 rawBody812_300

def rawBody812_302 : StackLang.HolProg 64 :=
.seq rawBody812_298 rawBody812_301

def rawBody812_303 : StackLang.HolProg 64 :=
.seq rawBody812_295 rawBody812_302

def rawBody812_304 : StackLang.HolProg 64 :=
.seq rawBody812_294 rawBody812_303

def rawBody812_305 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody812_293 rawBody812_304

def rawBody812_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody812_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 3

def rawBody812_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody812_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody812_313 : StackLang.HolProg 64 :=
.seq rawBody812_311 rawBody812_312

def rawBody812_314 : StackLang.HolProg 64 :=
.seq rawBody812_310 rawBody812_313

def rawBody812_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4015#64)

def rawBody812_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_318 : StackLang.HolProg 64 :=
.seq rawBody812_316 rawBody812_317

def rawBody812_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody812_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody812_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 13

def rawBody812_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody812_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody812_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody812_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_329 : StackLang.HolProg 64 :=
.seq rawBody812_327 rawBody812_328

def rawBody812_330 : StackLang.HolProg 64 :=
.seq rawBody812_326 rawBody812_329

def rawBody812_331 : StackLang.HolProg 64 :=
.seq rawBody812_325 rawBody812_330

def rawBody812_332 : StackLang.HolProg 64 :=
.seq rawBody812_324 rawBody812_331

def rawBody812_333 : StackLang.HolProg 64 :=
.seq rawBody812_323 rawBody812_332

def rawBody812_334 : StackLang.HolProg 64 :=
.seq rawBody812_322 rawBody812_333

def rawBody812_335 : StackLang.HolProg 64 :=
.seq rawBody812_321 rawBody812_334

def rawBody812_336 : StackLang.HolProg 64 :=
.seq rawBody812_320 rawBody812_335

def rawBody812_337 : StackLang.HolProg 64 :=
.seq rawBody812_319 rawBody812_336

def rawBody812_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody812_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody812_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody812_345 : StackLang.HolProg 64 :=
.seq rawBody812_343 rawBody812_344

def rawBody812_346 : StackLang.HolProg 64 :=
.seq rawBody812_342 rawBody812_345

def rawBody812_347 : StackLang.HolProg 64 :=
.seq rawBody812_341 rawBody812_346

def rawBody812_348 : StackLang.HolProg 64 :=
.seq rawBody812_340 rawBody812_347

def rawBody812_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody812_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody812_351 : StackLang.HolProg 64 :=
.seq rawBody812_349 rawBody812_350

def rawBody812_352 : StackLang.HolProg 64 :=
.call (some (rawBody812_348, 0, 812, 12)) (Sum.inl 70) (some (rawBody812_351, 812, 13))

def rawBody812_353 : StackLang.HolProg 64 :=
.seq rawBody812_339 rawBody812_352

def rawBody812_354 : StackLang.HolProg 64 :=
.seq rawBody812_338 rawBody812_353

def rawBody812_355 : StackLang.HolProg 64 :=
.seq rawBody812_337 rawBody812_354

def rawBody812_356 : StackLang.HolProg 64 :=
.seq rawBody812_318 rawBody812_355

def rawBody812_357 : StackLang.HolProg 64 :=
.seq rawBody812_315 rawBody812_356

def rawBody812_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody812_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody812_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody812_363 : StackLang.HolProg 64 :=
.seq rawBody812_361 rawBody812_362

def rawBody812_364 : StackLang.HolProg 64 :=
.seq rawBody812_360 rawBody812_363

def rawBody812_365 : StackLang.HolProg 64 :=
.seq rawBody812_359 rawBody812_364

def rawBody812_366 : StackLang.HolProg 64 :=
.seq rawBody812_358 rawBody812_365

def rawBody812_367 : StackLang.HolProg 64 :=
.seq rawBody812_357 rawBody812_366

def rawBody812_368 : StackLang.HolProg 64 :=
.seq rawBody812_314 rawBody812_367

def rawBody812_369 : StackLang.HolProg 64 :=
.seq rawBody812_309 rawBody812_368

def rawBody812_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_371 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody812_369 rawBody812_370

def rawBody812_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody812_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody812_376 : StackLang.HolProg 64 :=
.seq rawBody812_374 rawBody812_375

def rawBody812_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4016#64)

def rawBody812_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_380 : StackLang.HolProg 64 :=
.seq rawBody812_378 rawBody812_379

def rawBody812_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody812_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody812_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 15

def rawBody812_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody812_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody812_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody812_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_391 : StackLang.HolProg 64 :=
.seq rawBody812_389 rawBody812_390

def rawBody812_392 : StackLang.HolProg 64 :=
.seq rawBody812_388 rawBody812_391

def rawBody812_393 : StackLang.HolProg 64 :=
.seq rawBody812_387 rawBody812_392

def rawBody812_394 : StackLang.HolProg 64 :=
.seq rawBody812_386 rawBody812_393

def rawBody812_395 : StackLang.HolProg 64 :=
.seq rawBody812_385 rawBody812_394

def rawBody812_396 : StackLang.HolProg 64 :=
.seq rawBody812_384 rawBody812_395

def rawBody812_397 : StackLang.HolProg 64 :=
.seq rawBody812_383 rawBody812_396

def rawBody812_398 : StackLang.HolProg 64 :=
.seq rawBody812_382 rawBody812_397

def rawBody812_399 : StackLang.HolProg 64 :=
.seq rawBody812_381 rawBody812_398

def rawBody812_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody812_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody812_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody812_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody812_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody812_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody812_410 : StackLang.HolProg 64 :=
.seq rawBody812_408 rawBody812_409

def rawBody812_411 : StackLang.HolProg 64 :=
.seq rawBody812_407 rawBody812_410

def rawBody812_412 : StackLang.HolProg 64 :=
.seq rawBody812_406 rawBody812_411

def rawBody812_413 : StackLang.HolProg 64 :=
.seq rawBody812_405 rawBody812_412

def rawBody812_414 : StackLang.HolProg 64 :=
.seq rawBody812_404 rawBody812_413

def rawBody812_415 : StackLang.HolProg 64 :=
.seq rawBody812_403 rawBody812_414

def rawBody812_416 : StackLang.HolProg 64 :=
.seq rawBody812_402 rawBody812_415

def rawBody812_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody812_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody812_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody812_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody812_421 : StackLang.HolProg 64 :=
.seq rawBody812_419 rawBody812_420

def rawBody812_422 : StackLang.HolProg 64 :=
.seq rawBody812_418 rawBody812_421

def rawBody812_423 : StackLang.HolProg 64 :=
.seq rawBody812_417 rawBody812_422

def rawBody812_424 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody812_425 : StackLang.HolProg 64 :=
.seq rawBody812_423 rawBody812_424

def rawBody812_426 : StackLang.HolProg 64 :=
.call (some (rawBody812_416, 0, 812, 14)) (Sum.inl 783) (some (rawBody812_425, 812, 15))

def rawBody812_427 : StackLang.HolProg 64 :=
.seq rawBody812_401 rawBody812_426

def rawBody812_428 : StackLang.HolProg 64 :=
.seq rawBody812_400 rawBody812_427

def rawBody812_429 : StackLang.HolProg 64 :=
.seq rawBody812_399 rawBody812_428

def rawBody812_430 : StackLang.HolProg 64 :=
.seq rawBody812_380 rawBody812_429

def rawBody812_431 : StackLang.HolProg 64 :=
.seq rawBody812_377 rawBody812_430

def rawBody812_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody812_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4017#64)

def rawBody812_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_437 : StackLang.HolProg 64 :=
.seq rawBody812_435 rawBody812_436

def rawBody812_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody812_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody812_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 17

def rawBody812_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody812_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody812_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody812_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_448 : StackLang.HolProg 64 :=
.seq rawBody812_446 rawBody812_447

def rawBody812_449 : StackLang.HolProg 64 :=
.seq rawBody812_445 rawBody812_448

def rawBody812_450 : StackLang.HolProg 64 :=
.seq rawBody812_444 rawBody812_449

def rawBody812_451 : StackLang.HolProg 64 :=
.seq rawBody812_443 rawBody812_450

def rawBody812_452 : StackLang.HolProg 64 :=
.seq rawBody812_442 rawBody812_451

def rawBody812_453 : StackLang.HolProg 64 :=
.seq rawBody812_441 rawBody812_452

def rawBody812_454 : StackLang.HolProg 64 :=
.seq rawBody812_440 rawBody812_453

def rawBody812_455 : StackLang.HolProg 64 :=
.seq rawBody812_439 rawBody812_454

def rawBody812_456 : StackLang.HolProg 64 :=
.seq rawBody812_438 rawBody812_455

def rawBody812_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody812_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody812_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody812_464 : StackLang.HolProg 64 :=
.seq rawBody812_462 rawBody812_463

def rawBody812_465 : StackLang.HolProg 64 :=
.seq rawBody812_461 rawBody812_464

def rawBody812_466 : StackLang.HolProg 64 :=
.seq rawBody812_460 rawBody812_465

def rawBody812_467 : StackLang.HolProg 64 :=
.seq rawBody812_459 rawBody812_466

def rawBody812_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody812_469 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody812_470 : StackLang.HolProg 64 :=
.seq rawBody812_468 rawBody812_469

def rawBody812_471 : StackLang.HolProg 64 :=
.call (some (rawBody812_467, 0, 812, 16)) (Sum.inl 788) (some (rawBody812_470, 812, 17))

def rawBody812_472 : StackLang.HolProg 64 :=
.seq rawBody812_458 rawBody812_471

def rawBody812_473 : StackLang.HolProg 64 :=
.seq rawBody812_457 rawBody812_472

def rawBody812_474 : StackLang.HolProg 64 :=
.seq rawBody812_456 rawBody812_473

def rawBody812_475 : StackLang.HolProg 64 :=
.seq rawBody812_437 rawBody812_474

def rawBody812_476 : StackLang.HolProg 64 :=
.seq rawBody812_434 rawBody812_475

def rawBody812_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody812_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4018#64)

def rawBody812_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_482 : StackLang.HolProg 64 :=
.seq rawBody812_480 rawBody812_481

def rawBody812_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody812_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody812_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody812_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 812 19

def rawBody812_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody812_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody812_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody812_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody812_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_493 : StackLang.HolProg 64 :=
.seq rawBody812_491 rawBody812_492

def rawBody812_494 : StackLang.HolProg 64 :=
.seq rawBody812_490 rawBody812_493

def rawBody812_495 : StackLang.HolProg 64 :=
.seq rawBody812_489 rawBody812_494

def rawBody812_496 : StackLang.HolProg 64 :=
.seq rawBody812_488 rawBody812_495

def rawBody812_497 : StackLang.HolProg 64 :=
.seq rawBody812_487 rawBody812_496

def rawBody812_498 : StackLang.HolProg 64 :=
.seq rawBody812_486 rawBody812_497

def rawBody812_499 : StackLang.HolProg 64 :=
.seq rawBody812_485 rawBody812_498

def rawBody812_500 : StackLang.HolProg 64 :=
.seq rawBody812_484 rawBody812_499

def rawBody812_501 : StackLang.HolProg 64 :=
.seq rawBody812_483 rawBody812_500

def rawBody812_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody812_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody812_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody812_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody812_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody812_509 : StackLang.HolProg 64 :=
.seq rawBody812_507 rawBody812_508

def rawBody812_510 : StackLang.HolProg 64 :=
.seq rawBody812_506 rawBody812_509

def rawBody812_511 : StackLang.HolProg 64 :=
.seq rawBody812_505 rawBody812_510

def rawBody812_512 : StackLang.HolProg 64 :=
.seq rawBody812_504 rawBody812_511

def rawBody812_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody812_514 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody812_515 : StackLang.HolProg 64 :=
.seq rawBody812_513 rawBody812_514

def rawBody812_516 : StackLang.HolProg 64 :=
.call (some (rawBody812_512, 0, 812, 18)) (Sum.inl 70) (some (rawBody812_515, 812, 19))

def rawBody812_517 : StackLang.HolProg 64 :=
.seq rawBody812_503 rawBody812_516

def rawBody812_518 : StackLang.HolProg 64 :=
.seq rawBody812_502 rawBody812_517

def rawBody812_519 : StackLang.HolProg 64 :=
.seq rawBody812_501 rawBody812_518

def rawBody812_520 : StackLang.HolProg 64 :=
.seq rawBody812_482 rawBody812_519

def rawBody812_521 : StackLang.HolProg 64 :=
.seq rawBody812_479 rawBody812_520

def rawBody812_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody812_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody812_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody812_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody812_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody812_527 : StackLang.HolProg 64 :=
.seq rawBody812_525 rawBody812_526

def rawBody812_528 : StackLang.HolProg 64 :=
.seq rawBody812_524 rawBody812_527

def rawBody812_529 : StackLang.HolProg 64 :=
.seq rawBody812_523 rawBody812_528

def rawBody812_530 : StackLang.HolProg 64 :=
.seq rawBody812_522 rawBody812_529

def rawBody812_531 : StackLang.HolProg 64 :=
.seq rawBody812_521 rawBody812_530

def rawBody812_532 : StackLang.HolProg 64 :=
.seq rawBody812_478 rawBody812_531

def rawBody812_533 : StackLang.HolProg 64 :=
.seq rawBody812_477 rawBody812_532

def rawBody812_534 : StackLang.HolProg 64 :=
.seq rawBody812_476 rawBody812_533

def rawBody812_535 : StackLang.HolProg 64 :=
.seq rawBody812_433 rawBody812_534

def rawBody812_536 : StackLang.HolProg 64 :=
.seq rawBody812_432 rawBody812_535

def rawBody812_537 : StackLang.HolProg 64 :=
.seq rawBody812_431 rawBody812_536

def rawBody812_538 : StackLang.HolProg 64 :=
.seq rawBody812_376 rawBody812_537

def rawBody812_539 : StackLang.HolProg 64 :=
.seq rawBody812_373 rawBody812_538

def rawBody812_540 : StackLang.HolProg 64 :=
.seq rawBody812_372 rawBody812_539

def rawBody812_541 : StackLang.HolProg 64 :=
.seq rawBody812_371 rawBody812_540

def rawBody812_542 : StackLang.HolProg 64 :=
.seq rawBody812_308 rawBody812_541

def rawBody812_543 : StackLang.HolProg 64 :=
.seq rawBody812_307 rawBody812_542

def rawBody812_544 : StackLang.HolProg 64 :=
.seq rawBody812_306 rawBody812_543

def rawBody812_545 : StackLang.HolProg 64 :=
.seq rawBody812_305 rawBody812_544

def rawBody812_546 : StackLang.HolProg 64 :=
.seq rawBody812_214 rawBody812_545

def rawBody812_547 : StackLang.HolProg 64 :=
.seq rawBody812_213 rawBody812_546

def rawBody812_548 : StackLang.HolProg 64 :=
.seq rawBody812_212 rawBody812_547

def rawBody812_549 : StackLang.HolProg 64 :=
.seq rawBody812_211 rawBody812_548

def rawBody812_550 : StackLang.HolProg 64 :=
.seq rawBody812_154 rawBody812_549

def rawBody812_551 : StackLang.HolProg 64 :=
.seq rawBody812_147 rawBody812_550

def rawBody812_552 : StackLang.HolProg 64 :=
.seq rawBody812_146 rawBody812_551

def rawBody812_553 : StackLang.HolProg 64 :=
.seq rawBody812_97 rawBody812_552

def rawBody812_554 : StackLang.HolProg 64 :=
.seq rawBody812_96 rawBody812_553

def rawBody812_555 : StackLang.HolProg 64 :=
.seq rawBody812_95 rawBody812_554

def rawBody812_556 : StackLang.HolProg 64 :=
.seq rawBody812_94 rawBody812_555

def rawBody812_557 : StackLang.HolProg 64 :=
.seq rawBody812_51 rawBody812_556

def rawBody812_558 : StackLang.HolProg 64 :=
.seq rawBody812_50 rawBody812_557

def rawBody812_559 : StackLang.HolProg 64 :=
.seq rawBody812_49 rawBody812_558

def rawBody812_560 : StackLang.HolProg 64 :=
.seq rawBody812_48 rawBody812_559

def rawBody812_561 : StackLang.HolProg 64 :=
.seq rawBody812_5 rawBody812_560

def rawBody812_562 : StackLang.HolProg 64 :=
.seq rawBody812_0 rawBody812_561

def raw812 : StackLang.HolProg 64 := rawBody812_562
theorem raw812_eq : StackRawCall.compTop RawInfo.rawInfo (function812 (.list [])).1 = raw812 := by
  kernel_rfl
#print axioms raw812_eq
end InitECandidate.Proofs.BackendStages
