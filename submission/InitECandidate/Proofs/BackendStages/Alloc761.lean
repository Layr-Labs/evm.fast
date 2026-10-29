import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw761
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody761_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody761_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody761_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody761_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody761_4 : StackLang.HolProg 64 :=
.seq AllocBody761_2 AllocBody761_3

def AllocBody761_5 : StackLang.HolProg 64 :=
.seq AllocBody761_1 AllocBody761_4

def AllocBody761_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3393#64)

def AllocBody761_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_9 : StackLang.HolProg 64 :=
.seq AllocBody761_7 AllocBody761_8

def AllocBody761_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 3

def AllocBody761_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_20 : StackLang.HolProg 64 :=
.seq AllocBody761_18 AllocBody761_19

def AllocBody761_21 : StackLang.HolProg 64 :=
.seq AllocBody761_17 AllocBody761_20

def AllocBody761_22 : StackLang.HolProg 64 :=
.seq AllocBody761_16 AllocBody761_21

def AllocBody761_23 : StackLang.HolProg 64 :=
.seq AllocBody761_15 AllocBody761_22

def AllocBody761_24 : StackLang.HolProg 64 :=
.seq AllocBody761_14 AllocBody761_23

def AllocBody761_25 : StackLang.HolProg 64 :=
.seq AllocBody761_13 AllocBody761_24

def AllocBody761_26 : StackLang.HolProg 64 :=
.seq AllocBody761_12 AllocBody761_25

def AllocBody761_27 : StackLang.HolProg 64 :=
.seq AllocBody761_11 AllocBody761_26

def AllocBody761_28 : StackLang.HolProg 64 :=
.seq AllocBody761_10 AllocBody761_27

def AllocBody761_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody761_36 : StackLang.HolProg 64 :=
.seq AllocBody761_34 AllocBody761_35

def AllocBody761_37 : StackLang.HolProg 64 :=
.seq AllocBody761_33 AllocBody761_36

def AllocBody761_38 : StackLang.HolProg 64 :=
.seq AllocBody761_32 AllocBody761_37

def AllocBody761_39 : StackLang.HolProg 64 :=
.seq AllocBody761_31 AllocBody761_38

def AllocBody761_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_42 : StackLang.HolProg 64 :=
.seq AllocBody761_40 AllocBody761_41

def AllocBody761_43 : StackLang.HolProg 64 :=
.call (some (AllocBody761_39, 0, 761, 2)) (Sum.inl 69) (some (AllocBody761_42, 761, 3))

def AllocBody761_44 : StackLang.HolProg 64 :=
.seq AllocBody761_30 AllocBody761_43

def AllocBody761_45 : StackLang.HolProg 64 :=
.seq AllocBody761_29 AllocBody761_44

def AllocBody761_46 : StackLang.HolProg 64 :=
.seq AllocBody761_28 AllocBody761_45

def AllocBody761_47 : StackLang.HolProg 64 :=
.seq AllocBody761_9 AllocBody761_46

def AllocBody761_48 : StackLang.HolProg 64 :=
.seq AllocBody761_6 AllocBody761_47

def AllocBody761_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 864#64)

def AllocBody761_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody761_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3394#64)

def AllocBody761_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_55 : StackLang.HolProg 64 :=
.seq AllocBody761_53 AllocBody761_54

def AllocBody761_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 5

def AllocBody761_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_66 : StackLang.HolProg 64 :=
.seq AllocBody761_64 AllocBody761_65

def AllocBody761_67 : StackLang.HolProg 64 :=
.seq AllocBody761_63 AllocBody761_66

def AllocBody761_68 : StackLang.HolProg 64 :=
.seq AllocBody761_62 AllocBody761_67

def AllocBody761_69 : StackLang.HolProg 64 :=
.seq AllocBody761_61 AllocBody761_68

def AllocBody761_70 : StackLang.HolProg 64 :=
.seq AllocBody761_60 AllocBody761_69

def AllocBody761_71 : StackLang.HolProg 64 :=
.seq AllocBody761_59 AllocBody761_70

def AllocBody761_72 : StackLang.HolProg 64 :=
.seq AllocBody761_58 AllocBody761_71

def AllocBody761_73 : StackLang.HolProg 64 :=
.seq AllocBody761_57 AllocBody761_72

def AllocBody761_74 : StackLang.HolProg 64 :=
.seq AllocBody761_56 AllocBody761_73

def AllocBody761_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody761_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody761_83 : StackLang.HolProg 64 :=
.seq AllocBody761_81 AllocBody761_82

def AllocBody761_84 : StackLang.HolProg 64 :=
.seq AllocBody761_80 AllocBody761_83

def AllocBody761_85 : StackLang.HolProg 64 :=
.seq AllocBody761_79 AllocBody761_84

def AllocBody761_86 : StackLang.HolProg 64 :=
.seq AllocBody761_78 AllocBody761_85

def AllocBody761_87 : StackLang.HolProg 64 :=
.seq AllocBody761_77 AllocBody761_86

def AllocBody761_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody761_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_90 : StackLang.HolProg 64 :=
.seq AllocBody761_88 AllocBody761_89

def AllocBody761_91 : StackLang.HolProg 64 :=
.call (some (AllocBody761_87, 0, 761, 4)) (Sum.inl 68) (some (AllocBody761_90, 761, 5))

