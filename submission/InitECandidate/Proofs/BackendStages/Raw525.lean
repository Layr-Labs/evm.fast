import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function525
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody525_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody525_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody525_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1718#64)

def rawBody525_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody525_5 : StackLang.HolProg 64 :=
.seq rawBody525_3 rawBody525_4

def rawBody525_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody525_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody525_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody525_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 3

def rawBody525_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody525_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody525_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody525_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody525_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody525_16 : StackLang.HolProg 64 :=
.seq rawBody525_14 rawBody525_15

def rawBody525_17 : StackLang.HolProg 64 :=
.seq rawBody525_13 rawBody525_16

def rawBody525_18 : StackLang.HolProg 64 :=
.seq rawBody525_12 rawBody525_17

def rawBody525_19 : StackLang.HolProg 64 :=
.seq rawBody525_11 rawBody525_18

def rawBody525_20 : StackLang.HolProg 64 :=
.seq rawBody525_10 rawBody525_19

def rawBody525_21 : StackLang.HolProg 64 :=
.seq rawBody525_9 rawBody525_20

def rawBody525_22 : StackLang.HolProg 64 :=
.seq rawBody525_8 rawBody525_21

def rawBody525_23 : StackLang.HolProg 64 :=
.seq rawBody525_7 rawBody525_22

def rawBody525_24 : StackLang.HolProg 64 :=
.seq rawBody525_6 rawBody525_23

def rawBody525_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody525_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody525_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody525_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody525_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody525_32 : StackLang.HolProg 64 :=
.seq rawBody525_30 rawBody525_31

def rawBody525_33 : StackLang.HolProg 64 :=
.seq rawBody525_29 rawBody525_32

def rawBody525_34 : StackLang.HolProg 64 :=
.seq rawBody525_28 rawBody525_33

def rawBody525_35 : StackLang.HolProg 64 :=
.seq rawBody525_27 rawBody525_34

def rawBody525_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody525_38 : StackLang.HolProg 64 :=
.seq rawBody525_36 rawBody525_37

def rawBody525_39 : StackLang.HolProg 64 :=
.call (some (rawBody525_35, 0, 525, 2)) (Sum.inl 475) (some (rawBody525_38, 525, 3))

def rawBody525_40 : StackLang.HolProg 64 :=
.seq rawBody525_26 rawBody525_39

def rawBody525_41 : StackLang.HolProg 64 :=
.seq rawBody525_25 rawBody525_40

def rawBody525_42 : StackLang.HolProg 64 :=
.seq rawBody525_24 rawBody525_41

def rawBody525_43 : StackLang.HolProg 64 :=
.seq rawBody525_5 rawBody525_42

def rawBody525_44 : StackLang.HolProg 64 :=
.seq rawBody525_2 rawBody525_43

def rawBody525_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody525_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody525_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody525_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody525_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody525_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody525_51 : StackLang.HolProg 64 :=
.seq rawBody525_49 rawBody525_50

def rawBody525_52 : StackLang.HolProg 64 :=
.seq rawBody525_48 rawBody525_51

def rawBody525_53 : StackLang.HolProg 64 :=
.seq rawBody525_47 rawBody525_52

def rawBody525_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1719#64)

def rawBody525_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody525_57 : StackLang.HolProg 64 :=
.seq rawBody525_55 rawBody525_56

def rawBody525_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody525_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody525_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody525_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 5

def rawBody525_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody525_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody525_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody525_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody525_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody525_68 : StackLang.HolProg 64 :=
.seq rawBody525_66 rawBody525_67

def rawBody525_69 : StackLang.HolProg 64 :=
.seq rawBody525_65 rawBody525_68

def rawBody525_70 : StackLang.HolProg 64 :=
.seq rawBody525_64 rawBody525_69

def rawBody525_71 : StackLang.HolProg 64 :=
.seq rawBody525_63 rawBody525_70

def rawBody525_72 : StackLang.HolProg 64 :=
.seq rawBody525_62 rawBody525_71

def rawBody525_73 : StackLang.HolProg 64 :=
.seq rawBody525_61 rawBody525_72

def rawBody525_74 : StackLang.HolProg 64 :=
.seq rawBody525_60 rawBody525_73

def rawBody525_75 : StackLang.HolProg 64 :=
.seq rawBody525_59 rawBody525_74

def rawBody525_76 : StackLang.HolProg 64 :=
.seq rawBody525_58 rawBody525_75

def rawBody525_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody525_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody525_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody525_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody525_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody525_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody525_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody525_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody525_87 : StackLang.HolProg 64 :=
.seq rawBody525_85 rawBody525_86

