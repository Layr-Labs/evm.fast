import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function275
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody275_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody275_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody275_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody275_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody275_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody275_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody275_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody275_7 : StackLang.HolProg 64 :=
.seq rawBody275_5 rawBody275_6

def rawBody275_8 : StackLang.HolProg 64 :=
.seq rawBody275_4 rawBody275_7

def rawBody275_9 : StackLang.HolProg 64 :=
.seq rawBody275_3 rawBody275_8

def rawBody275_10 : StackLang.HolProg 64 :=
.seq rawBody275_2 rawBody275_9

def rawBody275_11 : StackLang.HolProg 64 :=
.seq rawBody275_1 rawBody275_10

def rawBody275_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 691#64)

def rawBody275_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_15 : StackLang.HolProg 64 :=
.seq rawBody275_13 rawBody275_14

def rawBody275_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody275_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody275_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 275 3

def rawBody275_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody275_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody275_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody275_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody275_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_26 : StackLang.HolProg 64 :=
.seq rawBody275_24 rawBody275_25

def rawBody275_27 : StackLang.HolProg 64 :=
.seq rawBody275_23 rawBody275_26

def rawBody275_28 : StackLang.HolProg 64 :=
.seq rawBody275_22 rawBody275_27

def rawBody275_29 : StackLang.HolProg 64 :=
.seq rawBody275_21 rawBody275_28

def rawBody275_30 : StackLang.HolProg 64 :=
.seq rawBody275_20 rawBody275_29

def rawBody275_31 : StackLang.HolProg 64 :=
.seq rawBody275_19 rawBody275_30

def rawBody275_32 : StackLang.HolProg 64 :=
.seq rawBody275_18 rawBody275_31

def rawBody275_33 : StackLang.HolProg 64 :=
.seq rawBody275_17 rawBody275_32

def rawBody275_34 : StackLang.HolProg 64 :=
.seq rawBody275_16 rawBody275_33

def rawBody275_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody275_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody275_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody275_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody275_42 : StackLang.HolProg 64 :=
.seq rawBody275_40 rawBody275_41

def rawBody275_43 : StackLang.HolProg 64 :=
.seq rawBody275_39 rawBody275_42

def rawBody275_44 : StackLang.HolProg 64 :=
.seq rawBody275_38 rawBody275_43

def rawBody275_45 : StackLang.HolProg 64 :=
.seq rawBody275_37 rawBody275_44

def rawBody275_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody275_48 : StackLang.HolProg 64 :=
.seq rawBody275_46 rawBody275_47

def rawBody275_49 : StackLang.HolProg 64 :=
.call (some (rawBody275_45, 0, 275, 2)) (Sum.inl 69) (some (rawBody275_48, 275, 3))

def rawBody275_50 : StackLang.HolProg 64 :=
.seq rawBody275_36 rawBody275_49

def rawBody275_51 : StackLang.HolProg 64 :=
.seq rawBody275_35 rawBody275_50

def rawBody275_52 : StackLang.HolProg 64 :=
.seq rawBody275_34 rawBody275_51

def rawBody275_53 : StackLang.HolProg 64 :=
.seq rawBody275_15 rawBody275_52

def rawBody275_54 : StackLang.HolProg 64 :=
.seq rawBody275_12 rawBody275_53

def rawBody275_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody275_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody275_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody275_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 692#64)

def rawBody275_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_61 : StackLang.HolProg 64 :=
.seq rawBody275_59 rawBody275_60

def rawBody275_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody275_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody275_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 275 5

def rawBody275_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody275_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody275_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody275_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody275_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_72 : StackLang.HolProg 64 :=
.seq rawBody275_70 rawBody275_71

def rawBody275_73 : StackLang.HolProg 64 :=
.seq rawBody275_69 rawBody275_72

def rawBody275_74 : StackLang.HolProg 64 :=
.seq rawBody275_68 rawBody275_73

