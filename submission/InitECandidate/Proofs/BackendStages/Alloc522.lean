import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw522
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody522_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody522_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody522_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1696#64)

def AllocBody522_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_5 : StackLang.HolProg 64 :=
.seq AllocBody522_3 AllocBody522_4

def AllocBody522_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody522_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody522_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 3

def AllocBody522_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody522_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody522_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody522_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody522_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_16 : StackLang.HolProg 64 :=
.seq AllocBody522_14 AllocBody522_15

def AllocBody522_17 : StackLang.HolProg 64 :=
.seq AllocBody522_13 AllocBody522_16

def AllocBody522_18 : StackLang.HolProg 64 :=
.seq AllocBody522_12 AllocBody522_17

def AllocBody522_19 : StackLang.HolProg 64 :=
.seq AllocBody522_11 AllocBody522_18

def AllocBody522_20 : StackLang.HolProg 64 :=
.seq AllocBody522_10 AllocBody522_19

def AllocBody522_21 : StackLang.HolProg 64 :=
.seq AllocBody522_9 AllocBody522_20

def AllocBody522_22 : StackLang.HolProg 64 :=
.seq AllocBody522_8 AllocBody522_21

def AllocBody522_23 : StackLang.HolProg 64 :=
.seq AllocBody522_7 AllocBody522_22

def AllocBody522_24 : StackLang.HolProg 64 :=
.seq AllocBody522_6 AllocBody522_23

def AllocBody522_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody522_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody522_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody522_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody522_32 : StackLang.HolProg 64 :=
.seq AllocBody522_30 AllocBody522_31

def AllocBody522_33 : StackLang.HolProg 64 :=
.seq AllocBody522_29 AllocBody522_32

def AllocBody522_34 : StackLang.HolProg 64 :=
.seq AllocBody522_28 AllocBody522_33

def AllocBody522_35 : StackLang.HolProg 64 :=
.seq AllocBody522_27 AllocBody522_34

def AllocBody522_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody522_38 : StackLang.HolProg 64 :=
.seq AllocBody522_36 AllocBody522_37

def AllocBody522_39 : StackLang.HolProg 64 :=
.call (some (AllocBody522_35, 0, 522, 2)) (Sum.inl 475) (some (AllocBody522_38, 522, 3))

def AllocBody522_40 : StackLang.HolProg 64 :=
.seq AllocBody522_26 AllocBody522_39

def AllocBody522_41 : StackLang.HolProg 64 :=
.seq AllocBody522_25 AllocBody522_40

def AllocBody522_42 : StackLang.HolProg 64 :=
.seq AllocBody522_24 AllocBody522_41

def AllocBody522_43 : StackLang.HolProg 64 :=
.seq AllocBody522_5 AllocBody522_42

def AllocBody522_44 : StackLang.HolProg 64 :=
.seq AllocBody522_2 AllocBody522_43

def AllocBody522_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody522_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody522_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody522_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody522_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody522_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody522_51 : StackLang.HolProg 64 :=
.seq AllocBody522_49 AllocBody522_50

def AllocBody522_52 : StackLang.HolProg 64 :=
.seq AllocBody522_48 AllocBody522_51

def AllocBody522_53 : StackLang.HolProg 64 :=
.seq AllocBody522_47 AllocBody522_52

def AllocBody522_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1697#64)

def AllocBody522_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_57 : StackLang.HolProg 64 :=
.seq AllocBody522_55 AllocBody522_56

def AllocBody522_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody522_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody522_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 5

def AllocBody522_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody522_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody522_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody522_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody522_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_68 : StackLang.HolProg 64 :=
.seq AllocBody522_66 AllocBody522_67

def AllocBody522_69 : StackLang.HolProg 64 :=
.seq AllocBody522_65 AllocBody522_68

def AllocBody522_70 : StackLang.HolProg 64 :=
.seq AllocBody522_64 AllocBody522_69

def AllocBody522_71 : StackLang.HolProg 64 :=
.seq AllocBody522_63 AllocBody522_70

def AllocBody522_72 : StackLang.HolProg 64 :=
.seq AllocBody522_62 AllocBody522_71

def AllocBody522_73 : StackLang.HolProg 64 :=
.seq AllocBody522_61 AllocBody522_72

def AllocBody522_74 : StackLang.HolProg 64 :=
.seq AllocBody522_60 AllocBody522_73

def AllocBody522_75 : StackLang.HolProg 64 :=
.seq AllocBody522_59 AllocBody522_74

def AllocBody522_76 : StackLang.HolProg 64 :=
.seq AllocBody522_58 AllocBody522_75

