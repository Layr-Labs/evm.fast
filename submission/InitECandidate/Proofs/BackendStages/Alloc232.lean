import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw232
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody232_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody232_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody232_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody232_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody232_4 : StackLang.HolProg 64 :=
.seq AllocBody232_2 AllocBody232_3

def AllocBody232_5 : StackLang.HolProg 64 :=
.seq AllocBody232_1 AllocBody232_4

def AllocBody232_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 419#64)

def AllocBody232_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_9 : StackLang.HolProg 64 :=
.seq AllocBody232_7 AllocBody232_8

def AllocBody232_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody232_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody232_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 3

def AllocBody232_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody232_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody232_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody232_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody232_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_20 : StackLang.HolProg 64 :=
.seq AllocBody232_18 AllocBody232_19

def AllocBody232_21 : StackLang.HolProg 64 :=
.seq AllocBody232_17 AllocBody232_20

def AllocBody232_22 : StackLang.HolProg 64 :=
.seq AllocBody232_16 AllocBody232_21

def AllocBody232_23 : StackLang.HolProg 64 :=
.seq AllocBody232_15 AllocBody232_22

def AllocBody232_24 : StackLang.HolProg 64 :=
.seq AllocBody232_14 AllocBody232_23

def AllocBody232_25 : StackLang.HolProg 64 :=
.seq AllocBody232_13 AllocBody232_24

def AllocBody232_26 : StackLang.HolProg 64 :=
.seq AllocBody232_12 AllocBody232_25

def AllocBody232_27 : StackLang.HolProg 64 :=
.seq AllocBody232_11 AllocBody232_26

def AllocBody232_28 : StackLang.HolProg 64 :=
.seq AllocBody232_10 AllocBody232_27

def AllocBody232_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody232_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody232_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody232_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody232_36 : StackLang.HolProg 64 :=
.seq AllocBody232_34 AllocBody232_35

def AllocBody232_37 : StackLang.HolProg 64 :=
.seq AllocBody232_33 AllocBody232_36

def AllocBody232_38 : StackLang.HolProg 64 :=
.seq AllocBody232_32 AllocBody232_37

def AllocBody232_39 : StackLang.HolProg 64 :=
.seq AllocBody232_31 AllocBody232_38

def AllocBody232_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody232_42 : StackLang.HolProg 64 :=
.seq AllocBody232_40 AllocBody232_41

def AllocBody232_43 : StackLang.HolProg 64 :=
.call (some (AllocBody232_39, 0, 232, 2)) (Sum.inl 69) (some (AllocBody232_42, 232, 3))

def AllocBody232_44 : StackLang.HolProg 64 :=
.seq AllocBody232_30 AllocBody232_43

def AllocBody232_45 : StackLang.HolProg 64 :=
.seq AllocBody232_29 AllocBody232_44

def AllocBody232_46 : StackLang.HolProg 64 :=
.seq AllocBody232_28 AllocBody232_45

def AllocBody232_47 : StackLang.HolProg 64 :=
.seq AllocBody232_9 AllocBody232_46

def AllocBody232_48 : StackLang.HolProg 64 :=
.seq AllocBody232_6 AllocBody232_47

def AllocBody232_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody232_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody232_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody232_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 420#64)

def AllocBody232_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_55 : StackLang.HolProg 64 :=
.seq AllocBody232_53 AllocBody232_54

def AllocBody232_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody232_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody232_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 5

def AllocBody232_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody232_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody232_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody232_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody232_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_66 : StackLang.HolProg 64 :=
.seq AllocBody232_64 AllocBody232_65

def AllocBody232_67 : StackLang.HolProg 64 :=
.seq AllocBody232_63 AllocBody232_66

def AllocBody232_68 : StackLang.HolProg 64 :=
.seq AllocBody232_62 AllocBody232_67

def AllocBody232_69 : StackLang.HolProg 64 :=
.seq AllocBody232_61 AllocBody232_68

def AllocBody232_70 : StackLang.HolProg 64 :=
.seq AllocBody232_60 AllocBody232_69

def AllocBody232_71 : StackLang.HolProg 64 :=
.seq AllocBody232_59 AllocBody232_70

def AllocBody232_72 : StackLang.HolProg 64 :=
.seq AllocBody232_58 AllocBody232_71

def AllocBody232_73 : StackLang.HolProg 64 :=
.seq AllocBody232_57 AllocBody232_72

def AllocBody232_74 : StackLang.HolProg 64 :=
.seq AllocBody232_56 AllocBody232_73

def AllocBody232_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody232_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody232_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody232_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody232_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody232_83 : StackLang.HolProg 64 :=
.seq AllocBody232_81 AllocBody232_82

