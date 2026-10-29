import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function522
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody522_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody522_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody522_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1696#64)

def rawBody522_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_5 : StackLang.HolProg 64 :=
.seq rawBody522_3 rawBody522_4

def rawBody522_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody522_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody522_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 3

def rawBody522_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody522_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody522_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody522_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody522_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_16 : StackLang.HolProg 64 :=
.seq rawBody522_14 rawBody522_15

def rawBody522_17 : StackLang.HolProg 64 :=
.seq rawBody522_13 rawBody522_16

def rawBody522_18 : StackLang.HolProg 64 :=
.seq rawBody522_12 rawBody522_17

def rawBody522_19 : StackLang.HolProg 64 :=
.seq rawBody522_11 rawBody522_18

def rawBody522_20 : StackLang.HolProg 64 :=
.seq rawBody522_10 rawBody522_19

def rawBody522_21 : StackLang.HolProg 64 :=
.seq rawBody522_9 rawBody522_20

def rawBody522_22 : StackLang.HolProg 64 :=
.seq rawBody522_8 rawBody522_21

def rawBody522_23 : StackLang.HolProg 64 :=
.seq rawBody522_7 rawBody522_22

def rawBody522_24 : StackLang.HolProg 64 :=
.seq rawBody522_6 rawBody522_23

def rawBody522_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody522_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody522_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody522_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody522_32 : StackLang.HolProg 64 :=
.seq rawBody522_30 rawBody522_31

def rawBody522_33 : StackLang.HolProg 64 :=
.seq rawBody522_29 rawBody522_32

def rawBody522_34 : StackLang.HolProg 64 :=
.seq rawBody522_28 rawBody522_33

def rawBody522_35 : StackLang.HolProg 64 :=
.seq rawBody522_27 rawBody522_34

def rawBody522_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody522_38 : StackLang.HolProg 64 :=
.seq rawBody522_36 rawBody522_37

def rawBody522_39 : StackLang.HolProg 64 :=
.call (some (rawBody522_35, 0, 522, 2)) (Sum.inl 475) (some (rawBody522_38, 522, 3))

def rawBody522_40 : StackLang.HolProg 64 :=
.seq rawBody522_26 rawBody522_39

def rawBody522_41 : StackLang.HolProg 64 :=
.seq rawBody522_25 rawBody522_40

def rawBody522_42 : StackLang.HolProg 64 :=
.seq rawBody522_24 rawBody522_41

def rawBody522_43 : StackLang.HolProg 64 :=
.seq rawBody522_5 rawBody522_42

def rawBody522_44 : StackLang.HolProg 64 :=
.seq rawBody522_2 rawBody522_43

def rawBody522_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody522_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def rawBody522_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody522_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody522_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody522_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody522_51 : StackLang.HolProg 64 :=
.seq rawBody522_49 rawBody522_50

def rawBody522_52 : StackLang.HolProg 64 :=
.seq rawBody522_48 rawBody522_51

def rawBody522_53 : StackLang.HolProg 64 :=
.seq rawBody522_47 rawBody522_52

def rawBody522_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1697#64)

def rawBody522_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_57 : StackLang.HolProg 64 :=
.seq rawBody522_55 rawBody522_56

def rawBody522_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody522_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody522_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 5

def rawBody522_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody522_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody522_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody522_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody522_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_68 : StackLang.HolProg 64 :=
.seq rawBody522_66 rawBody522_67

def rawBody522_69 : StackLang.HolProg 64 :=
.seq rawBody522_65 rawBody522_68

def rawBody522_70 : StackLang.HolProg 64 :=
.seq rawBody522_64 rawBody522_69

def rawBody522_71 : StackLang.HolProg 64 :=
.seq rawBody522_63 rawBody522_70

def rawBody522_72 : StackLang.HolProg 64 :=
.seq rawBody522_62 rawBody522_71

def rawBody522_73 : StackLang.HolProg 64 :=
.seq rawBody522_61 rawBody522_72

def rawBody522_74 : StackLang.HolProg 64 :=
.seq rawBody522_60 rawBody522_73

def rawBody522_75 : StackLang.HolProg 64 :=
.seq rawBody522_59 rawBody522_74

def rawBody522_76 : StackLang.HolProg 64 :=
.seq rawBody522_58 rawBody522_75

