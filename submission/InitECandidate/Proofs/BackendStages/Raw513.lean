import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function513
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody513_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody513_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody513_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1644#64)

def rawBody513_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_5 : StackLang.HolProg 64 :=
.seq rawBody513_3 rawBody513_4

def rawBody513_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody513_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody513_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 3

def rawBody513_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody513_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody513_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody513_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody513_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_16 : StackLang.HolProg 64 :=
.seq rawBody513_14 rawBody513_15

def rawBody513_17 : StackLang.HolProg 64 :=
.seq rawBody513_13 rawBody513_16

def rawBody513_18 : StackLang.HolProg 64 :=
.seq rawBody513_12 rawBody513_17

def rawBody513_19 : StackLang.HolProg 64 :=
.seq rawBody513_11 rawBody513_18

def rawBody513_20 : StackLang.HolProg 64 :=
.seq rawBody513_10 rawBody513_19

def rawBody513_21 : StackLang.HolProg 64 :=
.seq rawBody513_9 rawBody513_20

def rawBody513_22 : StackLang.HolProg 64 :=
.seq rawBody513_8 rawBody513_21

def rawBody513_23 : StackLang.HolProg 64 :=
.seq rawBody513_7 rawBody513_22

def rawBody513_24 : StackLang.HolProg 64 :=
.seq rawBody513_6 rawBody513_23

def rawBody513_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody513_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody513_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody513_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody513_32 : StackLang.HolProg 64 :=
.seq rawBody513_30 rawBody513_31

def rawBody513_33 : StackLang.HolProg 64 :=
.seq rawBody513_29 rawBody513_32

def rawBody513_34 : StackLang.HolProg 64 :=
.seq rawBody513_28 rawBody513_33

def rawBody513_35 : StackLang.HolProg 64 :=
.seq rawBody513_27 rawBody513_34

def rawBody513_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody513_38 : StackLang.HolProg 64 :=
.seq rawBody513_36 rawBody513_37

def rawBody513_39 : StackLang.HolProg 64 :=
.call (some (rawBody513_35, 0, 513, 2)) (Sum.inl 475) (some (rawBody513_38, 513, 3))

def rawBody513_40 : StackLang.HolProg 64 :=
.seq rawBody513_26 rawBody513_39

def rawBody513_41 : StackLang.HolProg 64 :=
.seq rawBody513_25 rawBody513_40

def rawBody513_42 : StackLang.HolProg 64 :=
.seq rawBody513_24 rawBody513_41

def rawBody513_43 : StackLang.HolProg 64 :=
.seq rawBody513_5 rawBody513_42

def rawBody513_44 : StackLang.HolProg 64 :=
.seq rawBody513_2 rawBody513_43

def rawBody513_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody513_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody513_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody513_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody513_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody513_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody513_51 : StackLang.HolProg 64 :=
.seq rawBody513_49 rawBody513_50

def rawBody513_52 : StackLang.HolProg 64 :=
.seq rawBody513_48 rawBody513_51

def rawBody513_53 : StackLang.HolProg 64 :=
.seq rawBody513_47 rawBody513_52

def rawBody513_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1645#64)

def rawBody513_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_57 : StackLang.HolProg 64 :=
.seq rawBody513_55 rawBody513_56

def rawBody513_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody513_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody513_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 5

def rawBody513_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody513_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody513_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody513_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody513_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_68 : StackLang.HolProg 64 :=
.seq rawBody513_66 rawBody513_67

def rawBody513_69 : StackLang.HolProg 64 :=
.seq rawBody513_65 rawBody513_68

def rawBody513_70 : StackLang.HolProg 64 :=
.seq rawBody513_64 rawBody513_69

def rawBody513_71 : StackLang.HolProg 64 :=
.seq rawBody513_63 rawBody513_70

def rawBody513_72 : StackLang.HolProg 64 :=
.seq rawBody513_62 rawBody513_71

def rawBody513_73 : StackLang.HolProg 64 :=
.seq rawBody513_61 rawBody513_72

def rawBody513_74 : StackLang.HolProg 64 :=
.seq rawBody513_60 rawBody513_73

def rawBody513_75 : StackLang.HolProg 64 :=
.seq rawBody513_59 rawBody513_74