def AllocBody232_84 : StackLang.HolProg 64 :=
.seq AllocBody232_80 AllocBody232_83

def AllocBody232_85 : StackLang.HolProg 64 :=
.seq AllocBody232_79 AllocBody232_84

def AllocBody232_86 : StackLang.HolProg 64 :=
.seq AllocBody232_78 AllocBody232_85

def AllocBody232_87 : StackLang.HolProg 64 :=
.seq AllocBody232_77 AllocBody232_86

def AllocBody232_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody232_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody232_90 : StackLang.HolProg 64 :=
.seq AllocBody232_88 AllocBody232_89

def AllocBody232_91 : StackLang.HolProg 64 :=
.call (some (AllocBody232_87, 0, 232, 4)) (Sum.inl 68) (some (AllocBody232_90, 232, 5))

def AllocBody232_92 : StackLang.HolProg 64 :=
.seq AllocBody232_76 AllocBody232_91

def AllocBody232_93 : StackLang.HolProg 64 :=
.seq AllocBody232_75 AllocBody232_92

def AllocBody232_94 : StackLang.HolProg 64 :=
.seq AllocBody232_74 AllocBody232_93

def AllocBody232_95 : StackLang.HolProg 64 :=
.seq AllocBody232_55 AllocBody232_94

def AllocBody232_96 : StackLang.HolProg 64 :=
.seq AllocBody232_52 AllocBody232_95

def AllocBody232_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody232_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody232_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def AllocBody232_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody232_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 421#64)

def AllocBody232_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_104 : StackLang.HolProg 64 :=
.seq AllocBody232_102 AllocBody232_103

def AllocBody232_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody232_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody232_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 7

def AllocBody232_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody232_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody232_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody232_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody232_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_115 : StackLang.HolProg 64 :=
.seq AllocBody232_113 AllocBody232_114

def AllocBody232_116 : StackLang.HolProg 64 :=
.seq AllocBody232_112 AllocBody232_115

def AllocBody232_117 : StackLang.HolProg 64 :=
.seq AllocBody232_111 AllocBody232_116

def AllocBody232_118 : StackLang.HolProg 64 :=
.seq AllocBody232_110 AllocBody232_117

def AllocBody232_119 : StackLang.HolProg 64 :=
.seq AllocBody232_109 AllocBody232_118

def AllocBody232_120 : StackLang.HolProg 64 :=
.seq AllocBody232_108 AllocBody232_119

def AllocBody232_121 : StackLang.HolProg 64 :=
.seq AllocBody232_107 AllocBody232_120

def AllocBody232_122 : StackLang.HolProg 64 :=
.seq AllocBody232_106 AllocBody232_121

def AllocBody232_123 : StackLang.HolProg 64 :=
.seq AllocBody232_105 AllocBody232_122

def AllocBody232_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody232_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody232_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody232_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody232_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody232_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody232_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody232_134 : StackLang.HolProg 64 :=
.seq AllocBody232_132 AllocBody232_133

def AllocBody232_135 : StackLang.HolProg 64 :=
.seq AllocBody232_131 AllocBody232_134

def AllocBody232_136 : StackLang.HolProg 64 :=
.seq AllocBody232_130 AllocBody232_135

def AllocBody232_137 : StackLang.HolProg 64 :=
.seq AllocBody232_129 AllocBody232_136

def AllocBody232_138 : StackLang.HolProg 64 :=
.seq AllocBody232_128 AllocBody232_137

def AllocBody232_139 : StackLang.HolProg 64 :=
.seq AllocBody232_127 AllocBody232_138

def AllocBody232_140 : StackLang.HolProg 64 :=
.seq AllocBody232_126 AllocBody232_139

def AllocBody232_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody232_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody232_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody232_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody232_145 : StackLang.HolProg 64 :=
.seq AllocBody232_143 AllocBody232_144

def AllocBody232_146 : StackLang.HolProg 64 :=
.seq AllocBody232_142 AllocBody232_145

def AllocBody232_147 : StackLang.HolProg 64 :=
.seq AllocBody232_141 AllocBody232_146

def AllocBody232_148 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody232_149 : StackLang.HolProg 64 :=
.seq AllocBody232_147 AllocBody232_148

def AllocBody232_150 : StackLang.HolProg 64 :=
.call (some (AllocBody232_140, 0, 232, 6)) (Sum.inl 158) (some (AllocBody232_149, 232, 7))

def AllocBody232_151 : StackLang.HolProg 64 :=
.seq AllocBody232_125 AllocBody232_150

def AllocBody232_152 : StackLang.HolProg 64 :=
.seq AllocBody232_124 AllocBody232_151

