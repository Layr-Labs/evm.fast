import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function357
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody357_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody357_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody357_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody357_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody357_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody357_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody357_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody357_7 : StackLang.HolProg 64 :=
.seq rawBody357_5 rawBody357_6

def rawBody357_8 : StackLang.HolProg 64 :=
.seq rawBody357_4 rawBody357_7

def rawBody357_9 : StackLang.HolProg 64 :=
.seq rawBody357_3 rawBody357_8

def rawBody357_10 : StackLang.HolProg 64 :=
.seq rawBody357_2 rawBody357_9

def rawBody357_11 : StackLang.HolProg 64 :=
.seq rawBody357_1 rawBody357_10

def rawBody357_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1027#64)

def rawBody357_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_15 : StackLang.HolProg 64 :=
.seq rawBody357_13 rawBody357_14

def rawBody357_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody357_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody357_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 3

def rawBody357_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody357_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody357_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody357_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody357_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_26 : StackLang.HolProg 64 :=
.seq rawBody357_24 rawBody357_25

def rawBody357_27 : StackLang.HolProg 64 :=
.seq rawBody357_23 rawBody357_26

def rawBody357_28 : StackLang.HolProg 64 :=
.seq rawBody357_22 rawBody357_27

def rawBody357_29 : StackLang.HolProg 64 :=
.seq rawBody357_21 rawBody357_28

def rawBody357_30 : StackLang.HolProg 64 :=
.seq rawBody357_20 rawBody357_29

def rawBody357_31 : StackLang.HolProg 64 :=
.seq rawBody357_19 rawBody357_30

def rawBody357_32 : StackLang.HolProg 64 :=
.seq rawBody357_18 rawBody357_31

def rawBody357_33 : StackLang.HolProg 64 :=
.seq rawBody357_17 rawBody357_32

def rawBody357_34 : StackLang.HolProg 64 :=
.seq rawBody357_16 rawBody357_33

def rawBody357_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody357_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody357_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody357_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody357_42 : StackLang.HolProg 64 :=
.seq rawBody357_40 rawBody357_41

def rawBody357_43 : StackLang.HolProg 64 :=
.seq rawBody357_39 rawBody357_42

def rawBody357_44 : StackLang.HolProg 64 :=
.seq rawBody357_38 rawBody357_43

def rawBody357_45 : StackLang.HolProg 64 :=
.seq rawBody357_37 rawBody357_44

def rawBody357_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody357_48 : StackLang.HolProg 64 :=
.seq rawBody357_46 rawBody357_47

def rawBody357_49 : StackLang.HolProg 64 :=
.call (some (rawBody357_45, 0, 357, 2)) (Sum.inl 69) (some (rawBody357_48, 357, 3))

def rawBody357_50 : StackLang.HolProg 64 :=
.seq rawBody357_36 rawBody357_49

def rawBody357_51 : StackLang.HolProg 64 :=
.seq rawBody357_35 rawBody357_50

def rawBody357_52 : StackLang.HolProg 64 :=
.seq rawBody357_34 rawBody357_51

def rawBody357_53 : StackLang.HolProg 64 :=
.seq rawBody357_15 rawBody357_52

def rawBody357_54 : StackLang.HolProg 64 :=
.seq rawBody357_12 rawBody357_53

def rawBody357_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody357_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody357_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody357_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1028#64)

def rawBody357_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_61 : StackLang.HolProg 64 :=
.seq rawBody357_59 rawBody357_60

def rawBody357_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody357_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody357_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 5

def rawBody357_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody357_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody357_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody357_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody357_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_72 : StackLang.HolProg 64 :=
.seq rawBody357_70 rawBody357_71

def rawBody357_73 : StackLang.HolProg 64 :=
.seq rawBody357_69 rawBody357_72

def rawBody357_74 : StackLang.HolProg 64 :=
.seq rawBody357_68 rawBody357_73