def AllocBody522_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody522_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody522_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody522_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody522_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody522_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody522_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody522_87 : StackLang.HolProg 64 :=
.seq AllocBody522_85 AllocBody522_86

def AllocBody522_88 : StackLang.HolProg 64 :=
.seq AllocBody522_84 AllocBody522_87

def AllocBody522_89 : StackLang.HolProg 64 :=
.seq AllocBody522_83 AllocBody522_88

def AllocBody522_90 : StackLang.HolProg 64 :=
.seq AllocBody522_82 AllocBody522_89

def AllocBody522_91 : StackLang.HolProg 64 :=
.seq AllocBody522_81 AllocBody522_90

def AllocBody522_92 : StackLang.HolProg 64 :=
.seq AllocBody522_80 AllocBody522_91

def AllocBody522_93 : StackLang.HolProg 64 :=
.seq AllocBody522_79 AllocBody522_92

def AllocBody522_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody522_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody522_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody522_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody522_98 : StackLang.HolProg 64 :=
.seq AllocBody522_96 AllocBody522_97

def AllocBody522_99 : StackLang.HolProg 64 :=
.seq AllocBody522_95 AllocBody522_98

def AllocBody522_100 : StackLang.HolProg 64 :=
.seq AllocBody522_94 AllocBody522_99

def AllocBody522_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody522_102 : StackLang.HolProg 64 :=
.seq AllocBody522_100 AllocBody522_101

def AllocBody522_103 : StackLang.HolProg 64 :=
.call (some (AllocBody522_93, 0, 522, 4)) (Sum.inl 470) (some (AllocBody522_102, 522, 5))

def AllocBody522_104 : StackLang.HolProg 64 :=
.seq AllocBody522_78 AllocBody522_103

def AllocBody522_105 : StackLang.HolProg 64 :=
.seq AllocBody522_77 AllocBody522_104

def AllocBody522_106 : StackLang.HolProg 64 :=
.seq AllocBody522_76 AllocBody522_105

def AllocBody522_107 : StackLang.HolProg 64 :=
.seq AllocBody522_57 AllocBody522_106

def AllocBody522_108 : StackLang.HolProg 64 :=
.seq AllocBody522_54 AllocBody522_107

def AllocBody522_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody522_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody522_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1698#64)

def AllocBody522_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_114 : StackLang.HolProg 64 :=
.seq AllocBody522_112 AllocBody522_113

def AllocBody522_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody522_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody522_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 7

def AllocBody522_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody522_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody522_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody522_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody522_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_125 : StackLang.HolProg 64 :=
.seq AllocBody522_123 AllocBody522_124

def AllocBody522_126 : StackLang.HolProg 64 :=
.seq AllocBody522_122 AllocBody522_125

def AllocBody522_127 : StackLang.HolProg 64 :=
.seq AllocBody522_121 AllocBody522_126

def AllocBody522_128 : StackLang.HolProg 64 :=
.seq AllocBody522_120 AllocBody522_127

def AllocBody522_129 : StackLang.HolProg 64 :=
.seq AllocBody522_119 AllocBody522_128

def AllocBody522_130 : StackLang.HolProg 64 :=
.seq AllocBody522_118 AllocBody522_129

def AllocBody522_131 : StackLang.HolProg 64 :=
.seq AllocBody522_117 AllocBody522_130

def AllocBody522_132 : StackLang.HolProg 64 :=
.seq AllocBody522_116 AllocBody522_131

def AllocBody522_133 : StackLang.HolProg 64 :=
.seq AllocBody522_115 AllocBody522_132

def AllocBody522_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody522_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody522_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody522_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody522_141 : StackLang.HolProg 64 :=
.seq AllocBody522_139 AllocBody522_140

def AllocBody522_142 : StackLang.HolProg 64 :=
.seq AllocBody522_138 AllocBody522_141

def AllocBody522_143 : StackLang.HolProg 64 :=
.seq AllocBody522_137 AllocBody522_142

def AllocBody522_144 : StackLang.HolProg 64 :=
.seq AllocBody522_136 AllocBody522_143

def AllocBody522_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody522_147 : StackLang.HolProg 64 :=
.seq AllocBody522_145 AllocBody522_146

def AllocBody522_148 : StackLang.HolProg 64 :=
.call (some (AllocBody522_144, 0, 522, 6)) (Sum.inl 138) (some (AllocBody522_147, 522, 7))

def AllocBody522_149 : StackLang.HolProg 64 :=
.seq AllocBody522_135 AllocBody522_148