def rawBody275_75 : StackLang.HolProg 64 :=
.seq rawBody275_67 rawBody275_74

def rawBody275_76 : StackLang.HolProg 64 :=
.seq rawBody275_66 rawBody275_75

def rawBody275_77 : StackLang.HolProg 64 :=
.seq rawBody275_65 rawBody275_76

def rawBody275_78 : StackLang.HolProg 64 :=
.seq rawBody275_64 rawBody275_77

def rawBody275_79 : StackLang.HolProg 64 :=
.seq rawBody275_63 rawBody275_78

def rawBody275_80 : StackLang.HolProg 64 :=
.seq rawBody275_62 rawBody275_79

def rawBody275_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody275_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody275_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody275_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody275_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody275_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody275_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody275_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody275_92 : StackLang.HolProg 64 :=
.seq rawBody275_90 rawBody275_91

def rawBody275_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody275_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody275_95 : StackLang.HolProg 64 :=
.seq rawBody275_93 rawBody275_94

def rawBody275_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody275_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody275_98 : StackLang.HolProg 64 :=
.seq rawBody275_96 rawBody275_97

def rawBody275_99 : StackLang.HolProg 64 :=
.seq rawBody275_95 rawBody275_98

def rawBody275_100 : StackLang.HolProg 64 :=
.seq rawBody275_92 rawBody275_99

def rawBody275_101 : StackLang.HolProg 64 :=
.seq rawBody275_89 rawBody275_100

def rawBody275_102 : StackLang.HolProg 64 :=
.seq rawBody275_88 rawBody275_101

def rawBody275_103 : StackLang.HolProg 64 :=
.seq rawBody275_87 rawBody275_102

def rawBody275_104 : StackLang.HolProg 64 :=
.seq rawBody275_86 rawBody275_103

def rawBody275_105 : StackLang.HolProg 64 :=
.seq rawBody275_85 rawBody275_104

def rawBody275_106 : StackLang.HolProg 64 :=
.seq rawBody275_84 rawBody275_105

def rawBody275_107 : StackLang.HolProg 64 :=
.seq rawBody275_83 rawBody275_106

def rawBody275_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody275_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody275_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody275_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody275_112 : StackLang.HolProg 64 :=
.seq rawBody275_110 rawBody275_111

def rawBody275_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody275_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody275_115 : StackLang.HolProg 64 :=
.seq rawBody275_113 rawBody275_114

def rawBody275_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody275_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody275_118 : StackLang.HolProg 64 :=
.seq rawBody275_116 rawBody275_117

def rawBody275_119 : StackLang.HolProg 64 :=
.seq rawBody275_115 rawBody275_118

def rawBody275_120 : StackLang.HolProg 64 :=
.seq rawBody275_112 rawBody275_119

def rawBody275_121 : StackLang.HolProg 64 :=
.seq rawBody275_109 rawBody275_120

def rawBody275_122 : StackLang.HolProg 64 :=
.seq rawBody275_108 rawBody275_121

def rawBody275_123 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody275_124 : StackLang.HolProg 64 :=
.seq rawBody275_122 rawBody275_123

def rawBody275_125 : StackLang.HolProg 64 :=
.call (some (rawBody275_107, 0, 275, 4)) (Sum.inl 68) (some (rawBody275_124, 275, 5))

def rawBody275_126 : StackLang.HolProg 64 :=
.seq rawBody275_82 rawBody275_125

def rawBody275_127 : StackLang.HolProg 64 :=
.seq rawBody275_81 rawBody275_126

def rawBody275_128 : StackLang.HolProg 64 :=
.seq rawBody275_80 rawBody275_127

def rawBody275_129 : StackLang.HolProg 64 :=
.seq rawBody275_61 rawBody275_128

def rawBody275_130 : StackLang.HolProg 64 :=
.seq rawBody275_58 rawBody275_129

def rawBody275_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody275_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody275_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody275_134 : StackLang.HolProg 64 :=
.seq rawBody275_132 rawBody275_133