def rawBody522_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody522_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody522_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody522_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody522_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody522_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody522_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody522_87 : StackLang.HolProg 64 :=
.seq rawBody522_85 rawBody522_86

def rawBody522_88 : StackLang.HolProg 64 :=
.seq rawBody522_84 rawBody522_87

def rawBody522_89 : StackLang.HolProg 64 :=
.seq rawBody522_83 rawBody522_88

def rawBody522_90 : StackLang.HolProg 64 :=
.seq rawBody522_82 rawBody522_89

def rawBody522_91 : StackLang.HolProg 64 :=
.seq rawBody522_81 rawBody522_90

def rawBody522_92 : StackLang.HolProg 64 :=
.seq rawBody522_80 rawBody522_91

def rawBody522_93 : StackLang.HolProg 64 :=
.seq rawBody522_79 rawBody522_92

def rawBody522_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody522_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody522_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody522_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody522_98 : StackLang.HolProg 64 :=
.seq rawBody522_96 rawBody522_97

def rawBody522_99 : StackLang.HolProg 64 :=
.seq rawBody522_95 rawBody522_98

def rawBody522_100 : StackLang.HolProg 64 :=
.seq rawBody522_94 rawBody522_99

def rawBody522_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody522_102 : StackLang.HolProg 64 :=
.seq rawBody522_100 rawBody522_101

def rawBody522_103 : StackLang.HolProg 64 :=
.call (some (rawBody522_93, 0, 522, 4)) (Sum.inl 470) (some (rawBody522_102, 522, 5))

def rawBody522_104 : StackLang.HolProg 64 :=
.seq rawBody522_78 rawBody522_103

def rawBody522_105 : StackLang.HolProg 64 :=
.seq rawBody522_77 rawBody522_104

def rawBody522_106 : StackLang.HolProg 64 :=
.seq rawBody522_76 rawBody522_105

def rawBody522_107 : StackLang.HolProg 64 :=
.seq rawBody522_57 rawBody522_106

def rawBody522_108 : StackLang.HolProg 64 :=
.seq rawBody522_54 rawBody522_107

def rawBody522_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody522_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody522_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1698#64)

def rawBody522_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_114 : StackLang.HolProg 64 :=
.seq rawBody522_112 rawBody522_113

def rawBody522_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody522_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody522_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 7

def rawBody522_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody522_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody522_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody522_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody522_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_125 : StackLang.HolProg 64 :=
.seq rawBody522_123 rawBody522_124

def rawBody522_126 : StackLang.HolProg 64 :=
.seq rawBody522_122 rawBody522_125

def rawBody522_127 : StackLang.HolProg 64 :=
.seq rawBody522_121 rawBody522_126

def rawBody522_128 : StackLang.HolProg 64 :=
.seq rawBody522_120 rawBody522_127

def rawBody522_129 : StackLang.HolProg 64 :=
.seq rawBody522_119 rawBody522_128

def rawBody522_130 : StackLang.HolProg 64 :=
.seq rawBody522_118 rawBody522_129

def rawBody522_131 : StackLang.HolProg 64 :=
.seq rawBody522_117 rawBody522_130

def rawBody522_132 : StackLang.HolProg 64 :=
.seq rawBody522_116 rawBody522_131

def rawBody522_133 : StackLang.HolProg 64 :=
.seq rawBody522_115 rawBody522_132

def rawBody522_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody522_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody522_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody522_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody522_141 : StackLang.HolProg 64 :=
.seq rawBody522_139 rawBody522_140

def rawBody522_142 : StackLang.HolProg 64 :=
.seq rawBody522_138 rawBody522_141

def rawBody522_143 : StackLang.HolProg 64 :=
.seq rawBody522_137 rawBody522_142

def rawBody522_144 : StackLang.HolProg 64 :=
.seq rawBody522_136 rawBody522_143

def rawBody522_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody522_147 : StackLang.HolProg 64 :=
.seq rawBody522_145 rawBody522_146

def rawBody522_148 : StackLang.HolProg 64 :=
.call (some (rawBody522_144, 0, 522, 6)) (Sum.inl 138) (some (rawBody522_147, 522, 7))

def rawBody522_149 : StackLang.HolProg 64 :=
.seq rawBody522_135 rawBody522_148

def rawBody522_150 : StackLang.HolProg 64 :=
.seq rawBody522_134 rawBody522_149