def AllocBody761_92 : StackLang.HolProg 64 :=
.seq AllocBody761_76 AllocBody761_91

def AllocBody761_93 : StackLang.HolProg 64 :=
.seq AllocBody761_75 AllocBody761_92

def AllocBody761_94 : StackLang.HolProg 64 :=
.seq AllocBody761_74 AllocBody761_93

def AllocBody761_95 : StackLang.HolProg 64 :=
.seq AllocBody761_55 AllocBody761_94

def AllocBody761_96 : StackLang.HolProg 64 :=
.seq AllocBody761_52 AllocBody761_95

def AllocBody761_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody761_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody761_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 576#64)))

def AllocBody761_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody761_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody761_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody761_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody761_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody761_107 : StackLang.HolProg 64 :=
.seq AllocBody761_105 AllocBody761_106

def AllocBody761_108 : StackLang.HolProg 64 :=
.seq AllocBody761_104 AllocBody761_107

def AllocBody761_109 : StackLang.HolProg 64 :=
.seq AllocBody761_103 AllocBody761_108

def AllocBody761_110 : StackLang.HolProg 64 :=
.seq AllocBody761_102 AllocBody761_109

def AllocBody761_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3395#64)

def AllocBody761_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_114 : StackLang.HolProg 64 :=
.seq AllocBody761_112 AllocBody761_113

def AllocBody761_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 7

def AllocBody761_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_125 : StackLang.HolProg 64 :=
.seq AllocBody761_123 AllocBody761_124

def AllocBody761_126 : StackLang.HolProg 64 :=
.seq AllocBody761_122 AllocBody761_125

def AllocBody761_127 : StackLang.HolProg 64 :=
.seq AllocBody761_121 AllocBody761_126

def AllocBody761_128 : StackLang.HolProg 64 :=
.seq AllocBody761_120 AllocBody761_127

def AllocBody761_129 : StackLang.HolProg 64 :=
.seq AllocBody761_119 AllocBody761_128

def AllocBody761_130 : StackLang.HolProg 64 :=
.seq AllocBody761_118 AllocBody761_129

def AllocBody761_131 : StackLang.HolProg 64 :=
.seq AllocBody761_117 AllocBody761_130

def AllocBody761_132 : StackLang.HolProg 64 :=
.seq AllocBody761_116 AllocBody761_131

def AllocBody761_133 : StackLang.HolProg 64 :=
.seq AllocBody761_115 AllocBody761_132

def AllocBody761_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody761_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody761_142 : StackLang.HolProg 64 :=
.seq AllocBody761_140 AllocBody761_141

def AllocBody761_143 : StackLang.HolProg 64 :=
.seq AllocBody761_139 AllocBody761_142

def AllocBody761_144 : StackLang.HolProg 64 :=
.seq AllocBody761_138 AllocBody761_143

def AllocBody761_145 : StackLang.HolProg 64 :=
.seq AllocBody761_137 AllocBody761_144

def AllocBody761_146 : StackLang.HolProg 64 :=
.seq AllocBody761_136 AllocBody761_145

def AllocBody761_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody761_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody761_149 : StackLang.HolProg 64 :=
.seq AllocBody761_147 AllocBody761_148

def AllocBody761_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_151 : StackLang.HolProg 64 :=
.seq AllocBody761_149 AllocBody761_150

def AllocBody761_152 : StackLang.HolProg 64 :=
.call (some (AllocBody761_146, 0, 761, 6)) (Sum.inl 752) (some (AllocBody761_151, 761, 7))

def AllocBody761_153 : StackLang.HolProg 64 :=
.seq AllocBody761_135 AllocBody761_152

def AllocBody761_154 : StackLang.HolProg 64 :=
.seq AllocBody761_134 AllocBody761_153

def AllocBody761_155 : StackLang.HolProg 64 :=
.seq AllocBody761_133 AllocBody761_154

def AllocBody761_156 : StackLang.HolProg 64 :=
.seq AllocBody761_114 AllocBody761_155

def AllocBody761_157 : StackLang.HolProg 64 :=
.seq AllocBody761_111 AllocBody761_156

def AllocBody761_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody761_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody761_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody761_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody761_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody761_164 : StackLang.HolProg 64 :=
.seq AllocBody761_162 AllocBody761_163

def AllocBody761_165 : StackLang.HolProg 64 :=
.seq AllocBody761_161 AllocBody761_164

def AllocBody761_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3396#64)

def AllocBody761_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_169 : StackLang.HolProg 64 :=
.seq AllocBody761_167 AllocBody761_168

def AllocBody761_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 9

def AllocBody761_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_180 : StackLang.HolProg 64 :=
.seq AllocBody761_178 AllocBody761_179

def AllocBody761_181 : StackLang.HolProg 64 :=
.seq AllocBody761_177 AllocBody761_180

def AllocBody761_182 : StackLang.HolProg 64 :=
.seq AllocBody761_176 AllocBody761_181

def AllocBody761_183 : StackLang.HolProg 64 :=
.seq AllocBody761_175 AllocBody761_182

def AllocBody761_184 : StackLang.HolProg 64 :=
.seq AllocBody761_174 AllocBody761_183

def AllocBody761_185 : StackLang.HolProg 64 :=
.seq AllocBody761_173 AllocBody761_184