def rawBody275_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 693#64)

def rawBody275_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_138 : StackLang.HolProg 64 :=
.seq rawBody275_136 rawBody275_137

def rawBody275_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody275_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody275_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 275 7

def rawBody275_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody275_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody275_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody275_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody275_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_149 : StackLang.HolProg 64 :=
.seq rawBody275_147 rawBody275_148

def rawBody275_150 : StackLang.HolProg 64 :=
.seq rawBody275_146 rawBody275_149

def rawBody275_151 : StackLang.HolProg 64 :=
.seq rawBody275_145 rawBody275_150

def rawBody275_152 : StackLang.HolProg 64 :=
.seq rawBody275_144 rawBody275_151

def rawBody275_153 : StackLang.HolProg 64 :=
.seq rawBody275_143 rawBody275_152

def rawBody275_154 : StackLang.HolProg 64 :=
.seq rawBody275_142 rawBody275_153

def rawBody275_155 : StackLang.HolProg 64 :=
.seq rawBody275_141 rawBody275_154

def rawBody275_156 : StackLang.HolProg 64 :=
.seq rawBody275_140 rawBody275_155

def rawBody275_157 : StackLang.HolProg 64 :=
.seq rawBody275_139 rawBody275_156

def rawBody275_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody275_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody275_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody275_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody275_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody275_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody275_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody275_168 : StackLang.HolProg 64 :=
.seq rawBody275_166 rawBody275_167

def rawBody275_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody275_170 : StackLang.HolProg 64 :=
.seq rawBody275_168 rawBody275_169

def rawBody275_171 : StackLang.HolProg 64 :=
.seq rawBody275_165 rawBody275_170

def rawBody275_172 : StackLang.HolProg 64 :=
.seq rawBody275_164 rawBody275_171

def rawBody275_173 : StackLang.HolProg 64 :=
.seq rawBody275_163 rawBody275_172

def rawBody275_174 : StackLang.HolProg 64 :=
.seq rawBody275_162 rawBody275_173

def rawBody275_175 : StackLang.HolProg 64 :=
.seq rawBody275_161 rawBody275_174

def rawBody275_176 : StackLang.HolProg 64 :=
.seq rawBody275_160 rawBody275_175

def rawBody275_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody275_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody275_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody275_180 : StackLang.HolProg 64 :=
.seq rawBody275_178 rawBody275_179

def rawBody275_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody275_182 : StackLang.HolProg 64 :=
.seq rawBody275_180 rawBody275_181

def rawBody275_183 : StackLang.HolProg 64 :=
.seq rawBody275_177 rawBody275_182

def rawBody275_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody275_185 : StackLang.HolProg 64 :=
.seq rawBody275_183 rawBody275_184

def rawBody275_186 : StackLang.HolProg 64 :=
.call (some (rawBody275_176, 0, 275, 6)) (Sum.inl 148) (some (rawBody275_185, 275, 7))

def rawBody275_187 : StackLang.HolProg 64 :=
.seq rawBody275_159 rawBody275_186

def rawBody275_188 : StackLang.HolProg 64 :=
.seq rawBody275_158 rawBody275_187

def rawBody275_189 : StackLang.HolProg 64 :=
.seq rawBody275_157 rawBody275_188

def rawBody275_190 : StackLang.HolProg 64 :=
.seq rawBody275_138 rawBody275_189

def rawBody275_191 : StackLang.HolProg 64 :=
.seq rawBody275_135 rawBody275_190

def rawBody275_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody275_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody275_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 694#64)

def rawBody275_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_197 : StackLang.HolProg 64 :=
.seq rawBody275_195 rawBody275_196

def rawBody275_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody275_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody275_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 275 9

def rawBody275_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody275_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody275_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody275_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody275_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_208 : StackLang.HolProg 64 :=
.seq rawBody275_206 rawBody275_207