def rawBody522_151 : StackLang.HolProg 64 :=
.seq rawBody522_133 rawBody522_150

def rawBody522_152 : StackLang.HolProg 64 :=
.seq rawBody522_114 rawBody522_151

def rawBody522_153 : StackLang.HolProg 64 :=
.seq rawBody522_111 rawBody522_152

def rawBody522_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody522_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def rawBody522_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody522_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1699#64)

def rawBody522_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_162 : StackLang.HolProg 64 :=
.seq rawBody522_160 rawBody522_161

def rawBody522_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody522_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody522_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 9

def rawBody522_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody522_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody522_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody522_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody522_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_173 : StackLang.HolProg 64 :=
.seq rawBody522_171 rawBody522_172

def rawBody522_174 : StackLang.HolProg 64 :=
.seq rawBody522_170 rawBody522_173

def rawBody522_175 : StackLang.HolProg 64 :=
.seq rawBody522_169 rawBody522_174

def rawBody522_176 : StackLang.HolProg 64 :=
.seq rawBody522_168 rawBody522_175

def rawBody522_177 : StackLang.HolProg 64 :=
.seq rawBody522_167 rawBody522_176

def rawBody522_178 : StackLang.HolProg 64 :=
.seq rawBody522_166 rawBody522_177

def rawBody522_179 : StackLang.HolProg 64 :=
.seq rawBody522_165 rawBody522_178

def rawBody522_180 : StackLang.HolProg 64 :=
.seq rawBody522_164 rawBody522_179

def rawBody522_181 : StackLang.HolProg 64 :=
.seq rawBody522_163 rawBody522_180

def rawBody522_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody522_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody522_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody522_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_189 : StackLang.HolProg 64 :=
.seq rawBody522_187 rawBody522_188

def rawBody522_190 : StackLang.HolProg 64 :=
.seq rawBody522_186 rawBody522_189

def rawBody522_191 : StackLang.HolProg 64 :=
.seq rawBody522_185 rawBody522_190

def rawBody522_192 : StackLang.HolProg 64 :=
.seq rawBody522_184 rawBody522_191

def rawBody522_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody522_195 : StackLang.HolProg 64 :=
.seq rawBody522_193 rawBody522_194

def rawBody522_196 : StackLang.HolProg 64 :=
.call (some (rawBody522_192, 0, 522, 8)) (Sum.inl 477) (some (rawBody522_195, 522, 9))

def rawBody522_197 : StackLang.HolProg 64 :=
.seq rawBody522_183 rawBody522_196

def rawBody522_198 : StackLang.HolProg 64 :=
.seq rawBody522_182 rawBody522_197

def rawBody522_199 : StackLang.HolProg 64 :=
.seq rawBody522_181 rawBody522_198

def rawBody522_200 : StackLang.HolProg 64 :=
.seq rawBody522_162 rawBody522_199

def rawBody522_201 : StackLang.HolProg 64 :=
.seq rawBody522_159 rawBody522_200

def rawBody522_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody522_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody522_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1700#64)

def rawBody522_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_208 : StackLang.HolProg 64 :=
.seq rawBody522_206 rawBody522_207

def rawBody522_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody522_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody522_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody522_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 11

def rawBody522_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody522_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody522_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody522_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody522_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_219 : StackLang.HolProg 64 :=
.seq rawBody522_217 rawBody522_218

def rawBody522_220 : StackLang.HolProg 64 :=
.seq rawBody522_216 rawBody522_219

def rawBody522_221 : StackLang.HolProg 64 :=
.seq rawBody522_215 rawBody522_220

def rawBody522_222 : StackLang.HolProg 64 :=
.seq rawBody522_214 rawBody522_221

def rawBody522_223 : StackLang.HolProg 64 :=
.seq rawBody522_213 rawBody522_222

def rawBody522_224 : StackLang.HolProg 64 :=
.seq rawBody522_212 rawBody522_223

def rawBody522_225 : StackLang.HolProg 64 :=
.seq rawBody522_211 rawBody522_224

def rawBody522_226 : StackLang.HolProg 64 :=
.seq rawBody522_210 rawBody522_225

def rawBody522_227 : StackLang.HolProg 64 :=
.seq rawBody522_209 rawBody522_226