def AllocBody232_153 : StackLang.HolProg 64 :=
.seq AllocBody232_123 AllocBody232_152

def AllocBody232_154 : StackLang.HolProg 64 :=
.seq AllocBody232_104 AllocBody232_153

def AllocBody232_155 : StackLang.HolProg 64 :=
.seq AllocBody232_101 AllocBody232_154

def AllocBody232_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody232_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody232_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def AllocBody232_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def AllocBody232_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 422#64)

def AllocBody232_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_164 : StackLang.HolProg 64 :=
.seq AllocBody232_162 AllocBody232_163

def AllocBody232_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody232_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody232_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 9

def AllocBody232_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody232_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody232_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody232_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody232_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_175 : StackLang.HolProg 64 :=
.seq AllocBody232_173 AllocBody232_174

def AllocBody232_176 : StackLang.HolProg 64 :=
.seq AllocBody232_172 AllocBody232_175

def AllocBody232_177 : StackLang.HolProg 64 :=
.seq AllocBody232_171 AllocBody232_176

def AllocBody232_178 : StackLang.HolProg 64 :=
.seq AllocBody232_170 AllocBody232_177

def AllocBody232_179 : StackLang.HolProg 64 :=
.seq AllocBody232_169 AllocBody232_178

def AllocBody232_180 : StackLang.HolProg 64 :=
.seq AllocBody232_168 AllocBody232_179

def AllocBody232_181 : StackLang.HolProg 64 :=
.seq AllocBody232_167 AllocBody232_180

def AllocBody232_182 : StackLang.HolProg 64 :=
.seq AllocBody232_166 AllocBody232_181

def AllocBody232_183 : StackLang.HolProg 64 :=
.seq AllocBody232_165 AllocBody232_182

def AllocBody232_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody232_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody232_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody232_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody232_191 : StackLang.HolProg 64 :=
.seq AllocBody232_189 AllocBody232_190

def AllocBody232_192 : StackLang.HolProg 64 :=
.seq AllocBody232_188 AllocBody232_191

def AllocBody232_193 : StackLang.HolProg 64 :=
.seq AllocBody232_187 AllocBody232_192

def AllocBody232_194 : StackLang.HolProg 64 :=
.seq AllocBody232_186 AllocBody232_193

def AllocBody232_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody232_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody232_197 : StackLang.HolProg 64 :=
.seq AllocBody232_195 AllocBody232_196

def AllocBody232_198 : StackLang.HolProg 64 :=
.call (some (AllocBody232_194, 0, 232, 8)) (Sum.inl 77) (some (AllocBody232_197, 232, 9))

def AllocBody232_199 : StackLang.HolProg 64 :=
.seq AllocBody232_185 AllocBody232_198

def AllocBody232_200 : StackLang.HolProg 64 :=
.seq AllocBody232_184 AllocBody232_199

def AllocBody232_201 : StackLang.HolProg 64 :=
.seq AllocBody232_183 AllocBody232_200

def AllocBody232_202 : StackLang.HolProg 64 :=
.seq AllocBody232_164 AllocBody232_201

def AllocBody232_203 : StackLang.HolProg 64 :=
.seq AllocBody232_161 AllocBody232_202

def AllocBody232_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody232_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody232_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 423#64)

def AllocBody232_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_209 : StackLang.HolProg 64 :=
.seq AllocBody232_207 AllocBody232_208

def AllocBody232_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody232_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody232_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody232_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 232 11

def AllocBody232_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody232_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody232_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody232_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody232_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_220 : StackLang.HolProg 64 :=
.seq AllocBody232_218 AllocBody232_219

def AllocBody232_221 : StackLang.HolProg 64 :=
.seq AllocBody232_217 AllocBody232_220

def AllocBody232_222 : StackLang.HolProg 64 :=
.seq AllocBody232_216 AllocBody232_221

def AllocBody232_223 : StackLang.HolProg 64 :=
.seq AllocBody232_215 AllocBody232_222

def AllocBody232_224 : StackLang.HolProg 64 :=
.seq AllocBody232_214 AllocBody232_223

def AllocBody232_225 : StackLang.HolProg 64 :=
.seq AllocBody232_213 AllocBody232_224

def AllocBody232_226 : StackLang.HolProg 64 :=
.seq AllocBody232_212 AllocBody232_225

def AllocBody232_227 : StackLang.HolProg 64 :=
.seq AllocBody232_211 AllocBody232_226

def AllocBody232_228 : StackLang.HolProg 64 :=
.seq AllocBody232_210 AllocBody232_227