def rawBody275_209 : StackLang.HolProg 64 :=
.seq rawBody275_205 rawBody275_208

def rawBody275_210 : StackLang.HolProg 64 :=
.seq rawBody275_204 rawBody275_209

def rawBody275_211 : StackLang.HolProg 64 :=
.seq rawBody275_203 rawBody275_210

def rawBody275_212 : StackLang.HolProg 64 :=
.seq rawBody275_202 rawBody275_211

def rawBody275_213 : StackLang.HolProg 64 :=
.seq rawBody275_201 rawBody275_212

def rawBody275_214 : StackLang.HolProg 64 :=
.seq rawBody275_200 rawBody275_213

def rawBody275_215 : StackLang.HolProg 64 :=
.seq rawBody275_199 rawBody275_214

def rawBody275_216 : StackLang.HolProg 64 :=
.seq rawBody275_198 rawBody275_215

def rawBody275_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody275_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody275_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody275_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody275_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody275_225 : StackLang.HolProg 64 :=
.seq rawBody275_223 rawBody275_224

def rawBody275_226 : StackLang.HolProg 64 :=
.seq rawBody275_222 rawBody275_225

def rawBody275_227 : StackLang.HolProg 64 :=
.seq rawBody275_221 rawBody275_226

def rawBody275_228 : StackLang.HolProg 64 :=
.seq rawBody275_220 rawBody275_227

def rawBody275_229 : StackLang.HolProg 64 :=
.seq rawBody275_219 rawBody275_228

def rawBody275_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody275_231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody275_232 : StackLang.HolProg 64 :=
.seq rawBody275_230 rawBody275_231

def rawBody275_233 : StackLang.HolProg 64 :=
.call (some (rawBody275_229, 0, 275, 8)) (Sum.inl 176) (some (rawBody275_232, 275, 9))

def rawBody275_234 : StackLang.HolProg 64 :=
.seq rawBody275_218 rawBody275_233

def rawBody275_235 : StackLang.HolProg 64 :=
.seq rawBody275_217 rawBody275_234

def rawBody275_236 : StackLang.HolProg 64 :=
.seq rawBody275_216 rawBody275_235

def rawBody275_237 : StackLang.HolProg 64 :=
.seq rawBody275_197 rawBody275_236

def rawBody275_238 : StackLang.HolProg 64 :=
.seq rawBody275_194 rawBody275_237

def rawBody275_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody275_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody275_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody275_242 : StackLang.HolProg 64 :=
.seq rawBody275_240 rawBody275_241

def rawBody275_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 695#64)

def rawBody275_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_246 : StackLang.HolProg 64 :=
.seq rawBody275_244 rawBody275_245

def rawBody275_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody275_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody275_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody275_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 275 11

def rawBody275_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody275_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody275_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody275_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody275_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_257 : StackLang.HolProg 64 :=
.seq rawBody275_255 rawBody275_256

def rawBody275_258 : StackLang.HolProg 64 :=
.seq rawBody275_254 rawBody275_257

def rawBody275_259 : StackLang.HolProg 64 :=
.seq rawBody275_253 rawBody275_258

def rawBody275_260 : StackLang.HolProg 64 :=
.seq rawBody275_252 rawBody275_259

def rawBody275_261 : StackLang.HolProg 64 :=
.seq rawBody275_251 rawBody275_260

def rawBody275_262 : StackLang.HolProg 64 :=
.seq rawBody275_250 rawBody275_261

def rawBody275_263 : StackLang.HolProg 64 :=
.seq rawBody275_249 rawBody275_262

def rawBody275_264 : StackLang.HolProg 64 :=
.seq rawBody275_248 rawBody275_263

def rawBody275_265 : StackLang.HolProg 64 :=
.seq rawBody275_247 rawBody275_264

def rawBody275_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody275_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody275_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody275_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody275_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody275_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody275_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody275_274 : StackLang.HolProg 64 :=
.seq rawBody275_272 rawBody275_273