def rawBody522_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody522_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody522_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody522_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody522_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody522_235 : StackLang.HolProg 64 :=
.seq rawBody522_233 rawBody522_234

def rawBody522_236 : StackLang.HolProg 64 :=
.seq rawBody522_232 rawBody522_235

def rawBody522_237 : StackLang.HolProg 64 :=
.seq rawBody522_231 rawBody522_236

def rawBody522_238 : StackLang.HolProg 64 :=
.seq rawBody522_230 rawBody522_237

def rawBody522_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody522_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody522_241 : StackLang.HolProg 64 :=
.seq rawBody522_239 rawBody522_240

def rawBody522_242 : StackLang.HolProg 64 :=
.call (some (rawBody522_238, 0, 522, 10)) (Sum.inl 490) (some (rawBody522_241, 522, 11))

def rawBody522_243 : StackLang.HolProg 64 :=
.seq rawBody522_229 rawBody522_242

def rawBody522_244 : StackLang.HolProg 64 :=
.seq rawBody522_228 rawBody522_243

def rawBody522_245 : StackLang.HolProg 64 :=
.seq rawBody522_227 rawBody522_244

def rawBody522_246 : StackLang.HolProg 64 :=
.seq rawBody522_208 rawBody522_245

def rawBody522_247 : StackLang.HolProg 64 :=
.seq rawBody522_205 rawBody522_246

def rawBody522_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody522_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody522_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody522_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody522_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody522_253 : StackLang.HolProg 64 :=
.seq rawBody522_251 rawBody522_252

def rawBody522_254 : StackLang.HolProg 64 :=
.seq rawBody522_250 rawBody522_253

def rawBody522_255 : StackLang.HolProg 64 :=
.seq rawBody522_249 rawBody522_254

def rawBody522_256 : StackLang.HolProg 64 :=
.seq rawBody522_248 rawBody522_255

def rawBody522_257 : StackLang.HolProg 64 :=
.seq rawBody522_247 rawBody522_256

def rawBody522_258 : StackLang.HolProg 64 :=
.seq rawBody522_204 rawBody522_257

def rawBody522_259 : StackLang.HolProg 64 :=
.seq rawBody522_203 rawBody522_258

def rawBody522_260 : StackLang.HolProg 64 :=
.seq rawBody522_202 rawBody522_259

def rawBody522_261 : StackLang.HolProg 64 :=
.seq rawBody522_201 rawBody522_260

def rawBody522_262 : StackLang.HolProg 64 :=
.seq rawBody522_158 rawBody522_261

def rawBody522_263 : StackLang.HolProg 64 :=
.seq rawBody522_157 rawBody522_262

def rawBody522_264 : StackLang.HolProg 64 :=
.seq rawBody522_156 rawBody522_263

def rawBody522_265 : StackLang.HolProg 64 :=
.seq rawBody522_155 rawBody522_264

def rawBody522_266 : StackLang.HolProg 64 :=
.seq rawBody522_154 rawBody522_265

def rawBody522_267 : StackLang.HolProg 64 :=
.seq rawBody522_153 rawBody522_266

def rawBody522_268 : StackLang.HolProg 64 :=
.seq rawBody522_110 rawBody522_267

def rawBody522_269 : StackLang.HolProg 64 :=
.seq rawBody522_109 rawBody522_268

def rawBody522_270 : StackLang.HolProg 64 :=
.seq rawBody522_108 rawBody522_269

def rawBody522_271 : StackLang.HolProg 64 :=
.seq rawBody522_53 rawBody522_270

def rawBody522_272 : StackLang.HolProg 64 :=
.seq rawBody522_46 rawBody522_271

def rawBody522_273 : StackLang.HolProg 64 :=
.seq rawBody522_45 rawBody522_272

def rawBody522_274 : StackLang.HolProg 64 :=
.seq rawBody522_44 rawBody522_273

def rawBody522_275 : StackLang.HolProg 64 :=
.seq rawBody522_1 rawBody522_274

def rawBody522_276 : StackLang.HolProg 64 :=
.seq rawBody522_0 rawBody522_275

def raw522 : StackLang.HolProg 64 := rawBody522_276
theorem raw522_eq : StackRawCall.compTop RawInfo.rawInfo (function522 (.list [])).1 = raw522 := by
  kernel_rfl
#print axioms raw522_eq
end InitECandidate.Proofs.BackendStages
