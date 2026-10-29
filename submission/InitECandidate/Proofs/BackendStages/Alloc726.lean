import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw726
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody726_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody726_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody726_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody726_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody726_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody726_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody726_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody726_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody726_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody726_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody726_10 : StackLang.HolProg 64 :=
.seq AllocBody726_8 AllocBody726_9

def AllocBody726_11 : StackLang.HolProg 64 :=
.seq AllocBody726_7 AllocBody726_10

def AllocBody726_12 : StackLang.HolProg 64 :=
.seq AllocBody726_6 AllocBody726_11

def AllocBody726_13 : StackLang.HolProg 64 :=
.seq AllocBody726_5 AllocBody726_12

def AllocBody726_14 : StackLang.HolProg 64 :=
.seq AllocBody726_4 AllocBody726_13

def AllocBody726_15 : StackLang.HolProg 64 :=
.seq AllocBody726_3 AllocBody726_14

def AllocBody726_16 : StackLang.HolProg 64 :=
.seq AllocBody726_2 AllocBody726_15

def AllocBody726_17 : StackLang.HolProg 64 :=
.seq AllocBody726_1 AllocBody726_16

def AllocBody726_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3248#64)

def AllocBody726_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_21 : StackLang.HolProg 64 :=
.seq AllocBody726_19 AllocBody726_20

def AllocBody726_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody726_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody726_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 3

def AllocBody726_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody726_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody726_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody726_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody726_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_32 : StackLang.HolProg 64 :=
.seq AllocBody726_30 AllocBody726_31

def AllocBody726_33 : StackLang.HolProg 64 :=
.seq AllocBody726_29 AllocBody726_32

def AllocBody726_34 : StackLang.HolProg 64 :=
.seq AllocBody726_28 AllocBody726_33

def AllocBody726_35 : StackLang.HolProg 64 :=
.seq AllocBody726_27 AllocBody726_34

def AllocBody726_36 : StackLang.HolProg 64 :=
.seq AllocBody726_26 AllocBody726_35

def AllocBody726_37 : StackLang.HolProg 64 :=
.seq AllocBody726_25 AllocBody726_36

def AllocBody726_38 : StackLang.HolProg 64 :=
.seq AllocBody726_24 AllocBody726_37

def AllocBody726_39 : StackLang.HolProg 64 :=
.seq AllocBody726_23 AllocBody726_38

def AllocBody726_40 : StackLang.HolProg 64 :=
.seq AllocBody726_22 AllocBody726_39

def AllocBody726_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody726_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody726_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody726_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody726_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody726_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody726_50 : StackLang.HolProg 64 :=
.seq AllocBody726_48 AllocBody726_49

def AllocBody726_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody726_52 : StackLang.HolProg 64 :=
.seq AllocBody726_50 AllocBody726_51

def AllocBody726_53 : StackLang.HolProg 64 :=
.seq AllocBody726_47 AllocBody726_52

def AllocBody726_54 : StackLang.HolProg 64 :=
.seq AllocBody726_46 AllocBody726_53

def AllocBody726_55 : StackLang.HolProg 64 :=
.seq AllocBody726_45 AllocBody726_54

def AllocBody726_56 : StackLang.HolProg 64 :=
.seq AllocBody726_44 AllocBody726_55

def AllocBody726_57 : StackLang.HolProg 64 :=
.seq AllocBody726_43 AllocBody726_56

def AllocBody726_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody726_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody726_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody726_61 : StackLang.HolProg 64 :=
.seq AllocBody726_59 AllocBody726_60

def AllocBody726_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody726_63 : StackLang.HolProg 64 :=
.seq AllocBody726_61 AllocBody726_62

def AllocBody726_64 : StackLang.HolProg 64 :=
.seq AllocBody726_58 AllocBody726_63

def AllocBody726_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody726_66 : StackLang.HolProg 64 :=
.seq AllocBody726_64 AllocBody726_65

def AllocBody726_67 : StackLang.HolProg 64 :=
.call (some (AllocBody726_57, 0, 726, 2)) (Sum.inl 89) (some (AllocBody726_66, 726, 3))

def AllocBody726_68 : StackLang.HolProg 64 :=
.seq AllocBody726_42 AllocBody726_67

def AllocBody726_69 : StackLang.HolProg 64 :=
.seq AllocBody726_41 AllocBody726_68