def rawBody357_75 : StackLang.HolProg 64 :=
.seq rawBody357_67 rawBody357_74

def rawBody357_76 : StackLang.HolProg 64 :=
.seq rawBody357_66 rawBody357_75

def rawBody357_77 : StackLang.HolProg 64 :=
.seq rawBody357_65 rawBody357_76

def rawBody357_78 : StackLang.HolProg 64 :=
.seq rawBody357_64 rawBody357_77

def rawBody357_79 : StackLang.HolProg 64 :=
.seq rawBody357_63 rawBody357_78

def rawBody357_80 : StackLang.HolProg 64 :=
.seq rawBody357_62 rawBody357_79

def rawBody357_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody357_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody357_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody357_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody357_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody357_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody357_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody357_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody357_92 : StackLang.HolProg 64 :=
.seq rawBody357_90 rawBody357_91

def rawBody357_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody357_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody357_95 : StackLang.HolProg 64 :=
.seq rawBody357_93 rawBody357_94

def rawBody357_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody357_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody357_98 : StackLang.HolProg 64 :=
.seq rawBody357_96 rawBody357_97

def rawBody357_99 : StackLang.HolProg 64 :=
.seq rawBody357_95 rawBody357_98

def rawBody357_100 : StackLang.HolProg 64 :=
.seq rawBody357_92 rawBody357_99

def rawBody357_101 : StackLang.HolProg 64 :=
.seq rawBody357_89 rawBody357_100

def rawBody357_102 : StackLang.HolProg 64 :=
.seq rawBody357_88 rawBody357_101

def rawBody357_103 : StackLang.HolProg 64 :=
.seq rawBody357_87 rawBody357_102

def rawBody357_104 : StackLang.HolProg 64 :=
.seq rawBody357_86 rawBody357_103

def rawBody357_105 : StackLang.HolProg 64 :=
.seq rawBody357_85 rawBody357_104

def rawBody357_106 : StackLang.HolProg 64 :=
.seq rawBody357_84 rawBody357_105

def rawBody357_107 : StackLang.HolProg 64 :=
.seq rawBody357_83 rawBody357_106

def rawBody357_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody357_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody357_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody357_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody357_112 : StackLang.HolProg 64 :=
.seq rawBody357_110 rawBody357_111

def rawBody357_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody357_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody357_115 : StackLang.HolProg 64 :=
.seq rawBody357_113 rawBody357_114

def rawBody357_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody357_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody357_118 : StackLang.HolProg 64 :=
.seq rawBody357_116 rawBody357_117

def rawBody357_119 : StackLang.HolProg 64 :=
.seq rawBody357_115 rawBody357_118

def rawBody357_120 : StackLang.HolProg 64 :=
.seq rawBody357_112 rawBody357_119

def rawBody357_121 : StackLang.HolProg 64 :=
.seq rawBody357_109 rawBody357_120

def rawBody357_122 : StackLang.HolProg 64 :=
.seq rawBody357_108 rawBody357_121

def rawBody357_123 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody357_124 : StackLang.HolProg 64 :=
.seq rawBody357_122 rawBody357_123

def rawBody357_125 : StackLang.HolProg 64 :=
.call (some (rawBody357_107, 0, 357, 4)) (Sum.inl 68) (some (rawBody357_124, 357, 5))

def rawBody357_126 : StackLang.HolProg 64 :=
.seq rawBody357_82 rawBody357_125

def rawBody357_127 : StackLang.HolProg 64 :=
.seq rawBody357_81 rawBody357_126

def rawBody357_128 : StackLang.HolProg 64 :=
.seq rawBody357_80 rawBody357_127

def rawBody357_129 : StackLang.HolProg 64 :=
.seq rawBody357_61 rawBody357_128

def rawBody357_130 : StackLang.HolProg 64 :=
.seq rawBody357_58 rawBody357_129

def rawBody357_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody357_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody357_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody357_134 : StackLang.HolProg 64 :=
.seq rawBody357_132 rawBody357_133