def AllocBody761_186 : StackLang.HolProg 64 :=
.seq AllocBody761_172 AllocBody761_185

def AllocBody761_187 : StackLang.HolProg 64 :=
.seq AllocBody761_171 AllocBody761_186

def AllocBody761_188 : StackLang.HolProg 64 :=
.seq AllocBody761_170 AllocBody761_187

def AllocBody761_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody761_196 : StackLang.HolProg 64 :=
.seq AllocBody761_194 AllocBody761_195

def AllocBody761_197 : StackLang.HolProg 64 :=
.seq AllocBody761_193 AllocBody761_196

def AllocBody761_198 : StackLang.HolProg 64 :=
.seq AllocBody761_192 AllocBody761_197

def AllocBody761_199 : StackLang.HolProg 64 :=
.seq AllocBody761_191 AllocBody761_198

def AllocBody761_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody761_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_202 : StackLang.HolProg 64 :=
.seq AllocBody761_200 AllocBody761_201

def AllocBody761_203 : StackLang.HolProg 64 :=
.call (some (AllocBody761_199, 0, 761, 8)) (Sum.inl 752) (some (AllocBody761_202, 761, 9))

def AllocBody761_204 : StackLang.HolProg 64 :=
.seq AllocBody761_190 AllocBody761_203

def AllocBody761_205 : StackLang.HolProg 64 :=
.seq AllocBody761_189 AllocBody761_204

def AllocBody761_206 : StackLang.HolProg 64 :=
.seq AllocBody761_188 AllocBody761_205

def AllocBody761_207 : StackLang.HolProg 64 :=
.seq AllocBody761_169 AllocBody761_206

def AllocBody761_208 : StackLang.HolProg 64 :=
.seq AllocBody761_166 AllocBody761_207

def AllocBody761_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody761_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody761_212 : StackLang.HolProg 64 :=
.seq AllocBody761_210 AllocBody761_211

def AllocBody761_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3397#64)

def AllocBody761_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_216 : StackLang.HolProg 64 :=
.seq AllocBody761_214 AllocBody761_215

def AllocBody761_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 11

def AllocBody761_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_227 : StackLang.HolProg 64 :=
.seq AllocBody761_225 AllocBody761_226

def AllocBody761_228 : StackLang.HolProg 64 :=
.seq AllocBody761_224 AllocBody761_227

def AllocBody761_229 : StackLang.HolProg 64 :=
.seq AllocBody761_223 AllocBody761_228

def AllocBody761_230 : StackLang.HolProg 64 :=
.seq AllocBody761_222 AllocBody761_229

def AllocBody761_231 : StackLang.HolProg 64 :=
.seq AllocBody761_221 AllocBody761_230

def AllocBody761_232 : StackLang.HolProg 64 :=
.seq AllocBody761_220 AllocBody761_231

def AllocBody761_233 : StackLang.HolProg 64 :=
.seq AllocBody761_219 AllocBody761_232

def AllocBody761_234 : StackLang.HolProg 64 :=
.seq AllocBody761_218 AllocBody761_233

def AllocBody761_235 : StackLang.HolProg 64 :=
.seq AllocBody761_217 AllocBody761_234

def AllocBody761_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody761_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody761_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody761_245 : StackLang.HolProg 64 :=
.seq AllocBody761_243 AllocBody761_244

def AllocBody761_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody761_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody761_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody761_249 : StackLang.HolProg 64 :=
.seq AllocBody761_247 AllocBody761_248

def AllocBody761_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody761_252 : StackLang.HolProg 64 :=
.seq AllocBody761_250 AllocBody761_251

def AllocBody761_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody761_254 : StackLang.HolProg 64 :=
.seq AllocBody761_252 AllocBody761_253

def AllocBody761_255 : StackLang.HolProg 64 :=
.seq AllocBody761_249 AllocBody761_254

def AllocBody761_256 : StackLang.HolProg 64 :=
.seq AllocBody761_246 AllocBody761_255

def AllocBody761_257 : StackLang.HolProg 64 :=
.seq AllocBody761_245 AllocBody761_256

def AllocBody761_258 : StackLang.HolProg 64 :=
.seq AllocBody761_242 AllocBody761_257

def AllocBody761_259 : StackLang.HolProg 64 :=
.seq AllocBody761_241 AllocBody761_258

def AllocBody761_260 : StackLang.HolProg 64 :=
.seq AllocBody761_240 AllocBody761_259

def AllocBody761_261 : StackLang.HolProg 64 :=
.seq AllocBody761_239 AllocBody761_260

def AllocBody761_262 : StackLang.HolProg 64 :=
.seq AllocBody761_238 AllocBody761_261

def AllocBody761_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody761_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody761_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody761_266 : StackLang.HolProg 64 :=
.seq AllocBody761_264 AllocBody761_265

def AllocBody761_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody761_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody761_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody761_270 : StackLang.HolProg 64 :=
.seq AllocBody761_268 AllocBody761_269

def AllocBody761_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody761_273 : StackLang.HolProg 64 :=
.seq AllocBody761_271 AllocBody761_272

def AllocBody761_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody761_275 : StackLang.HolProg 64 :=
.seq AllocBody761_273 AllocBody761_274