def rawBody525_88 : StackLang.HolProg 64 :=
.seq rawBody525_84 rawBody525_87

def rawBody525_89 : StackLang.HolProg 64 :=
.seq rawBody525_83 rawBody525_88

def rawBody525_90 : StackLang.HolProg 64 :=
.seq rawBody525_82 rawBody525_89

def rawBody525_91 : StackLang.HolProg 64 :=
.seq rawBody525_81 rawBody525_90

def rawBody525_92 : StackLang.HolProg 64 :=
.seq rawBody525_80 rawBody525_91

def rawBody525_93 : StackLang.HolProg 64 :=
.seq rawBody525_79 rawBody525_92

def rawBody525_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody525_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody525_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody525_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody525_98 : StackLang.HolProg 64 :=
.seq rawBody525_96 rawBody525_97

def rawBody525_99 : StackLang.HolProg 64 :=
.seq rawBody525_95 rawBody525_98

def rawBody525_100 : StackLang.HolProg 64 :=
.seq rawBody525_94 rawBody525_99

def rawBody525_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody525_102 : StackLang.HolProg 64 :=
.seq rawBody525_100 rawBody525_101

def rawBody525_103 : StackLang.HolProg 64 :=
.call (some (rawBody525_93, 0, 525, 4)) (Sum.inl 470) (some (rawBody525_102, 525, 5))

def rawBody525_104 : StackLang.HolProg 64 :=
.seq rawBody525_78 rawBody525_103

def rawBody525_105 : StackLang.HolProg 64 :=
.seq rawBody525_77 rawBody525_104

def rawBody525_106 : StackLang.HolProg 64 :=
.seq rawBody525_76 rawBody525_105

def rawBody525_107 : StackLang.HolProg 64 :=
.seq rawBody525_57 rawBody525_106

def rawBody525_108 : StackLang.HolProg 64 :=
.seq rawBody525_54 rawBody525_107

def rawBody525_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody525_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody525_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody525_112 : StackLang.HolProg 64 :=
.seq rawBody525_110 rawBody525_111

def rawBody525_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1720#64)

def rawBody525_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody525_116 : StackLang.HolProg 64 :=
.seq rawBody525_114 rawBody525_115

def rawBody525_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody525_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody525_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody525_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 7

def rawBody525_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody525_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody525_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody525_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody525_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody525_127 : StackLang.HolProg 64 :=
.seq rawBody525_125 rawBody525_126

def rawBody525_128 : StackLang.HolProg 64 :=
.seq rawBody525_124 rawBody525_127

def rawBody525_129 : StackLang.HolProg 64 :=
.seq rawBody525_123 rawBody525_128

def rawBody525_130 : StackLang.HolProg 64 :=
.seq rawBody525_122 rawBody525_129

def rawBody525_131 : StackLang.HolProg 64 :=
.seq rawBody525_121 rawBody525_130

def rawBody525_132 : StackLang.HolProg 64 :=
.seq rawBody525_120 rawBody525_131

def rawBody525_133 : StackLang.HolProg 64 :=
.seq rawBody525_119 rawBody525_132

def rawBody525_134 : StackLang.HolProg 64 :=
.seq rawBody525_118 rawBody525_133

def rawBody525_135 : StackLang.HolProg 64 :=
.seq rawBody525_117 rawBody525_134

def rawBody525_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody525_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody525_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody525_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody525_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody525_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody525_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody525_145 : StackLang.HolProg 64 :=
.seq rawBody525_143 rawBody525_144

def rawBody525_146 : StackLang.HolProg 64 :=
.seq rawBody525_142 rawBody525_145

def rawBody525_147 : StackLang.HolProg 64 :=
.seq rawBody525_141 rawBody525_146

def rawBody525_148 : StackLang.HolProg 64 :=
.seq rawBody525_140 rawBody525_147

def rawBody525_149 : StackLang.HolProg 64 :=
.seq rawBody525_139 rawBody525_148

def rawBody525_150 : StackLang.HolProg 64 :=
.seq rawBody525_138 rawBody525_149

def rawBody525_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody525_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody525_153 : StackLang.HolProg 64 :=
.seq rawBody525_151 rawBody525_152

def rawBody525_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody525_155 : StackLang.HolProg 64 :=
.seq rawBody525_153 rawBody525_154

def rawBody525_156 : StackLang.HolProg 64 :=
.call (some (rawBody525_150, 0, 525, 6)) (Sum.inl 486) (some (rawBody525_155, 525, 7))