def AllocBody522_150 : StackLang.HolProg 64 :=
.seq AllocBody522_134 AllocBody522_149

def AllocBody522_151 : StackLang.HolProg 64 :=
.seq AllocBody522_133 AllocBody522_150

def AllocBody522_152 : StackLang.HolProg 64 :=
.seq AllocBody522_114 AllocBody522_151

def AllocBody522_153 : StackLang.HolProg 64 :=
.seq AllocBody522_111 AllocBody522_152

def AllocBody522_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody522_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody522_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody522_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1699#64)

def AllocBody522_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_162 : StackLang.HolProg 64 :=
.seq AllocBody522_160 AllocBody522_161

def AllocBody522_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody522_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody522_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 9

def AllocBody522_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody522_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody522_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody522_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody522_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_173 : StackLang.HolProg 64 :=
.seq AllocBody522_171 AllocBody522_172

def AllocBody522_174 : StackLang.HolProg 64 :=
.seq AllocBody522_170 AllocBody522_173

def AllocBody522_175 : StackLang.HolProg 64 :=
.seq AllocBody522_169 AllocBody522_174

def AllocBody522_176 : StackLang.HolProg 64 :=
.seq AllocBody522_168 AllocBody522_175

def AllocBody522_177 : StackLang.HolProg 64 :=
.seq AllocBody522_167 AllocBody522_176

def AllocBody522_178 : StackLang.HolProg 64 :=
.seq AllocBody522_166 AllocBody522_177

def AllocBody522_179 : StackLang.HolProg 64 :=
.seq AllocBody522_165 AllocBody522_178

def AllocBody522_180 : StackLang.HolProg 64 :=
.seq AllocBody522_164 AllocBody522_179

def AllocBody522_181 : StackLang.HolProg 64 :=
.seq AllocBody522_163 AllocBody522_180

def AllocBody522_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody522_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody522_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody522_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_189 : StackLang.HolProg 64 :=
.seq AllocBody522_187 AllocBody522_188

def AllocBody522_190 : StackLang.HolProg 64 :=
.seq AllocBody522_186 AllocBody522_189

def AllocBody522_191 : StackLang.HolProg 64 :=
.seq AllocBody522_185 AllocBody522_190

def AllocBody522_192 : StackLang.HolProg 64 :=
.seq AllocBody522_184 AllocBody522_191

def AllocBody522_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody522_195 : StackLang.HolProg 64 :=
.seq AllocBody522_193 AllocBody522_194

def AllocBody522_196 : StackLang.HolProg 64 :=
.call (some (AllocBody522_192, 0, 522, 8)) (Sum.inl 477) (some (AllocBody522_195, 522, 9))

def AllocBody522_197 : StackLang.HolProg 64 :=
.seq AllocBody522_183 AllocBody522_196

def AllocBody522_198 : StackLang.HolProg 64 :=
.seq AllocBody522_182 AllocBody522_197

def AllocBody522_199 : StackLang.HolProg 64 :=
.seq AllocBody522_181 AllocBody522_198

def AllocBody522_200 : StackLang.HolProg 64 :=
.seq AllocBody522_162 AllocBody522_199

def AllocBody522_201 : StackLang.HolProg 64 :=
.seq AllocBody522_159 AllocBody522_200

def AllocBody522_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody522_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody522_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1700#64)

def AllocBody522_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_208 : StackLang.HolProg 64 :=
.seq AllocBody522_206 AllocBody522_207

def AllocBody522_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody522_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody522_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody522_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 522 11

def AllocBody522_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody522_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody522_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody522_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody522_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_219 : StackLang.HolProg 64 :=
.seq AllocBody522_217 AllocBody522_218

def AllocBody522_220 : StackLang.HolProg 64 :=
.seq AllocBody522_216 AllocBody522_219

def AllocBody522_221 : StackLang.HolProg 64 :=
.seq AllocBody522_215 AllocBody522_220

def AllocBody522_222 : StackLang.HolProg 64 :=
.seq AllocBody522_214 AllocBody522_221

def AllocBody522_223 : StackLang.HolProg 64 :=
.seq AllocBody522_213 AllocBody522_222

def AllocBody522_224 : StackLang.HolProg 64 :=
.seq AllocBody522_212 AllocBody522_223

def AllocBody522_225 : StackLang.HolProg 64 :=
.seq AllocBody522_211 AllocBody522_224

def AllocBody522_226 : StackLang.HolProg 64 :=
.seq AllocBody522_210 AllocBody522_225

def AllocBody522_227 : StackLang.HolProg 64 :=
.seq AllocBody522_209 AllocBody522_226