def AllocBody761_276 : StackLang.HolProg 64 :=
.seq AllocBody761_270 AllocBody761_275

def AllocBody761_277 : StackLang.HolProg 64 :=
.seq AllocBody761_267 AllocBody761_276

def AllocBody761_278 : StackLang.HolProg 64 :=
.seq AllocBody761_266 AllocBody761_277

def AllocBody761_279 : StackLang.HolProg 64 :=
.seq AllocBody761_263 AllocBody761_278

def AllocBody761_280 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_281 : StackLang.HolProg 64 :=
.seq AllocBody761_279 AllocBody761_280

def AllocBody761_282 : StackLang.HolProg 64 :=
.call (some (AllocBody761_262, 0, 761, 10)) (Sum.inl 753) (some (AllocBody761_281, 761, 11))

def AllocBody761_283 : StackLang.HolProg 64 :=
.seq AllocBody761_237 AllocBody761_282

def AllocBody761_284 : StackLang.HolProg 64 :=
.seq AllocBody761_236 AllocBody761_283

def AllocBody761_285 : StackLang.HolProg 64 :=
.seq AllocBody761_235 AllocBody761_284

def AllocBody761_286 : StackLang.HolProg 64 :=
.seq AllocBody761_216 AllocBody761_285

def AllocBody761_287 : StackLang.HolProg 64 :=
.seq AllocBody761_213 AllocBody761_286

def AllocBody761_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody761_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody761_291 : StackLang.HolProg 64 :=
.seq AllocBody761_289 AllocBody761_290

def AllocBody761_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3398#64)

def AllocBody761_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_295 : StackLang.HolProg 64 :=
.seq AllocBody761_293 AllocBody761_294

def AllocBody761_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 13

def AllocBody761_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_306 : StackLang.HolProg 64 :=
.seq AllocBody761_304 AllocBody761_305

def AllocBody761_307 : StackLang.HolProg 64 :=
.seq AllocBody761_303 AllocBody761_306

def AllocBody761_308 : StackLang.HolProg 64 :=
.seq AllocBody761_302 AllocBody761_307

def AllocBody761_309 : StackLang.HolProg 64 :=
.seq AllocBody761_301 AllocBody761_308

def AllocBody761_310 : StackLang.HolProg 64 :=
.seq AllocBody761_300 AllocBody761_309

def AllocBody761_311 : StackLang.HolProg 64 :=
.seq AllocBody761_299 AllocBody761_310

def AllocBody761_312 : StackLang.HolProg 64 :=
.seq AllocBody761_298 AllocBody761_311

def AllocBody761_313 : StackLang.HolProg 64 :=
.seq AllocBody761_297 AllocBody761_312

def AllocBody761_314 : StackLang.HolProg 64 :=
.seq AllocBody761_296 AllocBody761_313

def AllocBody761_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody761_322 : StackLang.HolProg 64 :=
.seq AllocBody761_320 AllocBody761_321

def AllocBody761_323 : StackLang.HolProg 64 :=
.seq AllocBody761_319 AllocBody761_322

def AllocBody761_324 : StackLang.HolProg 64 :=
.seq AllocBody761_318 AllocBody761_323

def AllocBody761_325 : StackLang.HolProg 64 :=
.seq AllocBody761_317 AllocBody761_324

def AllocBody761_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody761_327 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_328 : StackLang.HolProg 64 :=
.seq AllocBody761_326 AllocBody761_327

def AllocBody761_329 : StackLang.HolProg 64 :=
.call (some (AllocBody761_325, 0, 761, 12)) (Sum.inl 750) (some (AllocBody761_328, 761, 13))

def AllocBody761_330 : StackLang.HolProg 64 :=
.seq AllocBody761_316 AllocBody761_329

def AllocBody761_331 : StackLang.HolProg 64 :=
.seq AllocBody761_315 AllocBody761_330

def AllocBody761_332 : StackLang.HolProg 64 :=
.seq AllocBody761_314 AllocBody761_331

def AllocBody761_333 : StackLang.HolProg 64 :=
.seq AllocBody761_295 AllocBody761_332

def AllocBody761_334 : StackLang.HolProg 64 :=
.seq AllocBody761_292 AllocBody761_333

def AllocBody761_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody761_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody761_338 : StackLang.HolProg 64 :=
.seq AllocBody761_336 AllocBody761_337

def AllocBody761_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3399#64)

def AllocBody761_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_342 : StackLang.HolProg 64 :=
.seq AllocBody761_340 AllocBody761_341

def AllocBody761_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 15

def AllocBody761_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_353 : StackLang.HolProg 64 :=
.seq AllocBody761_351 AllocBody761_352

def AllocBody761_354 : StackLang.HolProg 64 :=
.seq AllocBody761_350 AllocBody761_353

def AllocBody761_355 : StackLang.HolProg 64 :=
.seq AllocBody761_349 AllocBody761_354

def AllocBody761_356 : StackLang.HolProg 64 :=
.seq AllocBody761_348 AllocBody761_355

def AllocBody761_357 : StackLang.HolProg 64 :=
.seq AllocBody761_347 AllocBody761_356

def AllocBody761_358 : StackLang.HolProg 64 :=
.seq AllocBody761_346 AllocBody761_357

def AllocBody761_359 : StackLang.HolProg 64 :=
.seq AllocBody761_345 AllocBody761_358