def AllocBody726_70 : StackLang.HolProg 64 :=
.seq AllocBody726_40 AllocBody726_69

def AllocBody726_71 : StackLang.HolProg 64 :=
.seq AllocBody726_21 AllocBody726_70

def AllocBody726_72 : StackLang.HolProg 64 :=
.seq AllocBody726_18 AllocBody726_71

def AllocBody726_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody726_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody726_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody726_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3249#64)

def AllocBody726_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_80 : StackLang.HolProg 64 :=
.seq AllocBody726_78 AllocBody726_79

def AllocBody726_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody726_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody726_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 5

def AllocBody726_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody726_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody726_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody726_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody726_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_91 : StackLang.HolProg 64 :=
.seq AllocBody726_89 AllocBody726_90

def AllocBody726_92 : StackLang.HolProg 64 :=
.seq AllocBody726_88 AllocBody726_91

def AllocBody726_93 : StackLang.HolProg 64 :=
.seq AllocBody726_87 AllocBody726_92

def AllocBody726_94 : StackLang.HolProg 64 :=
.seq AllocBody726_86 AllocBody726_93

def AllocBody726_95 : StackLang.HolProg 64 :=
.seq AllocBody726_85 AllocBody726_94

def AllocBody726_96 : StackLang.HolProg 64 :=
.seq AllocBody726_84 AllocBody726_95

def AllocBody726_97 : StackLang.HolProg 64 :=
.seq AllocBody726_83 AllocBody726_96

def AllocBody726_98 : StackLang.HolProg 64 :=
.seq AllocBody726_82 AllocBody726_97

def AllocBody726_99 : StackLang.HolProg 64 :=
.seq AllocBody726_81 AllocBody726_98

def AllocBody726_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody726_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody726_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody726_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody726_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody726_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody726_109 : StackLang.HolProg 64 :=
.seq AllocBody726_107 AllocBody726_108

def AllocBody726_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody726_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody726_112 : StackLang.HolProg 64 :=
.seq AllocBody726_110 AllocBody726_111

def AllocBody726_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody726_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody726_115 : StackLang.HolProg 64 :=
.seq AllocBody726_113 AllocBody726_114

def AllocBody726_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody726_117 : StackLang.HolProg 64 :=
.seq AllocBody726_115 AllocBody726_116

def AllocBody726_118 : StackLang.HolProg 64 :=
.seq AllocBody726_112 AllocBody726_117

def AllocBody726_119 : StackLang.HolProg 64 :=
.seq AllocBody726_109 AllocBody726_118

def AllocBody726_120 : StackLang.HolProg 64 :=
.seq AllocBody726_106 AllocBody726_119

def AllocBody726_121 : StackLang.HolProg 64 :=
.seq AllocBody726_105 AllocBody726_120

def AllocBody726_122 : StackLang.HolProg 64 :=
.seq AllocBody726_104 AllocBody726_121

def AllocBody726_123 : StackLang.HolProg 64 :=
.seq AllocBody726_103 AllocBody726_122

def AllocBody726_124 : StackLang.HolProg 64 :=
.seq AllocBody726_102 AllocBody726_123

def AllocBody726_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody726_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody726_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody726_128 : StackLang.HolProg 64 :=
.seq AllocBody726_126 AllocBody726_127

def AllocBody726_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody726_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody726_131 : StackLang.HolProg 64 :=
.seq AllocBody726_129 AllocBody726_130

def AllocBody726_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody726_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody726_134 : StackLang.HolProg 64 :=
.seq AllocBody726_132 AllocBody726_133

def AllocBody726_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody726_136 : StackLang.HolProg 64 :=
.seq AllocBody726_134 AllocBody726_135

def AllocBody726_137 : StackLang.HolProg 64 :=
.seq AllocBody726_131 AllocBody726_136

def AllocBody726_138 : StackLang.HolProg 64 :=
.seq AllocBody726_128 AllocBody726_137

def AllocBody726_139 : StackLang.HolProg 64 :=
.seq AllocBody726_125 AllocBody726_138

def AllocBody726_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody726_141 : StackLang.HolProg 64 :=
.seq AllocBody726_139 AllocBody726_140

def AllocBody726_142 : StackLang.HolProg 64 :=
.call (some (AllocBody726_124, 0, 726, 4)) (Sum.inl 89) (some (AllocBody726_141, 726, 5))