def rawBody513_76 : StackLang.HolProg 64 :=
.seq rawBody513_58 rawBody513_75

def rawBody513_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody513_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody513_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody513_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody513_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody513_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody513_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody513_87 : StackLang.HolProg 64 :=
.seq rawBody513_85 rawBody513_86

def rawBody513_88 : StackLang.HolProg 64 :=
.seq rawBody513_84 rawBody513_87

def rawBody513_89 : StackLang.HolProg 64 :=
.seq rawBody513_83 rawBody513_88

def rawBody513_90 : StackLang.HolProg 64 :=
.seq rawBody513_82 rawBody513_89

def rawBody513_91 : StackLang.HolProg 64 :=
.seq rawBody513_81 rawBody513_90

def rawBody513_92 : StackLang.HolProg 64 :=
.seq rawBody513_80 rawBody513_91

def rawBody513_93 : StackLang.HolProg 64 :=
.seq rawBody513_79 rawBody513_92

def rawBody513_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody513_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody513_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody513_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody513_98 : StackLang.HolProg 64 :=
.seq rawBody513_96 rawBody513_97

def rawBody513_99 : StackLang.HolProg 64 :=
.seq rawBody513_95 rawBody513_98

def rawBody513_100 : StackLang.HolProg 64 :=
.seq rawBody513_94 rawBody513_99

def rawBody513_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody513_102 : StackLang.HolProg 64 :=
.seq rawBody513_100 rawBody513_101

def rawBody513_103 : StackLang.HolProg 64 :=
.call (some (rawBody513_93, 0, 513, 4)) (Sum.inl 470) (some (rawBody513_102, 513, 5))

def rawBody513_104 : StackLang.HolProg 64 :=
.seq rawBody513_78 rawBody513_103

def rawBody513_105 : StackLang.HolProg 64 :=
.seq rawBody513_77 rawBody513_104

def rawBody513_106 : StackLang.HolProg 64 :=
.seq rawBody513_76 rawBody513_105

def rawBody513_107 : StackLang.HolProg 64 :=
.seq rawBody513_57 rawBody513_106

def rawBody513_108 : StackLang.HolProg 64 :=
.seq rawBody513_54 rawBody513_107

def rawBody513_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody513_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody513_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1646#64)

def rawBody513_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_114 : StackLang.HolProg 64 :=
.seq rawBody513_112 rawBody513_113

def rawBody513_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody513_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody513_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 7

def rawBody513_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody513_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody513_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody513_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody513_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_125 : StackLang.HolProg 64 :=
.seq rawBody513_123 rawBody513_124

def rawBody513_126 : StackLang.HolProg 64 :=
.seq rawBody513_122 rawBody513_125

def rawBody513_127 : StackLang.HolProg 64 :=
.seq rawBody513_121 rawBody513_126

def rawBody513_128 : StackLang.HolProg 64 :=
.seq rawBody513_120 rawBody513_127

def rawBody513_129 : StackLang.HolProg 64 :=
.seq rawBody513_119 rawBody513_128

def rawBody513_130 : StackLang.HolProg 64 :=
.seq rawBody513_118 rawBody513_129

def rawBody513_131 : StackLang.HolProg 64 :=
.seq rawBody513_117 rawBody513_130

def rawBody513_132 : StackLang.HolProg 64 :=
.seq rawBody513_116 rawBody513_131

def rawBody513_133 : StackLang.HolProg 64 :=
.seq rawBody513_115 rawBody513_132

def rawBody513_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody513_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody513_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody513_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody513_141 : StackLang.HolProg 64 :=
.seq rawBody513_139 rawBody513_140

def rawBody513_142 : StackLang.HolProg 64 :=
.seq rawBody513_138 rawBody513_141

def rawBody513_143 : StackLang.HolProg 64 :=
.seq rawBody513_137 rawBody513_142

def rawBody513_144 : StackLang.HolProg 64 :=
.seq rawBody513_136 rawBody513_143

def rawBody513_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody513_147 : StackLang.HolProg 64 :=
.seq rawBody513_145 rawBody513_146

def rawBody513_148 : StackLang.HolProg 64 :=
.call (some (rawBody513_144, 0, 513, 6)) (Sum.inl 102) (some (rawBody513_147, 513, 7))