def AllocBody761_360 : StackLang.HolProg 64 :=
.seq AllocBody761_344 AllocBody761_359

def AllocBody761_361 : StackLang.HolProg 64 :=
.seq AllocBody761_343 AllocBody761_360

def AllocBody761_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody761_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody761_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody761_371 : StackLang.HolProg 64 :=
.seq AllocBody761_369 AllocBody761_370

def AllocBody761_372 : StackLang.HolProg 64 :=
.seq AllocBody761_368 AllocBody761_371

def AllocBody761_373 : StackLang.HolProg 64 :=
.seq AllocBody761_367 AllocBody761_372

def AllocBody761_374 : StackLang.HolProg 64 :=
.seq AllocBody761_366 AllocBody761_373

def AllocBody761_375 : StackLang.HolProg 64 :=
.seq AllocBody761_365 AllocBody761_374

def AllocBody761_376 : StackLang.HolProg 64 :=
.seq AllocBody761_364 AllocBody761_375

def AllocBody761_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody761_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody761_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody761_380 : StackLang.HolProg 64 :=
.seq AllocBody761_378 AllocBody761_379

def AllocBody761_381 : StackLang.HolProg 64 :=
.seq AllocBody761_377 AllocBody761_380

def AllocBody761_382 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_383 : StackLang.HolProg 64 :=
.seq AllocBody761_381 AllocBody761_382

def AllocBody761_384 : StackLang.HolProg 64 :=
.call (some (AllocBody761_376, 0, 761, 14)) (Sum.inl 754) (some (AllocBody761_383, 761, 15))

def AllocBody761_385 : StackLang.HolProg 64 :=
.seq AllocBody761_363 AllocBody761_384

def AllocBody761_386 : StackLang.HolProg 64 :=
.seq AllocBody761_362 AllocBody761_385

def AllocBody761_387 : StackLang.HolProg 64 :=
.seq AllocBody761_361 AllocBody761_386

def AllocBody761_388 : StackLang.HolProg 64 :=
.seq AllocBody761_342 AllocBody761_387

def AllocBody761_389 : StackLang.HolProg 64 :=
.seq AllocBody761_339 AllocBody761_388

def AllocBody761_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody761_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody761_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody761_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody761_395 : StackLang.HolProg 64 :=
.seq AllocBody761_393 AllocBody761_394

def AllocBody761_396 : StackLang.HolProg 64 :=
.seq AllocBody761_392 AllocBody761_395

def AllocBody761_397 : StackLang.HolProg 64 :=
.seq AllocBody761_391 AllocBody761_396

def AllocBody761_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3400#64)

def AllocBody761_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_401 : StackLang.HolProg 64 :=
.seq AllocBody761_399 AllocBody761_400

def AllocBody761_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 17

def AllocBody761_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_412 : StackLang.HolProg 64 :=
.seq AllocBody761_410 AllocBody761_411

def AllocBody761_413 : StackLang.HolProg 64 :=
.seq AllocBody761_409 AllocBody761_412

def AllocBody761_414 : StackLang.HolProg 64 :=
.seq AllocBody761_408 AllocBody761_413

def AllocBody761_415 : StackLang.HolProg 64 :=
.seq AllocBody761_407 AllocBody761_414

def AllocBody761_416 : StackLang.HolProg 64 :=
.seq AllocBody761_406 AllocBody761_415

def AllocBody761_417 : StackLang.HolProg 64 :=
.seq AllocBody761_405 AllocBody761_416

def AllocBody761_418 : StackLang.HolProg 64 :=
.seq AllocBody761_404 AllocBody761_417

def AllocBody761_419 : StackLang.HolProg 64 :=
.seq AllocBody761_403 AllocBody761_418

def AllocBody761_420 : StackLang.HolProg 64 :=
.seq AllocBody761_402 AllocBody761_419

def AllocBody761_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody761_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody761_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody761_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody761_431 : StackLang.HolProg 64 :=
.seq AllocBody761_429 AllocBody761_430

def AllocBody761_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody761_433 : StackLang.HolProg 64 :=
.seq AllocBody761_431 AllocBody761_432

def AllocBody761_434 : StackLang.HolProg 64 :=
.seq AllocBody761_428 AllocBody761_433

def AllocBody761_435 : StackLang.HolProg 64 :=
.seq AllocBody761_427 AllocBody761_434

def AllocBody761_436 : StackLang.HolProg 64 :=
.seq AllocBody761_426 AllocBody761_435

def AllocBody761_437 : StackLang.HolProg 64 :=
.seq AllocBody761_425 AllocBody761_436

def AllocBody761_438 : StackLang.HolProg 64 :=
.seq AllocBody761_424 AllocBody761_437

def AllocBody761_439 : StackLang.HolProg 64 :=
.seq AllocBody761_423 AllocBody761_438

def AllocBody761_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody761_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody761_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody761_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody761_444 : StackLang.HolProg 64 :=
.seq AllocBody761_442 AllocBody761_443

def AllocBody761_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody761_446 : StackLang.HolProg 64 :=
.seq AllocBody761_444 AllocBody761_445

def AllocBody761_447 : StackLang.HolProg 64 :=
.seq AllocBody761_441 AllocBody761_446

def AllocBody761_448 : StackLang.HolProg 64 :=
.seq AllocBody761_440 AllocBody761_447