def rawBody357_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1029#64)

def rawBody357_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_138 : StackLang.HolProg 64 :=
.seq rawBody357_136 rawBody357_137

def rawBody357_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody357_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody357_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 7

def rawBody357_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody357_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody357_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody357_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody357_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_149 : StackLang.HolProg 64 :=
.seq rawBody357_147 rawBody357_148

def rawBody357_150 : StackLang.HolProg 64 :=
.seq rawBody357_146 rawBody357_149

def rawBody357_151 : StackLang.HolProg 64 :=
.seq rawBody357_145 rawBody357_150

def rawBody357_152 : StackLang.HolProg 64 :=
.seq rawBody357_144 rawBody357_151

def rawBody357_153 : StackLang.HolProg 64 :=
.seq rawBody357_143 rawBody357_152

def rawBody357_154 : StackLang.HolProg 64 :=
.seq rawBody357_142 rawBody357_153

def rawBody357_155 : StackLang.HolProg 64 :=
.seq rawBody357_141 rawBody357_154

def rawBody357_156 : StackLang.HolProg 64 :=
.seq rawBody357_140 rawBody357_155

def rawBody357_157 : StackLang.HolProg 64 :=
.seq rawBody357_139 rawBody357_156

def rawBody357_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody357_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody357_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody357_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody357_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody357_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody357_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody357_168 : StackLang.HolProg 64 :=
.seq rawBody357_166 rawBody357_167

def rawBody357_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody357_170 : StackLang.HolProg 64 :=
.seq rawBody357_168 rawBody357_169

def rawBody357_171 : StackLang.HolProg 64 :=
.seq rawBody357_165 rawBody357_170

def rawBody357_172 : StackLang.HolProg 64 :=
.seq rawBody357_164 rawBody357_171

def rawBody357_173 : StackLang.HolProg 64 :=
.seq rawBody357_163 rawBody357_172

def rawBody357_174 : StackLang.HolProg 64 :=
.seq rawBody357_162 rawBody357_173

def rawBody357_175 : StackLang.HolProg 64 :=
.seq rawBody357_161 rawBody357_174

def rawBody357_176 : StackLang.HolProg 64 :=
.seq rawBody357_160 rawBody357_175

def rawBody357_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody357_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody357_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody357_180 : StackLang.HolProg 64 :=
.seq rawBody357_178 rawBody357_179

def rawBody357_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody357_182 : StackLang.HolProg 64 :=
.seq rawBody357_180 rawBody357_181

def rawBody357_183 : StackLang.HolProg 64 :=
.seq rawBody357_177 rawBody357_182

def rawBody357_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody357_185 : StackLang.HolProg 64 :=
.seq rawBody357_183 rawBody357_184

def rawBody357_186 : StackLang.HolProg 64 :=
.call (some (rawBody357_176, 0, 357, 6)) (Sum.inl 148) (some (rawBody357_185, 357, 7))

def rawBody357_187 : StackLang.HolProg 64 :=
.seq rawBody357_159 rawBody357_186

def rawBody357_188 : StackLang.HolProg 64 :=
.seq rawBody357_158 rawBody357_187

def rawBody357_189 : StackLang.HolProg 64 :=
.seq rawBody357_157 rawBody357_188

def rawBody357_190 : StackLang.HolProg 64 :=
.seq rawBody357_138 rawBody357_189

def rawBody357_191 : StackLang.HolProg 64 :=
.seq rawBody357_135 rawBody357_190

def rawBody357_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody357_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody357_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1030#64)

def rawBody357_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_197 : StackLang.HolProg 64 :=
.seq rawBody357_195 rawBody357_196

def rawBody357_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody357_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody357_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 9

def rawBody357_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody357_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody357_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody357_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody357_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_208 : StackLang.HolProg 64 :=
.seq rawBody357_206 rawBody357_207