def AllocBody232_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody232_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody232_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody232_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody232_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody232_236 : StackLang.HolProg 64 :=
.seq AllocBody232_234 AllocBody232_235

def AllocBody232_237 : StackLang.HolProg 64 :=
.seq AllocBody232_233 AllocBody232_236

def AllocBody232_238 : StackLang.HolProg 64 :=
.seq AllocBody232_232 AllocBody232_237

def AllocBody232_239 : StackLang.HolProg 64 :=
.seq AllocBody232_231 AllocBody232_238

def AllocBody232_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody232_241 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody232_242 : StackLang.HolProg 64 :=
.seq AllocBody232_240 AllocBody232_241

def AllocBody232_243 : StackLang.HolProg 64 :=
.call (some (AllocBody232_239, 0, 232, 10)) (Sum.inl 70) (some (AllocBody232_242, 232, 11))

def AllocBody232_244 : StackLang.HolProg 64 :=
.seq AllocBody232_230 AllocBody232_243

def AllocBody232_245 : StackLang.HolProg 64 :=
.seq AllocBody232_229 AllocBody232_244

def AllocBody232_246 : StackLang.HolProg 64 :=
.seq AllocBody232_228 AllocBody232_245

def AllocBody232_247 : StackLang.HolProg 64 :=
.seq AllocBody232_209 AllocBody232_246

def AllocBody232_248 : StackLang.HolProg 64 :=
.seq AllocBody232_206 AllocBody232_247

def AllocBody232_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody232_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody232_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody232_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody232_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody232_254 : StackLang.HolProg 64 :=
.seq AllocBody232_252 AllocBody232_253

def AllocBody232_255 : StackLang.HolProg 64 :=
.seq AllocBody232_251 AllocBody232_254

def AllocBody232_256 : StackLang.HolProg 64 :=
.seq AllocBody232_250 AllocBody232_255

def AllocBody232_257 : StackLang.HolProg 64 :=
.seq AllocBody232_249 AllocBody232_256

def AllocBody232_258 : StackLang.HolProg 64 :=
.seq AllocBody232_248 AllocBody232_257

def AllocBody232_259 : StackLang.HolProg 64 :=
.seq AllocBody232_205 AllocBody232_258

def AllocBody232_260 : StackLang.HolProg 64 :=
.seq AllocBody232_204 AllocBody232_259

def AllocBody232_261 : StackLang.HolProg 64 :=
.seq AllocBody232_203 AllocBody232_260

def AllocBody232_262 : StackLang.HolProg 64 :=
.seq AllocBody232_160 AllocBody232_261

def AllocBody232_263 : StackLang.HolProg 64 :=
.seq AllocBody232_159 AllocBody232_262

def AllocBody232_264 : StackLang.HolProg 64 :=
.seq AllocBody232_158 AllocBody232_263

def AllocBody232_265 : StackLang.HolProg 64 :=
.seq AllocBody232_157 AllocBody232_264

def AllocBody232_266 : StackLang.HolProg 64 :=
.seq AllocBody232_156 AllocBody232_265

def AllocBody232_267 : StackLang.HolProg 64 :=
.seq AllocBody232_155 AllocBody232_266

def AllocBody232_268 : StackLang.HolProg 64 :=
.seq AllocBody232_100 AllocBody232_267

def AllocBody232_269 : StackLang.HolProg 64 :=
.seq AllocBody232_99 AllocBody232_268

def AllocBody232_270 : StackLang.HolProg 64 :=
.seq AllocBody232_98 AllocBody232_269

def AllocBody232_271 : StackLang.HolProg 64 :=
.seq AllocBody232_97 AllocBody232_270

def AllocBody232_272 : StackLang.HolProg 64 :=
.seq AllocBody232_96 AllocBody232_271

def AllocBody232_273 : StackLang.HolProg 64 :=
.seq AllocBody232_51 AllocBody232_272

def AllocBody232_274 : StackLang.HolProg 64 :=
.seq AllocBody232_50 AllocBody232_273

def AllocBody232_275 : StackLang.HolProg 64 :=
.seq AllocBody232_49 AllocBody232_274

def AllocBody232_276 : StackLang.HolProg 64 :=
.seq AllocBody232_48 AllocBody232_275

def AllocBody232_277 : StackLang.HolProg 64 :=
.seq AllocBody232_5 AllocBody232_276

def AllocBody232_278 : StackLang.HolProg 64 :=
.seq AllocBody232_0 AllocBody232_277

def Alloc232 : Nat × StackLang.HolProg 64 := (232, AllocBody232_278)
theorem Alloc232_eq : StackAlloc.progComp (232, raw232) = Alloc232 := by
  kernel_rfl
#print axioms Alloc232_eq
end InitECandidate.Proofs.BackendStages