def AllocBody761_449 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_450 : StackLang.HolProg 64 :=
.seq AllocBody761_448 AllocBody761_449

def AllocBody761_451 : StackLang.HolProg 64 :=
.call (some (AllocBody761_439, 0, 761, 16)) (Sum.inl 752) (some (AllocBody761_450, 761, 17))

def AllocBody761_452 : StackLang.HolProg 64 :=
.seq AllocBody761_422 AllocBody761_451

def AllocBody761_453 : StackLang.HolProg 64 :=
.seq AllocBody761_421 AllocBody761_452

def AllocBody761_454 : StackLang.HolProg 64 :=
.seq AllocBody761_420 AllocBody761_453

def AllocBody761_455 : StackLang.HolProg 64 :=
.seq AllocBody761_401 AllocBody761_454

def AllocBody761_456 : StackLang.HolProg 64 :=
.seq AllocBody761_398 AllocBody761_455

def AllocBody761_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody761_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody761_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody761_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3401#64)

def AllocBody761_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_466 : StackLang.HolProg 64 :=
.seq AllocBody761_464 AllocBody761_465

def AllocBody761_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 19

def AllocBody761_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_477 : StackLang.HolProg 64 :=
.seq AllocBody761_475 AllocBody761_476

def AllocBody761_478 : StackLang.HolProg 64 :=
.seq AllocBody761_474 AllocBody761_477

def AllocBody761_479 : StackLang.HolProg 64 :=
.seq AllocBody761_473 AllocBody761_478

def AllocBody761_480 : StackLang.HolProg 64 :=
.seq AllocBody761_472 AllocBody761_479

def AllocBody761_481 : StackLang.HolProg 64 :=
.seq AllocBody761_471 AllocBody761_480

def AllocBody761_482 : StackLang.HolProg 64 :=
.seq AllocBody761_470 AllocBody761_481

def AllocBody761_483 : StackLang.HolProg 64 :=
.seq AllocBody761_469 AllocBody761_482

def AllocBody761_484 : StackLang.HolProg 64 :=
.seq AllocBody761_468 AllocBody761_483

def AllocBody761_485 : StackLang.HolProg 64 :=
.seq AllocBody761_467 AllocBody761_484

def AllocBody761_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody761_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody761_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody761_495 : StackLang.HolProg 64 :=
.seq AllocBody761_493 AllocBody761_494

def AllocBody761_496 : StackLang.HolProg 64 :=
.seq AllocBody761_492 AllocBody761_495

def AllocBody761_497 : StackLang.HolProg 64 :=
.seq AllocBody761_491 AllocBody761_496

def AllocBody761_498 : StackLang.HolProg 64 :=
.seq AllocBody761_490 AllocBody761_497

def AllocBody761_499 : StackLang.HolProg 64 :=
.seq AllocBody761_489 AllocBody761_498

def AllocBody761_500 : StackLang.HolProg 64 :=
.seq AllocBody761_488 AllocBody761_499

def AllocBody761_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody761_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody761_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody761_504 : StackLang.HolProg 64 :=
.seq AllocBody761_502 AllocBody761_503

def AllocBody761_505 : StackLang.HolProg 64 :=
.seq AllocBody761_501 AllocBody761_504

def AllocBody761_506 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_507 : StackLang.HolProg 64 :=
.seq AllocBody761_505 AllocBody761_506

def AllocBody761_508 : StackLang.HolProg 64 :=
.call (some (AllocBody761_500, 0, 761, 18)) (Sum.inl 752) (some (AllocBody761_507, 761, 19))

def AllocBody761_509 : StackLang.HolProg 64 :=
.seq AllocBody761_487 AllocBody761_508

def AllocBody761_510 : StackLang.HolProg 64 :=
.seq AllocBody761_486 AllocBody761_509

def AllocBody761_511 : StackLang.HolProg 64 :=
.seq AllocBody761_485 AllocBody761_510

def AllocBody761_512 : StackLang.HolProg 64 :=
.seq AllocBody761_466 AllocBody761_511

def AllocBody761_513 : StackLang.HolProg 64 :=
.seq AllocBody761_463 AllocBody761_512

def AllocBody761_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody761_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody761_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3402#64)

def AllocBody761_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_521 : StackLang.HolProg 64 :=
.seq AllocBody761_519 AllocBody761_520

def AllocBody761_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 21

def AllocBody761_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_532 : StackLang.HolProg 64 :=
.seq AllocBody761_530 AllocBody761_531

def AllocBody761_533 : StackLang.HolProg 64 :=
.seq AllocBody761_529 AllocBody761_532

def AllocBody761_534 : StackLang.HolProg 64 :=
.seq AllocBody761_528 AllocBody761_533

def AllocBody761_535 : StackLang.HolProg 64 :=
.seq AllocBody761_527 AllocBody761_534

def AllocBody761_536 : StackLang.HolProg 64 :=
.seq AllocBody761_526 AllocBody761_535

def AllocBody761_537 : StackLang.HolProg 64 :=
.seq AllocBody761_525 AllocBody761_536

def AllocBody761_538 : StackLang.HolProg 64 :=
.seq AllocBody761_524 AllocBody761_537

def AllocBody761_539 : StackLang.HolProg 64 :=
.seq AllocBody761_523 AllocBody761_538