def rawBody357_209 : StackLang.HolProg 64 :=
.seq rawBody357_205 rawBody357_208

def rawBody357_210 : StackLang.HolProg 64 :=
.seq rawBody357_204 rawBody357_209

def rawBody357_211 : StackLang.HolProg 64 :=
.seq rawBody357_203 rawBody357_210

def rawBody357_212 : StackLang.HolProg 64 :=
.seq rawBody357_202 rawBody357_211

def rawBody357_213 : StackLang.HolProg 64 :=
.seq rawBody357_201 rawBody357_212

def rawBody357_214 : StackLang.HolProg 64 :=
.seq rawBody357_200 rawBody357_213

def rawBody357_215 : StackLang.HolProg 64 :=
.seq rawBody357_199 rawBody357_214

def rawBody357_216 : StackLang.HolProg 64 :=
.seq rawBody357_198 rawBody357_215

def rawBody357_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody357_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody357_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody357_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody357_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody357_225 : StackLang.HolProg 64 :=
.seq rawBody357_223 rawBody357_224

def rawBody357_226 : StackLang.HolProg 64 :=
.seq rawBody357_222 rawBody357_225

def rawBody357_227 : StackLang.HolProg 64 :=
.seq rawBody357_221 rawBody357_226

def rawBody357_228 : StackLang.HolProg 64 :=
.seq rawBody357_220 rawBody357_227

def rawBody357_229 : StackLang.HolProg 64 :=
.seq rawBody357_219 rawBody357_228

def rawBody357_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody357_231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody357_232 : StackLang.HolProg 64 :=
.seq rawBody357_230 rawBody357_231

def rawBody357_233 : StackLang.HolProg 64 :=
.call (some (rawBody357_229, 0, 357, 8)) (Sum.inl 176) (some (rawBody357_232, 357, 9))

def rawBody357_234 : StackLang.HolProg 64 :=
.seq rawBody357_218 rawBody357_233

def rawBody357_235 : StackLang.HolProg 64 :=
.seq rawBody357_217 rawBody357_234

def rawBody357_236 : StackLang.HolProg 64 :=
.seq rawBody357_216 rawBody357_235

def rawBody357_237 : StackLang.HolProg 64 :=
.seq rawBody357_197 rawBody357_236

def rawBody357_238 : StackLang.HolProg 64 :=
.seq rawBody357_194 rawBody357_237

def rawBody357_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody357_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody357_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody357_242 : StackLang.HolProg 64 :=
.seq rawBody357_240 rawBody357_241

def rawBody357_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1031#64)

def rawBody357_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_246 : StackLang.HolProg 64 :=
.seq rawBody357_244 rawBody357_245

def rawBody357_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody357_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody357_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody357_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 11

def rawBody357_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody357_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody357_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody357_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody357_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_257 : StackLang.HolProg 64 :=
.seq rawBody357_255 rawBody357_256

def rawBody357_258 : StackLang.HolProg 64 :=
.seq rawBody357_254 rawBody357_257

def rawBody357_259 : StackLang.HolProg 64 :=
.seq rawBody357_253 rawBody357_258

def rawBody357_260 : StackLang.HolProg 64 :=
.seq rawBody357_252 rawBody357_259

def rawBody357_261 : StackLang.HolProg 64 :=
.seq rawBody357_251 rawBody357_260

def rawBody357_262 : StackLang.HolProg 64 :=
.seq rawBody357_250 rawBody357_261

def rawBody357_263 : StackLang.HolProg 64 :=
.seq rawBody357_249 rawBody357_262

def rawBody357_264 : StackLang.HolProg 64 :=
.seq rawBody357_248 rawBody357_263

def rawBody357_265 : StackLang.HolProg 64 :=
.seq rawBody357_247 rawBody357_264

def rawBody357_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody357_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody357_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody357_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody357_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody357_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody357_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody357_274 : StackLang.HolProg 64 :=
.seq rawBody357_272 rawBody357_273