def rawBody513_149 : StackLang.HolProg 64 :=
.seq rawBody513_135 rawBody513_148

def rawBody513_150 : StackLang.HolProg 64 :=
.seq rawBody513_134 rawBody513_149

def rawBody513_151 : StackLang.HolProg 64 :=
.seq rawBody513_133 rawBody513_150

def rawBody513_152 : StackLang.HolProg 64 :=
.seq rawBody513_114 rawBody513_151

def rawBody513_153 : StackLang.HolProg 64 :=
.seq rawBody513_111 rawBody513_152

def rawBody513_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody513_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody513_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1647#64)

def rawBody513_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_159 : StackLang.HolProg 64 :=
.seq rawBody513_157 rawBody513_158

def rawBody513_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody513_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody513_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 9

def rawBody513_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody513_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody513_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody513_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody513_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_170 : StackLang.HolProg 64 :=
.seq rawBody513_168 rawBody513_169

def rawBody513_171 : StackLang.HolProg 64 :=
.seq rawBody513_167 rawBody513_170

def rawBody513_172 : StackLang.HolProg 64 :=
.seq rawBody513_166 rawBody513_171

def rawBody513_173 : StackLang.HolProg 64 :=
.seq rawBody513_165 rawBody513_172

def rawBody513_174 : StackLang.HolProg 64 :=
.seq rawBody513_164 rawBody513_173

def rawBody513_175 : StackLang.HolProg 64 :=
.seq rawBody513_163 rawBody513_174

def rawBody513_176 : StackLang.HolProg 64 :=
.seq rawBody513_162 rawBody513_175

def rawBody513_177 : StackLang.HolProg 64 :=
.seq rawBody513_161 rawBody513_176

def rawBody513_178 : StackLang.HolProg 64 :=
.seq rawBody513_160 rawBody513_177

def rawBody513_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody513_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody513_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody513_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_186 : StackLang.HolProg 64 :=
.seq rawBody513_184 rawBody513_185

def rawBody513_187 : StackLang.HolProg 64 :=
.seq rawBody513_183 rawBody513_186

def rawBody513_188 : StackLang.HolProg 64 :=
.seq rawBody513_182 rawBody513_187

def rawBody513_189 : StackLang.HolProg 64 :=
.seq rawBody513_181 rawBody513_188

def rawBody513_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_191 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody513_192 : StackLang.HolProg 64 :=
.seq rawBody513_190 rawBody513_191

def rawBody513_193 : StackLang.HolProg 64 :=
.call (some (rawBody513_189, 0, 513, 8)) (Sum.inl 478) (some (rawBody513_192, 513, 9))

def rawBody513_194 : StackLang.HolProg 64 :=
.seq rawBody513_180 rawBody513_193

def rawBody513_195 : StackLang.HolProg 64 :=
.seq rawBody513_179 rawBody513_194

def rawBody513_196 : StackLang.HolProg 64 :=
.seq rawBody513_178 rawBody513_195

def rawBody513_197 : StackLang.HolProg 64 :=
.seq rawBody513_159 rawBody513_196

def rawBody513_198 : StackLang.HolProg 64 :=
.seq rawBody513_156 rawBody513_197

def rawBody513_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody513_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody513_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1648#64)

def rawBody513_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_205 : StackLang.HolProg 64 :=
.seq rawBody513_203 rawBody513_204

def rawBody513_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody513_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody513_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody513_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 513 11

def rawBody513_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody513_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody513_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody513_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody513_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_216 : StackLang.HolProg 64 :=
.seq rawBody513_214 rawBody513_215

def rawBody513_217 : StackLang.HolProg 64 :=
.seq rawBody513_213 rawBody513_216

def rawBody513_218 : StackLang.HolProg 64 :=
.seq rawBody513_212 rawBody513_217

def rawBody513_219 : StackLang.HolProg 64 :=
.seq rawBody513_211 rawBody513_218

def rawBody513_220 : StackLang.HolProg 64 :=
.seq rawBody513_210 rawBody513_219

def rawBody513_221 : StackLang.HolProg 64 :=
.seq rawBody513_209 rawBody513_220

def rawBody513_222 : StackLang.HolProg 64 :=
.seq rawBody513_208 rawBody513_221