def AllocBody761_540 : StackLang.HolProg 64 :=
.seq AllocBody761_522 AllocBody761_539

def AllocBody761_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody761_548 : StackLang.HolProg 64 :=
.seq AllocBody761_546 AllocBody761_547

def AllocBody761_549 : StackLang.HolProg 64 :=
.seq AllocBody761_545 AllocBody761_548

def AllocBody761_550 : StackLang.HolProg 64 :=
.seq AllocBody761_544 AllocBody761_549

def AllocBody761_551 : StackLang.HolProg 64 :=
.seq AllocBody761_543 AllocBody761_550

def AllocBody761_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody761_553 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_554 : StackLang.HolProg 64 :=
.seq AllocBody761_552 AllocBody761_553

def AllocBody761_555 : StackLang.HolProg 64 :=
.call (some (AllocBody761_551, 0, 761, 20)) (Sum.inl 751) (some (AllocBody761_554, 761, 21))

def AllocBody761_556 : StackLang.HolProg 64 :=
.seq AllocBody761_542 AllocBody761_555

def AllocBody761_557 : StackLang.HolProg 64 :=
.seq AllocBody761_541 AllocBody761_556

def AllocBody761_558 : StackLang.HolProg 64 :=
.seq AllocBody761_540 AllocBody761_557

def AllocBody761_559 : StackLang.HolProg 64 :=
.seq AllocBody761_521 AllocBody761_558

def AllocBody761_560 : StackLang.HolProg 64 :=
.seq AllocBody761_518 AllocBody761_559

def AllocBody761_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody761_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3403#64)

def AllocBody761_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_566 : StackLang.HolProg 64 :=
.seq AllocBody761_564 AllocBody761_565

def AllocBody761_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody761_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody761_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody761_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 761 23

def AllocBody761_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody761_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody761_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody761_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody761_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_577 : StackLang.HolProg 64 :=
.seq AllocBody761_575 AllocBody761_576

def AllocBody761_578 : StackLang.HolProg 64 :=
.seq AllocBody761_574 AllocBody761_577

def AllocBody761_579 : StackLang.HolProg 64 :=
.seq AllocBody761_573 AllocBody761_578

def AllocBody761_580 : StackLang.HolProg 64 :=
.seq AllocBody761_572 AllocBody761_579

def AllocBody761_581 : StackLang.HolProg 64 :=
.seq AllocBody761_571 AllocBody761_580

def AllocBody761_582 : StackLang.HolProg 64 :=
.seq AllocBody761_570 AllocBody761_581

def AllocBody761_583 : StackLang.HolProg 64 :=
.seq AllocBody761_569 AllocBody761_582

def AllocBody761_584 : StackLang.HolProg 64 :=
.seq AllocBody761_568 AllocBody761_583

def AllocBody761_585 : StackLang.HolProg 64 :=
.seq AllocBody761_567 AllocBody761_584

def AllocBody761_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody761_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody761_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody761_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody761_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody761_593 : StackLang.HolProg 64 :=
.seq AllocBody761_591 AllocBody761_592

def AllocBody761_594 : StackLang.HolProg 64 :=
.seq AllocBody761_590 AllocBody761_593

def AllocBody761_595 : StackLang.HolProg 64 :=
.seq AllocBody761_589 AllocBody761_594

def AllocBody761_596 : StackLang.HolProg 64 :=
.seq AllocBody761_588 AllocBody761_595

def AllocBody761_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody761_598 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody761_599 : StackLang.HolProg 64 :=
.seq AllocBody761_597 AllocBody761_598

def AllocBody761_600 : StackLang.HolProg 64 :=
.call (some (AllocBody761_596, 0, 761, 22)) (Sum.inl 70) (some (AllocBody761_599, 761, 23))

def AllocBody761_601 : StackLang.HolProg 64 :=
.seq AllocBody761_587 AllocBody761_600

def AllocBody761_602 : StackLang.HolProg 64 :=
.seq AllocBody761_586 AllocBody761_601

def AllocBody761_603 : StackLang.HolProg 64 :=
.seq AllocBody761_585 AllocBody761_602

def AllocBody761_604 : StackLang.HolProg 64 :=
.seq AllocBody761_566 AllocBody761_603

def AllocBody761_605 : StackLang.HolProg 64 :=
.seq AllocBody761_563 AllocBody761_604

def AllocBody761_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody761_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody761_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody761_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody761_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody761_611 : StackLang.HolProg 64 :=
.seq AllocBody761_609 AllocBody761_610

def AllocBody761_612 : StackLang.HolProg 64 :=
.seq AllocBody761_608 AllocBody761_611

def AllocBody761_613 : StackLang.HolProg 64 :=
.seq AllocBody761_607 AllocBody761_612

def AllocBody761_614 : StackLang.HolProg 64 :=
.seq AllocBody761_606 AllocBody761_613

def AllocBody761_615 : StackLang.HolProg 64 :=
.seq AllocBody761_605 AllocBody761_614

def AllocBody761_616 : StackLang.HolProg 64 :=
.seq AllocBody761_562 AllocBody761_615

def AllocBody761_617 : StackLang.HolProg 64 :=
.seq AllocBody761_561 AllocBody761_616