def AllocBody726_143 : StackLang.HolProg 64 :=
.seq AllocBody726_101 AllocBody726_142

def AllocBody726_144 : StackLang.HolProg 64 :=
.seq AllocBody726_100 AllocBody726_143

def AllocBody726_145 : StackLang.HolProg 64 :=
.seq AllocBody726_99 AllocBody726_144

def AllocBody726_146 : StackLang.HolProg 64 :=
.seq AllocBody726_80 AllocBody726_145

def AllocBody726_147 : StackLang.HolProg 64 :=
.seq AllocBody726_77 AllocBody726_146

def AllocBody726_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody726_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody726_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody726_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3250#64)

def AllocBody726_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_155 : StackLang.HolProg 64 :=
.seq AllocBody726_153 AllocBody726_154

def AllocBody726_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody726_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody726_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 7

def AllocBody726_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody726_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody726_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody726_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody726_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_166 : StackLang.HolProg 64 :=
.seq AllocBody726_164 AllocBody726_165

def AllocBody726_167 : StackLang.HolProg 64 :=
.seq AllocBody726_163 AllocBody726_166

def AllocBody726_168 : StackLang.HolProg 64 :=
.seq AllocBody726_162 AllocBody726_167

def AllocBody726_169 : StackLang.HolProg 64 :=
.seq AllocBody726_161 AllocBody726_168

def AllocBody726_170 : StackLang.HolProg 64 :=
.seq AllocBody726_160 AllocBody726_169

def AllocBody726_171 : StackLang.HolProg 64 :=
.seq AllocBody726_159 AllocBody726_170

def AllocBody726_172 : StackLang.HolProg 64 :=
.seq AllocBody726_158 AllocBody726_171

def AllocBody726_173 : StackLang.HolProg 64 :=
.seq AllocBody726_157 AllocBody726_172

def AllocBody726_174 : StackLang.HolProg 64 :=
.seq AllocBody726_156 AllocBody726_173

def AllocBody726_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody726_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody726_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody726_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody726_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody726_183 : StackLang.HolProg 64 :=
.seq AllocBody726_181 AllocBody726_182

def AllocBody726_184 : StackLang.HolProg 64 :=
.seq AllocBody726_180 AllocBody726_183

def AllocBody726_185 : StackLang.HolProg 64 :=
.seq AllocBody726_179 AllocBody726_184

def AllocBody726_186 : StackLang.HolProg 64 :=
.seq AllocBody726_178 AllocBody726_185

def AllocBody726_187 : StackLang.HolProg 64 :=
.seq AllocBody726_177 AllocBody726_186

def AllocBody726_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody726_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody726_190 : StackLang.HolProg 64 :=
.seq AllocBody726_188 AllocBody726_189

def AllocBody726_191 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody726_192 : StackLang.HolProg 64 :=
.seq AllocBody726_190 AllocBody726_191

def AllocBody726_193 : StackLang.HolProg 64 :=
.call (some (AllocBody726_187, 0, 726, 6)) (Sum.inl 89) (some (AllocBody726_192, 726, 7))

def AllocBody726_194 : StackLang.HolProg 64 :=
.seq AllocBody726_176 AllocBody726_193

def AllocBody726_195 : StackLang.HolProg 64 :=
.seq AllocBody726_175 AllocBody726_194

def AllocBody726_196 : StackLang.HolProg 64 :=
.seq AllocBody726_174 AllocBody726_195

def AllocBody726_197 : StackLang.HolProg 64 :=
.seq AllocBody726_155 AllocBody726_196

def AllocBody726_198 : StackLang.HolProg 64 :=
.seq AllocBody726_152 AllocBody726_197

def AllocBody726_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody726_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody726_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody726_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3251#64)

def AllocBody726_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_206 : StackLang.HolProg 64 :=
.seq AllocBody726_204 AllocBody726_205

def AllocBody726_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody726_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody726_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 9

def AllocBody726_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody726_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody726_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody726_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody726_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_217 : StackLang.HolProg 64 :=
.seq AllocBody726_215 AllocBody726_216

def AllocBody726_218 : StackLang.HolProg 64 :=
.seq AllocBody726_214 AllocBody726_217