def rawBody513_223 : StackLang.HolProg 64 :=
.seq rawBody513_207 rawBody513_222

def rawBody513_224 : StackLang.HolProg 64 :=
.seq rawBody513_206 rawBody513_223

def rawBody513_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody513_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody513_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody513_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody513_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody513_232 : StackLang.HolProg 64 :=
.seq rawBody513_230 rawBody513_231

def rawBody513_233 : StackLang.HolProg 64 :=
.seq rawBody513_229 rawBody513_232

def rawBody513_234 : StackLang.HolProg 64 :=
.seq rawBody513_228 rawBody513_233

def rawBody513_235 : StackLang.HolProg 64 :=
.seq rawBody513_227 rawBody513_234

def rawBody513_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody513_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody513_238 : StackLang.HolProg 64 :=
.seq rawBody513_236 rawBody513_237

def rawBody513_239 : StackLang.HolProg 64 :=
.call (some (rawBody513_235, 0, 513, 10)) (Sum.inl 490) (some (rawBody513_238, 513, 11))

def rawBody513_240 : StackLang.HolProg 64 :=
.seq rawBody513_226 rawBody513_239

def rawBody513_241 : StackLang.HolProg 64 :=
.seq rawBody513_225 rawBody513_240

def rawBody513_242 : StackLang.HolProg 64 :=
.seq rawBody513_224 rawBody513_241

def rawBody513_243 : StackLang.HolProg 64 :=
.seq rawBody513_205 rawBody513_242

def rawBody513_244 : StackLang.HolProg 64 :=
.seq rawBody513_202 rawBody513_243

def rawBody513_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody513_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody513_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody513_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody513_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody513_250 : StackLang.HolProg 64 :=
.seq rawBody513_248 rawBody513_249

def rawBody513_251 : StackLang.HolProg 64 :=
.seq rawBody513_247 rawBody513_250

def rawBody513_252 : StackLang.HolProg 64 :=
.seq rawBody513_246 rawBody513_251

def rawBody513_253 : StackLang.HolProg 64 :=
.seq rawBody513_245 rawBody513_252

def rawBody513_254 : StackLang.HolProg 64 :=
.seq rawBody513_244 rawBody513_253

def rawBody513_255 : StackLang.HolProg 64 :=
.seq rawBody513_201 rawBody513_254

def rawBody513_256 : StackLang.HolProg 64 :=
.seq rawBody513_200 rawBody513_255

def rawBody513_257 : StackLang.HolProg 64 :=
.seq rawBody513_199 rawBody513_256

def rawBody513_258 : StackLang.HolProg 64 :=
.seq rawBody513_198 rawBody513_257

def rawBody513_259 : StackLang.HolProg 64 :=
.seq rawBody513_155 rawBody513_258

def rawBody513_260 : StackLang.HolProg 64 :=
.seq rawBody513_154 rawBody513_259

def rawBody513_261 : StackLang.HolProg 64 :=
.seq rawBody513_153 rawBody513_260

def rawBody513_262 : StackLang.HolProg 64 :=
.seq rawBody513_110 rawBody513_261

def rawBody513_263 : StackLang.HolProg 64 :=
.seq rawBody513_109 rawBody513_262

def rawBody513_264 : StackLang.HolProg 64 :=
.seq rawBody513_108 rawBody513_263

def rawBody513_265 : StackLang.HolProg 64 :=
.seq rawBody513_53 rawBody513_264

def rawBody513_266 : StackLang.HolProg 64 :=
.seq rawBody513_46 rawBody513_265

def rawBody513_267 : StackLang.HolProg 64 :=
.seq rawBody513_45 rawBody513_266

def rawBody513_268 : StackLang.HolProg 64 :=
.seq rawBody513_44 rawBody513_267

def rawBody513_269 : StackLang.HolProg 64 :=
.seq rawBody513_1 rawBody513_268

def rawBody513_270 : StackLang.HolProg 64 :=
.seq rawBody513_0 rawBody513_269

def raw513 : StackLang.HolProg 64 := rawBody513_270
theorem raw513_eq : StackRawCall.compTop RawInfo.rawInfo (function513 (.list [])).1 = raw513 := by
  kernel_rfl
#print axioms raw513_eq
end InitECandidate.Proofs.BackendStages