def AllocBody522_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody522_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody522_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody522_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody522_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody522_235 : StackLang.HolProg 64 :=
.seq AllocBody522_233 AllocBody522_234

def AllocBody522_236 : StackLang.HolProg 64 :=
.seq AllocBody522_232 AllocBody522_235

def AllocBody522_237 : StackLang.HolProg 64 :=
.seq AllocBody522_231 AllocBody522_236

def AllocBody522_238 : StackLang.HolProg 64 :=
.seq AllocBody522_230 AllocBody522_237

def AllocBody522_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody522_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody522_241 : StackLang.HolProg 64 :=
.seq AllocBody522_239 AllocBody522_240

def AllocBody522_242 : StackLang.HolProg 64 :=
.call (some (AllocBody522_238, 0, 522, 10)) (Sum.inl 490) (some (AllocBody522_241, 522, 11))

def AllocBody522_243 : StackLang.HolProg 64 :=
.seq AllocBody522_229 AllocBody522_242

def AllocBody522_244 : StackLang.HolProg 64 :=
.seq AllocBody522_228 AllocBody522_243

def AllocBody522_245 : StackLang.HolProg 64 :=
.seq AllocBody522_227 AllocBody522_244

def AllocBody522_246 : StackLang.HolProg 64 :=
.seq AllocBody522_208 AllocBody522_245

def AllocBody522_247 : StackLang.HolProg 64 :=
.seq AllocBody522_205 AllocBody522_246

def AllocBody522_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody522_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody522_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody522_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody522_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody522_253 : StackLang.HolProg 64 :=
.seq AllocBody522_251 AllocBody522_252

def AllocBody522_254 : StackLang.HolProg 64 :=
.seq AllocBody522_250 AllocBody522_253

def AllocBody522_255 : StackLang.HolProg 64 :=
.seq AllocBody522_249 AllocBody522_254

def AllocBody522_256 : StackLang.HolProg 64 :=
.seq AllocBody522_248 AllocBody522_255

def AllocBody522_257 : StackLang.HolProg 64 :=
.seq AllocBody522_247 AllocBody522_256

def AllocBody522_258 : StackLang.HolProg 64 :=
.seq AllocBody522_204 AllocBody522_257

def AllocBody522_259 : StackLang.HolProg 64 :=
.seq AllocBody522_203 AllocBody522_258

def AllocBody522_260 : StackLang.HolProg 64 :=
.seq AllocBody522_202 AllocBody522_259

def AllocBody522_261 : StackLang.HolProg 64 :=
.seq AllocBody522_201 AllocBody522_260

def AllocBody522_262 : StackLang.HolProg 64 :=
.seq AllocBody522_158 AllocBody522_261

def AllocBody522_263 : StackLang.HolProg 64 :=
.seq AllocBody522_157 AllocBody522_262

def AllocBody522_264 : StackLang.HolProg 64 :=
.seq AllocBody522_156 AllocBody522_263

def AllocBody522_265 : StackLang.HolProg 64 :=
.seq AllocBody522_155 AllocBody522_264

def AllocBody522_266 : StackLang.HolProg 64 :=
.seq AllocBody522_154 AllocBody522_265

def AllocBody522_267 : StackLang.HolProg 64 :=
.seq AllocBody522_153 AllocBody522_266

def AllocBody522_268 : StackLang.HolProg 64 :=
.seq AllocBody522_110 AllocBody522_267

def AllocBody522_269 : StackLang.HolProg 64 :=
.seq AllocBody522_109 AllocBody522_268

def AllocBody522_270 : StackLang.HolProg 64 :=
.seq AllocBody522_108 AllocBody522_269

def AllocBody522_271 : StackLang.HolProg 64 :=
.seq AllocBody522_53 AllocBody522_270

def AllocBody522_272 : StackLang.HolProg 64 :=
.seq AllocBody522_46 AllocBody522_271

def AllocBody522_273 : StackLang.HolProg 64 :=
.seq AllocBody522_45 AllocBody522_272

def AllocBody522_274 : StackLang.HolProg 64 :=
.seq AllocBody522_44 AllocBody522_273

def AllocBody522_275 : StackLang.HolProg 64 :=
.seq AllocBody522_1 AllocBody522_274

def AllocBody522_276 : StackLang.HolProg 64 :=
.seq AllocBody522_0 AllocBody522_275

def Alloc522 : Nat × StackLang.HolProg 64 := (522, AllocBody522_276)
theorem Alloc522_eq : StackAlloc.progComp (522, raw522) = Alloc522 := by
  kernel_rfl
#print axioms Alloc522_eq
end InitECandidate.Proofs.BackendStages