def AllocBody726_219 : StackLang.HolProg 64 :=
.seq AllocBody726_213 AllocBody726_218

def AllocBody726_220 : StackLang.HolProg 64 :=
.seq AllocBody726_212 AllocBody726_219

def AllocBody726_221 : StackLang.HolProg 64 :=
.seq AllocBody726_211 AllocBody726_220

def AllocBody726_222 : StackLang.HolProg 64 :=
.seq AllocBody726_210 AllocBody726_221

def AllocBody726_223 : StackLang.HolProg 64 :=
.seq AllocBody726_209 AllocBody726_222

def AllocBody726_224 : StackLang.HolProg 64 :=
.seq AllocBody726_208 AllocBody726_223

def AllocBody726_225 : StackLang.HolProg 64 :=
.seq AllocBody726_207 AllocBody726_224

def AllocBody726_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody726_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody726_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody726_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody726_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody726_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody726_235 : StackLang.HolProg 64 :=
.seq AllocBody726_233 AllocBody726_234

def AllocBody726_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody726_237 : StackLang.HolProg 64 :=
.seq AllocBody726_235 AllocBody726_236

def AllocBody726_238 : StackLang.HolProg 64 :=
.seq AllocBody726_232 AllocBody726_237

def AllocBody726_239 : StackLang.HolProg 64 :=
.seq AllocBody726_231 AllocBody726_238

def AllocBody726_240 : StackLang.HolProg 64 :=
.seq AllocBody726_230 AllocBody726_239

def AllocBody726_241 : StackLang.HolProg 64 :=
.seq AllocBody726_229 AllocBody726_240

def AllocBody726_242 : StackLang.HolProg 64 :=
.seq AllocBody726_228 AllocBody726_241

def AllocBody726_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody726_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody726_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody726_246 : StackLang.HolProg 64 :=
.seq AllocBody726_244 AllocBody726_245

def AllocBody726_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody726_248 : StackLang.HolProg 64 :=
.seq AllocBody726_246 AllocBody726_247

def AllocBody726_249 : StackLang.HolProg 64 :=
.seq AllocBody726_243 AllocBody726_248

def AllocBody726_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody726_251 : StackLang.HolProg 64 :=
.seq AllocBody726_249 AllocBody726_250

def AllocBody726_252 : StackLang.HolProg 64 :=
.call (some (AllocBody726_242, 0, 726, 8)) (Sum.inl 89) (some (AllocBody726_251, 726, 9))

def AllocBody726_253 : StackLang.HolProg 64 :=
.seq AllocBody726_227 AllocBody726_252

def AllocBody726_254 : StackLang.HolProg 64 :=
.seq AllocBody726_226 AllocBody726_253

def AllocBody726_255 : StackLang.HolProg 64 :=
.seq AllocBody726_225 AllocBody726_254

def AllocBody726_256 : StackLang.HolProg 64 :=
.seq AllocBody726_206 AllocBody726_255

def AllocBody726_257 : StackLang.HolProg 64 :=
.seq AllocBody726_203 AllocBody726_256

def AllocBody726_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody726_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody726_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody726_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3252#64)

def AllocBody726_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_265 : StackLang.HolProg 64 :=
.seq AllocBody726_263 AllocBody726_264

def AllocBody726_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody726_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody726_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 11

def AllocBody726_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody726_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody726_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody726_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody726_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_276 : StackLang.HolProg 64 :=
.seq AllocBody726_274 AllocBody726_275

def AllocBody726_277 : StackLang.HolProg 64 :=
.seq AllocBody726_273 AllocBody726_276

def AllocBody726_278 : StackLang.HolProg 64 :=
.seq AllocBody726_272 AllocBody726_277

def AllocBody726_279 : StackLang.HolProg 64 :=
.seq AllocBody726_271 AllocBody726_278

def AllocBody726_280 : StackLang.HolProg 64 :=
.seq AllocBody726_270 AllocBody726_279

def AllocBody726_281 : StackLang.HolProg 64 :=
.seq AllocBody726_269 AllocBody726_280

def AllocBody726_282 : StackLang.HolProg 64 :=
.seq AllocBody726_268 AllocBody726_281

def AllocBody726_283 : StackLang.HolProg 64 :=
.seq AllocBody726_267 AllocBody726_282

def AllocBody726_284 : StackLang.HolProg 64 :=
.seq AllocBody726_266 AllocBody726_283