def rawBody525_157 : StackLang.HolProg 64 :=
.seq rawBody525_137 rawBody525_156

def rawBody525_158 : StackLang.HolProg 64 :=
.seq rawBody525_136 rawBody525_157

def rawBody525_159 : StackLang.HolProg 64 :=
.seq rawBody525_135 rawBody525_158

def rawBody525_160 : StackLang.HolProg 64 :=
.seq rawBody525_116 rawBody525_159

def rawBody525_161 : StackLang.HolProg 64 :=
.seq rawBody525_113 rawBody525_160

def rawBody525_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody525_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody525_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody525_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody525_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody525_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody525_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody525_172 : StackLang.HolProg 64 :=
.seq rawBody525_170 rawBody525_171

def rawBody525_173 : StackLang.HolProg 64 :=
.seq rawBody525_169 rawBody525_172

def rawBody525_174 : StackLang.HolProg 64 :=
.seq rawBody525_168 rawBody525_173

def rawBody525_175 : StackLang.HolProg 64 :=
.seq rawBody525_167 rawBody525_174

def rawBody525_176 : StackLang.HolProg 64 :=
.seq rawBody525_166 rawBody525_175

def rawBody525_177 : StackLang.HolProg 64 :=
.seq rawBody525_165 rawBody525_176

def rawBody525_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody525_177 rawBody525_178

def rawBody525_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody525_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody525_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody525_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody525_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody525_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody525_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody525_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody525_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody525_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody525_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody525_192 : StackLang.HolProg 64 :=
.seq rawBody525_190 rawBody525_191

def rawBody525_193 : StackLang.HolProg 64 :=
.seq rawBody525_189 rawBody525_192

def rawBody525_194 : StackLang.HolProg 64 :=
.seq rawBody525_188 rawBody525_193

def rawBody525_195 : StackLang.HolProg 64 :=
.seq rawBody525_187 rawBody525_194

def rawBody525_196 : StackLang.HolProg 64 :=
.seq rawBody525_186 rawBody525_195

def rawBody525_197 : StackLang.HolProg 64 :=
.seq rawBody525_185 rawBody525_196

def rawBody525_198 : StackLang.HolProg 64 :=
.seq rawBody525_184 rawBody525_197

def rawBody525_199 : StackLang.HolProg 64 :=
.seq rawBody525_183 rawBody525_198

def rawBody525_200 : StackLang.HolProg 64 :=
.seq rawBody525_182 rawBody525_199

def rawBody525_201 : StackLang.HolProg 64 :=
.seq rawBody525_181 rawBody525_200

def rawBody525_202 : StackLang.HolProg 64 :=
.seq rawBody525_180 rawBody525_201

def rawBody525_203 : StackLang.HolProg 64 :=
.seq rawBody525_179 rawBody525_202

def rawBody525_204 : StackLang.HolProg 64 :=
.seq rawBody525_164 rawBody525_203

def rawBody525_205 : StackLang.HolProg 64 :=
.seq rawBody525_163 rawBody525_204

def rawBody525_206 : StackLang.HolProg 64 :=
.seq rawBody525_162 rawBody525_205

def rawBody525_207 : StackLang.HolProg 64 :=
.seq rawBody525_161 rawBody525_206

def rawBody525_208 : StackLang.HolProg 64 :=
.seq rawBody525_112 rawBody525_207

def rawBody525_209 : StackLang.HolProg 64 :=
.seq rawBody525_109 rawBody525_208

def rawBody525_210 : StackLang.HolProg 64 :=
.seq rawBody525_108 rawBody525_209

def rawBody525_211 : StackLang.HolProg 64 :=
.seq rawBody525_53 rawBody525_210

def rawBody525_212 : StackLang.HolProg 64 :=
.seq rawBody525_46 rawBody525_211

def rawBody525_213 : StackLang.HolProg 64 :=
.seq rawBody525_45 rawBody525_212

def rawBody525_214 : StackLang.HolProg 64 :=
.seq rawBody525_44 rawBody525_213

def rawBody525_215 : StackLang.HolProg 64 :=
.seq rawBody525_1 rawBody525_214

def rawBody525_216 : StackLang.HolProg 64 :=
.seq rawBody525_0 rawBody525_215

def raw525 : StackLang.HolProg 64 := rawBody525_216
theorem raw525_eq : StackRawCall.compTop RawInfo.rawInfo (function525 (.list [])).1 = raw525 := by
  kernel_rfl
#print axioms raw525_eq
end InitECandidate.Proofs.BackendStages