def rawBody357_275 : StackLang.HolProg 64 :=
.seq rawBody357_271 rawBody357_274

def rawBody357_276 : StackLang.HolProg 64 :=
.seq rawBody357_270 rawBody357_275

def rawBody357_277 : StackLang.HolProg 64 :=
.seq rawBody357_269 rawBody357_276

def rawBody357_278 : StackLang.HolProg 64 :=
.seq rawBody357_268 rawBody357_277

def rawBody357_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody357_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody357_281 : StackLang.HolProg 64 :=
.seq rawBody357_279 rawBody357_280

def rawBody357_282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody357_283 : StackLang.HolProg 64 :=
.seq rawBody357_281 rawBody357_282

def rawBody357_284 : StackLang.HolProg 64 :=
.call (some (rawBody357_278, 0, 357, 10)) (Sum.inl 70) (some (rawBody357_283, 357, 11))

def rawBody357_285 : StackLang.HolProg 64 :=
.seq rawBody357_267 rawBody357_284

def rawBody357_286 : StackLang.HolProg 64 :=
.seq rawBody357_266 rawBody357_285

def rawBody357_287 : StackLang.HolProg 64 :=
.seq rawBody357_265 rawBody357_286

def rawBody357_288 : StackLang.HolProg 64 :=
.seq rawBody357_246 rawBody357_287

def rawBody357_289 : StackLang.HolProg 64 :=
.seq rawBody357_243 rawBody357_288

def rawBody357_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody357_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody357_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody357_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody357_294 : StackLang.HolProg 64 :=
.seq rawBody357_292 rawBody357_293

def rawBody357_295 : StackLang.HolProg 64 :=
.seq rawBody357_291 rawBody357_294

def rawBody357_296 : StackLang.HolProg 64 :=
.seq rawBody357_290 rawBody357_295

def rawBody357_297 : StackLang.HolProg 64 :=
.seq rawBody357_289 rawBody357_296

def rawBody357_298 : StackLang.HolProg 64 :=
.seq rawBody357_242 rawBody357_297

def rawBody357_299 : StackLang.HolProg 64 :=
.seq rawBody357_239 rawBody357_298

def rawBody357_300 : StackLang.HolProg 64 :=
.seq rawBody357_238 rawBody357_299

def rawBody357_301 : StackLang.HolProg 64 :=
.seq rawBody357_193 rawBody357_300

def rawBody357_302 : StackLang.HolProg 64 :=
.seq rawBody357_192 rawBody357_301

def rawBody357_303 : StackLang.HolProg 64 :=
.seq rawBody357_191 rawBody357_302

def rawBody357_304 : StackLang.HolProg 64 :=
.seq rawBody357_134 rawBody357_303

def rawBody357_305 : StackLang.HolProg 64 :=
.seq rawBody357_131 rawBody357_304

def rawBody357_306 : StackLang.HolProg 64 :=
.seq rawBody357_130 rawBody357_305

def rawBody357_307 : StackLang.HolProg 64 :=
.seq rawBody357_57 rawBody357_306

def rawBody357_308 : StackLang.HolProg 64 :=
.seq rawBody357_56 rawBody357_307

def rawBody357_309 : StackLang.HolProg 64 :=
.seq rawBody357_55 rawBody357_308

def rawBody357_310 : StackLang.HolProg 64 :=
.seq rawBody357_54 rawBody357_309

def rawBody357_311 : StackLang.HolProg 64 :=
.seq rawBody357_11 rawBody357_310

def rawBody357_312 : StackLang.HolProg 64 :=
.seq rawBody357_0 rawBody357_311

def raw357 : StackLang.HolProg 64 := rawBody357_312
theorem raw357_eq : StackRawCall.compTop RawInfo.rawInfo (function357 (.list [])).1 = raw357 := by
  kernel_rfl
#print axioms raw357_eq
end InitECandidate.Proofs.BackendStages