def AllocBody726_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody726_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody726_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody726_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody726_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody726_293 : StackLang.HolProg 64 :=
.seq AllocBody726_291 AllocBody726_292

def AllocBody726_294 : StackLang.HolProg 64 :=
.seq AllocBody726_290 AllocBody726_293

def AllocBody726_295 : StackLang.HolProg 64 :=
.seq AllocBody726_289 AllocBody726_294

def AllocBody726_296 : StackLang.HolProg 64 :=
.seq AllocBody726_288 AllocBody726_295

def AllocBody726_297 : StackLang.HolProg 64 :=
.seq AllocBody726_287 AllocBody726_296

def AllocBody726_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody726_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody726_300 : StackLang.HolProg 64 :=
.seq AllocBody726_298 AllocBody726_299

def AllocBody726_301 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody726_302 : StackLang.HolProg 64 :=
.seq AllocBody726_300 AllocBody726_301

def AllocBody726_303 : StackLang.HolProg 64 :=
.call (some (AllocBody726_297, 0, 726, 10)) (Sum.inl 89) (some (AllocBody726_302, 726, 11))

def AllocBody726_304 : StackLang.HolProg 64 :=
.seq AllocBody726_286 AllocBody726_303

def AllocBody726_305 : StackLang.HolProg 64 :=
.seq AllocBody726_285 AllocBody726_304

def AllocBody726_306 : StackLang.HolProg 64 :=
.seq AllocBody726_284 AllocBody726_305

def AllocBody726_307 : StackLang.HolProg 64 :=
.seq AllocBody726_265 AllocBody726_306

def AllocBody726_308 : StackLang.HolProg 64 :=
.seq AllocBody726_262 AllocBody726_307

def AllocBody726_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody726_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody726_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3253#64)

def AllocBody726_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_316 : StackLang.HolProg 64 :=
.seq AllocBody726_314 AllocBody726_315

def AllocBody726_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody726_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody726_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody726_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 13

def AllocBody726_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody726_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody726_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody726_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody726_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_327 : StackLang.HolProg 64 :=
.seq AllocBody726_325 AllocBody726_326

def AllocBody726_328 : StackLang.HolProg 64 :=
.seq AllocBody726_324 AllocBody726_327

def AllocBody726_329 : StackLang.HolProg 64 :=
.seq AllocBody726_323 AllocBody726_328

def AllocBody726_330 : StackLang.HolProg 64 :=
.seq AllocBody726_322 AllocBody726_329

def AllocBody726_331 : StackLang.HolProg 64 :=
.seq AllocBody726_321 AllocBody726_330

def AllocBody726_332 : StackLang.HolProg 64 :=
.seq AllocBody726_320 AllocBody726_331

def AllocBody726_333 : StackLang.HolProg 64 :=
.seq AllocBody726_319 AllocBody726_332

def AllocBody726_334 : StackLang.HolProg 64 :=
.seq AllocBody726_318 AllocBody726_333

def AllocBody726_335 : StackLang.HolProg 64 :=
.seq AllocBody726_317 AllocBody726_334

def AllocBody726_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody726_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody726_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody726_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody726_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody726_343 : StackLang.HolProg 64 :=
.seq AllocBody726_341 AllocBody726_342

def AllocBody726_344 : StackLang.HolProg 64 :=
.seq AllocBody726_340 AllocBody726_343

def AllocBody726_345 : StackLang.HolProg 64 :=
.seq AllocBody726_339 AllocBody726_344

def AllocBody726_346 : StackLang.HolProg 64 :=
.seq AllocBody726_338 AllocBody726_345

def AllocBody726_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody726_348 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody726_349 : StackLang.HolProg 64 :=
.seq AllocBody726_347 AllocBody726_348

def AllocBody726_350 : StackLang.HolProg 64 :=
.call (some (AllocBody726_346, 0, 726, 12)) (Sum.inl 89) (some (AllocBody726_349, 726, 13))

def AllocBody726_351 : StackLang.HolProg 64 :=
.seq AllocBody726_337 AllocBody726_350

def AllocBody726_352 : StackLang.HolProg 64 :=
.seq AllocBody726_336 AllocBody726_351

def AllocBody726_353 : StackLang.HolProg 64 :=
.seq AllocBody726_335 AllocBody726_352