def rawBody275_275 : StackLang.HolProg 64 :=
.seq rawBody275_271 rawBody275_274

def rawBody275_276 : StackLang.HolProg 64 :=
.seq rawBody275_270 rawBody275_275

def rawBody275_277 : StackLang.HolProg 64 :=
.seq rawBody275_269 rawBody275_276

def rawBody275_278 : StackLang.HolProg 64 :=
.seq rawBody275_268 rawBody275_277

def rawBody275_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody275_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody275_281 : StackLang.HolProg 64 :=
.seq rawBody275_279 rawBody275_280

def rawBody275_282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody275_283 : StackLang.HolProg 64 :=
.seq rawBody275_281 rawBody275_282

def rawBody275_284 : StackLang.HolProg 64 :=
.call (some (rawBody275_278, 0, 275, 10)) (Sum.inl 70) (some (rawBody275_283, 275, 11))

def rawBody275_285 : StackLang.HolProg 64 :=
.seq rawBody275_267 rawBody275_284

def rawBody275_286 : StackLang.HolProg 64 :=
.seq rawBody275_266 rawBody275_285

def rawBody275_287 : StackLang.HolProg 64 :=
.seq rawBody275_265 rawBody275_286

def rawBody275_288 : StackLang.HolProg 64 :=
.seq rawBody275_246 rawBody275_287

def rawBody275_289 : StackLang.HolProg 64 :=
.seq rawBody275_243 rawBody275_288

def rawBody275_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody275_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody275_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody275_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody275_294 : StackLang.HolProg 64 :=
.seq rawBody275_292 rawBody275_293

def rawBody275_295 : StackLang.HolProg 64 :=
.seq rawBody275_291 rawBody275_294

def rawBody275_296 : StackLang.HolProg 64 :=
.seq rawBody275_290 rawBody275_295

def rawBody275_297 : StackLang.HolProg 64 :=
.seq rawBody275_289 rawBody275_296

def rawBody275_298 : StackLang.HolProg 64 :=
.seq rawBody275_242 rawBody275_297

def rawBody275_299 : StackLang.HolProg 64 :=
.seq rawBody275_239 rawBody275_298

def rawBody275_300 : StackLang.HolProg 64 :=
.seq rawBody275_238 rawBody275_299

def rawBody275_301 : StackLang.HolProg 64 :=
.seq rawBody275_193 rawBody275_300

def rawBody275_302 : StackLang.HolProg 64 :=
.seq rawBody275_192 rawBody275_301

def rawBody275_303 : StackLang.HolProg 64 :=
.seq rawBody275_191 rawBody275_302

def rawBody275_304 : StackLang.HolProg 64 :=
.seq rawBody275_134 rawBody275_303

def rawBody275_305 : StackLang.HolProg 64 :=
.seq rawBody275_131 rawBody275_304

def rawBody275_306 : StackLang.HolProg 64 :=
.seq rawBody275_130 rawBody275_305

def rawBody275_307 : StackLang.HolProg 64 :=
.seq rawBody275_57 rawBody275_306

def rawBody275_308 : StackLang.HolProg 64 :=
.seq rawBody275_56 rawBody275_307

def rawBody275_309 : StackLang.HolProg 64 :=
.seq rawBody275_55 rawBody275_308

def rawBody275_310 : StackLang.HolProg 64 :=
.seq rawBody275_54 rawBody275_309

def rawBody275_311 : StackLang.HolProg 64 :=
.seq rawBody275_11 rawBody275_310

def rawBody275_312 : StackLang.HolProg 64 :=
.seq rawBody275_0 rawBody275_311

def raw275 : StackLang.HolProg 64 := rawBody275_312
theorem raw275_eq : StackRawCall.compTop RawInfo.rawInfo (function275 (.list [])).1 = raw275 := by
  kernel_rfl
#print axioms raw275_eq
end InitECandidate.Proofs.BackendStages