def AllocBody761_618 : StackLang.HolProg 64 :=
.seq AllocBody761_560 AllocBody761_617

def AllocBody761_619 : StackLang.HolProg 64 :=
.seq AllocBody761_517 AllocBody761_618

def AllocBody761_620 : StackLang.HolProg 64 :=
.seq AllocBody761_516 AllocBody761_619

def AllocBody761_621 : StackLang.HolProg 64 :=
.seq AllocBody761_515 AllocBody761_620

def AllocBody761_622 : StackLang.HolProg 64 :=
.seq AllocBody761_514 AllocBody761_621

def AllocBody761_623 : StackLang.HolProg 64 :=
.seq AllocBody761_513 AllocBody761_622

def AllocBody761_624 : StackLang.HolProg 64 :=
.seq AllocBody761_462 AllocBody761_623

def AllocBody761_625 : StackLang.HolProg 64 :=
.seq AllocBody761_461 AllocBody761_624

def AllocBody761_626 : StackLang.HolProg 64 :=
.seq AllocBody761_460 AllocBody761_625

def AllocBody761_627 : StackLang.HolProg 64 :=
.seq AllocBody761_459 AllocBody761_626

def AllocBody761_628 : StackLang.HolProg 64 :=
.seq AllocBody761_458 AllocBody761_627

def AllocBody761_629 : StackLang.HolProg 64 :=
.seq AllocBody761_457 AllocBody761_628

def AllocBody761_630 : StackLang.HolProg 64 :=
.seq AllocBody761_456 AllocBody761_629

def AllocBody761_631 : StackLang.HolProg 64 :=
.seq AllocBody761_397 AllocBody761_630

def AllocBody761_632 : StackLang.HolProg 64 :=
.seq AllocBody761_390 AllocBody761_631

def AllocBody761_633 : StackLang.HolProg 64 :=
.seq AllocBody761_389 AllocBody761_632

def AllocBody761_634 : StackLang.HolProg 64 :=
.seq AllocBody761_338 AllocBody761_633

def AllocBody761_635 : StackLang.HolProg 64 :=
.seq AllocBody761_335 AllocBody761_634

def AllocBody761_636 : StackLang.HolProg 64 :=
.seq AllocBody761_334 AllocBody761_635

def AllocBody761_637 : StackLang.HolProg 64 :=
.seq AllocBody761_291 AllocBody761_636

def AllocBody761_638 : StackLang.HolProg 64 :=
.seq AllocBody761_288 AllocBody761_637

def AllocBody761_639 : StackLang.HolProg 64 :=
.seq AllocBody761_287 AllocBody761_638

def AllocBody761_640 : StackLang.HolProg 64 :=
.seq AllocBody761_212 AllocBody761_639

def AllocBody761_641 : StackLang.HolProg 64 :=
.seq AllocBody761_209 AllocBody761_640

def AllocBody761_642 : StackLang.HolProg 64 :=
.seq AllocBody761_208 AllocBody761_641

def AllocBody761_643 : StackLang.HolProg 64 :=
.seq AllocBody761_165 AllocBody761_642

def AllocBody761_644 : StackLang.HolProg 64 :=
.seq AllocBody761_160 AllocBody761_643

def AllocBody761_645 : StackLang.HolProg 64 :=
.seq AllocBody761_159 AllocBody761_644

def AllocBody761_646 : StackLang.HolProg 64 :=
.seq AllocBody761_158 AllocBody761_645

def AllocBody761_647 : StackLang.HolProg 64 :=
.seq AllocBody761_157 AllocBody761_646

def AllocBody761_648 : StackLang.HolProg 64 :=
.seq AllocBody761_110 AllocBody761_647

def AllocBody761_649 : StackLang.HolProg 64 :=
.seq AllocBody761_101 AllocBody761_648

def AllocBody761_650 : StackLang.HolProg 64 :=
.seq AllocBody761_100 AllocBody761_649

def AllocBody761_651 : StackLang.HolProg 64 :=
.seq AllocBody761_99 AllocBody761_650

def AllocBody761_652 : StackLang.HolProg 64 :=
.seq AllocBody761_98 AllocBody761_651

def AllocBody761_653 : StackLang.HolProg 64 :=
.seq AllocBody761_97 AllocBody761_652

def AllocBody761_654 : StackLang.HolProg 64 :=
.seq AllocBody761_96 AllocBody761_653

def AllocBody761_655 : StackLang.HolProg 64 :=
.seq AllocBody761_51 AllocBody761_654

def AllocBody761_656 : StackLang.HolProg 64 :=
.seq AllocBody761_50 AllocBody761_655

def AllocBody761_657 : StackLang.HolProg 64 :=
.seq AllocBody761_49 AllocBody761_656

def AllocBody761_658 : StackLang.HolProg 64 :=
.seq AllocBody761_48 AllocBody761_657

def AllocBody761_659 : StackLang.HolProg 64 :=
.seq AllocBody761_5 AllocBody761_658

def AllocBody761_660 : StackLang.HolProg 64 :=
.seq AllocBody761_0 AllocBody761_659

def Alloc761 : Nat × StackLang.HolProg 64 := (761, AllocBody761_660)
theorem Alloc761_eq : StackAlloc.progComp (761, raw761) = Alloc761 := by
  kernel_rfl
#print axioms Alloc761_eq
end InitECandidate.Proofs.BackendStages