def AllocBody726_354 : StackLang.HolProg 64 :=
.seq AllocBody726_316 AllocBody726_353

def AllocBody726_355 : StackLang.HolProg 64 :=
.seq AllocBody726_313 AllocBody726_354

def AllocBody726_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody726_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody726_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody726_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody726_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody726_361 : StackLang.HolProg 64 :=
.seq AllocBody726_359 AllocBody726_360

def AllocBody726_362 : StackLang.HolProg 64 :=
.seq AllocBody726_358 AllocBody726_361

def AllocBody726_363 : StackLang.HolProg 64 :=
.seq AllocBody726_357 AllocBody726_362

def AllocBody726_364 : StackLang.HolProg 64 :=
.seq AllocBody726_356 AllocBody726_363

def AllocBody726_365 : StackLang.HolProg 64 :=
.seq AllocBody726_355 AllocBody726_364

def AllocBody726_366 : StackLang.HolProg 64 :=
.seq AllocBody726_312 AllocBody726_365

def AllocBody726_367 : StackLang.HolProg 64 :=
.seq AllocBody726_311 AllocBody726_366

def AllocBody726_368 : StackLang.HolProg 64 :=
.seq AllocBody726_310 AllocBody726_367

def AllocBody726_369 : StackLang.HolProg 64 :=
.seq AllocBody726_309 AllocBody726_368

def AllocBody726_370 : StackLang.HolProg 64 :=
.seq AllocBody726_308 AllocBody726_369

def AllocBody726_371 : StackLang.HolProg 64 :=
.seq AllocBody726_261 AllocBody726_370

def AllocBody726_372 : StackLang.HolProg 64 :=
.seq AllocBody726_260 AllocBody726_371

def AllocBody726_373 : StackLang.HolProg 64 :=
.seq AllocBody726_259 AllocBody726_372

def AllocBody726_374 : StackLang.HolProg 64 :=
.seq AllocBody726_258 AllocBody726_373

def AllocBody726_375 : StackLang.HolProg 64 :=
.seq AllocBody726_257 AllocBody726_374

def AllocBody726_376 : StackLang.HolProg 64 :=
.seq AllocBody726_202 AllocBody726_375

def AllocBody726_377 : StackLang.HolProg 64 :=
.seq AllocBody726_201 AllocBody726_376

def AllocBody726_378 : StackLang.HolProg 64 :=
.seq AllocBody726_200 AllocBody726_377

def AllocBody726_379 : StackLang.HolProg 64 :=
.seq AllocBody726_199 AllocBody726_378

def AllocBody726_380 : StackLang.HolProg 64 :=
.seq AllocBody726_198 AllocBody726_379

def AllocBody726_381 : StackLang.HolProg 64 :=
.seq AllocBody726_151 AllocBody726_380

def AllocBody726_382 : StackLang.HolProg 64 :=
.seq AllocBody726_150 AllocBody726_381

def AllocBody726_383 : StackLang.HolProg 64 :=
.seq AllocBody726_149 AllocBody726_382

def AllocBody726_384 : StackLang.HolProg 64 :=
.seq AllocBody726_148 AllocBody726_383

def AllocBody726_385 : StackLang.HolProg 64 :=
.seq AllocBody726_147 AllocBody726_384

def AllocBody726_386 : StackLang.HolProg 64 :=
.seq AllocBody726_76 AllocBody726_385

def AllocBody726_387 : StackLang.HolProg 64 :=
.seq AllocBody726_75 AllocBody726_386

def AllocBody726_388 : StackLang.HolProg 64 :=
.seq AllocBody726_74 AllocBody726_387

def AllocBody726_389 : StackLang.HolProg 64 :=
.seq AllocBody726_73 AllocBody726_388

def AllocBody726_390 : StackLang.HolProg 64 :=
.seq AllocBody726_72 AllocBody726_389

def AllocBody726_391 : StackLang.HolProg 64 :=
.seq AllocBody726_17 AllocBody726_390

def AllocBody726_392 : StackLang.HolProg 64 :=
.seq AllocBody726_0 AllocBody726_391

def Alloc726 : Nat × StackLang.HolProg 64 := (726, AllocBody726_392)
theorem Alloc726_eq : StackAlloc.progComp (726, raw726) = Alloc726 := by
  kernel_rfl
#print axioms Alloc726_eq
end InitECandidate.Proofs.BackendStages
