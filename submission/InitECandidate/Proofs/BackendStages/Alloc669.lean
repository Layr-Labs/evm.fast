import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw669
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody669_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 12

def AllocBody669_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def AllocBody669_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def AllocBody669_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def AllocBody669_4 : StackLang.HolProg 64 :=
.seq AllocBody669_2 AllocBody669_3

def AllocBody669_5 : StackLang.HolProg 64 :=
.seq AllocBody669_1 AllocBody669_4

def AllocBody669_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2773#64)

def AllocBody669_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_9 : StackLang.HolProg 64 :=
.seq AllocBody669_7 AllocBody669_8

def AllocBody669_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 3

def AllocBody669_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_20 : StackLang.HolProg 64 :=
.seq AllocBody669_18 AllocBody669_19

def AllocBody669_21 : StackLang.HolProg 64 :=
.seq AllocBody669_17 AllocBody669_20

def AllocBody669_22 : StackLang.HolProg 64 :=
.seq AllocBody669_16 AllocBody669_21

def AllocBody669_23 : StackLang.HolProg 64 :=
.seq AllocBody669_15 AllocBody669_22

def AllocBody669_24 : StackLang.HolProg 64 :=
.seq AllocBody669_14 AllocBody669_23

def AllocBody669_25 : StackLang.HolProg 64 :=
.seq AllocBody669_13 AllocBody669_24

def AllocBody669_26 : StackLang.HolProg 64 :=
.seq AllocBody669_12 AllocBody669_25

def AllocBody669_27 : StackLang.HolProg 64 :=
.seq AllocBody669_11 AllocBody669_26

def AllocBody669_28 : StackLang.HolProg 64 :=
.seq AllocBody669_10 AllocBody669_27

def AllocBody669_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody669_36 : StackLang.HolProg 64 :=
.seq AllocBody669_34 AllocBody669_35

def AllocBody669_37 : StackLang.HolProg 64 :=
.seq AllocBody669_33 AllocBody669_36

def AllocBody669_38 : StackLang.HolProg 64 :=
.seq AllocBody669_32 AllocBody669_37

def AllocBody669_39 : StackLang.HolProg 64 :=
.seq AllocBody669_31 AllocBody669_38

def AllocBody669_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_42 : StackLang.HolProg 64 :=
.seq AllocBody669_40 AllocBody669_41

def AllocBody669_43 : StackLang.HolProg 64 :=
.call (some (AllocBody669_39, 0, 669, 2)) (Sum.inl 69) (some (AllocBody669_42, 669, 3))

def AllocBody669_44 : StackLang.HolProg 64 :=
.seq AllocBody669_30 AllocBody669_43

def AllocBody669_45 : StackLang.HolProg 64 :=
.seq AllocBody669_29 AllocBody669_44

def AllocBody669_46 : StackLang.HolProg 64 :=
.seq AllocBody669_28 AllocBody669_45

def AllocBody669_47 : StackLang.HolProg 64 :=
.seq AllocBody669_9 AllocBody669_46

def AllocBody669_48 : StackLang.HolProg 64 :=
.seq AllocBody669_6 AllocBody669_47

def AllocBody669_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 736#64)

def AllocBody669_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def AllocBody669_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2774#64)

def AllocBody669_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_55 : StackLang.HolProg 64 :=
.seq AllocBody669_53 AllocBody669_54

def AllocBody669_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 5

def AllocBody669_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_66 : StackLang.HolProg 64 :=
.seq AllocBody669_64 AllocBody669_65

def AllocBody669_67 : StackLang.HolProg 64 :=
.seq AllocBody669_63 AllocBody669_66

def AllocBody669_68 : StackLang.HolProg 64 :=
.seq AllocBody669_62 AllocBody669_67

def AllocBody669_69 : StackLang.HolProg 64 :=
.seq AllocBody669_61 AllocBody669_68

def AllocBody669_70 : StackLang.HolProg 64 :=
.seq AllocBody669_60 AllocBody669_69

def AllocBody669_71 : StackLang.HolProg 64 :=
.seq AllocBody669_59 AllocBody669_70

def AllocBody669_72 : StackLang.HolProg 64 :=
.seq AllocBody669_58 AllocBody669_71

def AllocBody669_73 : StackLang.HolProg 64 :=
.seq AllocBody669_57 AllocBody669_72

def AllocBody669_74 : StackLang.HolProg 64 :=
.seq AllocBody669_56 AllocBody669_73

def AllocBody669_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody669_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def AllocBody669_83 : StackLang.HolProg 64 :=
.seq AllocBody669_81 AllocBody669_82

def AllocBody669_84 : StackLang.HolProg 64 :=
.seq AllocBody669_80 AllocBody669_83

def AllocBody669_85 : StackLang.HolProg 64 :=
.seq AllocBody669_79 AllocBody669_84

def AllocBody669_86 : StackLang.HolProg 64 :=
.seq AllocBody669_78 AllocBody669_85

def AllocBody669_87 : StackLang.HolProg 64 :=
.seq AllocBody669_77 AllocBody669_86

def AllocBody669_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def AllocBody669_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_90 : StackLang.HolProg 64 :=
.seq AllocBody669_88 AllocBody669_89

def AllocBody669_91 : StackLang.HolProg 64 :=
.call (some (AllocBody669_87, 0, 669, 4)) (Sum.inl 68) (some (AllocBody669_90, 669, 5))

def AllocBody669_92 : StackLang.HolProg 64 :=
.seq AllocBody669_76 AllocBody669_91

def AllocBody669_93 : StackLang.HolProg 64 :=
.seq AllocBody669_75 AllocBody669_92

def AllocBody669_94 : StackLang.HolProg 64 :=
.seq AllocBody669_74 AllocBody669_93

def AllocBody669_95 : StackLang.HolProg 64 :=
.seq AllocBody669_55 AllocBody669_94

def AllocBody669_96 : StackLang.HolProg 64 :=
.seq AllocBody669_52 AllocBody669_95

def AllocBody669_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody669_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody669_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 23#64)

def AllocBody669_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody669_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody669_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody669_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody669_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody669_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 11#64)

def AllocBody669_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551605#64)))

def AllocBody669_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_115 : StackLang.HolProg 64 :=
.seq AllocBody669_113 AllocBody669_114

def AllocBody669_116 : StackLang.HolProg 64 :=
.seq AllocBody669_112 AllocBody669_115

def AllocBody669_117 : StackLang.HolProg 64 :=
.seq AllocBody669_111 AllocBody669_116

def AllocBody669_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_120 : StackLang.HolProg 64 :=
.seq AllocBody669_118 AllocBody669_119

def AllocBody669_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody669_117 AllocBody669_120

def AllocBody669_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody669_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody669_126 : StackLang.HolProg 64 :=
.seq AllocBody669_124 AllocBody669_125

def AllocBody669_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody669_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody669_129 : StackLang.HolProg 64 :=
.seq AllocBody669_127 AllocBody669_128

def AllocBody669_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody669_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody669_132 : StackLang.HolProg 64 :=
.seq AllocBody669_130 AllocBody669_131

def AllocBody669_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def AllocBody669_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody669_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 10

def AllocBody669_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody669_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody669_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_139 : StackLang.HolProg 64 :=
.seq AllocBody669_137 AllocBody669_138

def AllocBody669_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody669_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 11

def AllocBody669_142 : StackLang.HolProg 64 :=
.seq AllocBody669_140 AllocBody669_141

def AllocBody669_143 : StackLang.HolProg 64 :=
.seq AllocBody669_139 AllocBody669_142

def AllocBody669_144 : StackLang.HolProg 64 :=
.seq AllocBody669_136 AllocBody669_143

def AllocBody669_145 : StackLang.HolProg 64 :=
.seq AllocBody669_135 AllocBody669_144

def AllocBody669_146 : StackLang.HolProg 64 :=
.seq AllocBody669_134 AllocBody669_145

def AllocBody669_147 : StackLang.HolProg 64 :=
.seq AllocBody669_133 AllocBody669_146

def AllocBody669_148 : StackLang.HolProg 64 :=
.seq AllocBody669_132 AllocBody669_147

def AllocBody669_149 : StackLang.HolProg 64 :=
.seq AllocBody669_129 AllocBody669_148

def AllocBody669_150 : StackLang.HolProg 64 :=
.seq AllocBody669_126 AllocBody669_149

def AllocBody669_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody669_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody669_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody669_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody669_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody669_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody669_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody669_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody669_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody669_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody669_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody669_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody669_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody669_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody669_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody669_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody669_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody669_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody669_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody669_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody669_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2775#64)

def AllocBody669_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_182 : StackLang.HolProg 64 :=
.seq AllocBody669_180 AllocBody669_181

def AllocBody669_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 7

def AllocBody669_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_193 : StackLang.HolProg 64 :=
.seq AllocBody669_191 AllocBody669_192

def AllocBody669_194 : StackLang.HolProg 64 :=
.seq AllocBody669_190 AllocBody669_193

def AllocBody669_195 : StackLang.HolProg 64 :=
.seq AllocBody669_189 AllocBody669_194

def AllocBody669_196 : StackLang.HolProg 64 :=
.seq AllocBody669_188 AllocBody669_195

def AllocBody669_197 : StackLang.HolProg 64 :=
.seq AllocBody669_187 AllocBody669_196

def AllocBody669_198 : StackLang.HolProg 64 :=
.seq AllocBody669_186 AllocBody669_197

def AllocBody669_199 : StackLang.HolProg 64 :=
.seq AllocBody669_185 AllocBody669_198

def AllocBody669_200 : StackLang.HolProg 64 :=
.seq AllocBody669_184 AllocBody669_199

def AllocBody669_201 : StackLang.HolProg 64 :=
.seq AllocBody669_183 AllocBody669_200

def AllocBody669_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody669_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody669_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody669_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody669_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody669_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody669_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody669_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody669_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody669_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody669_218 : StackLang.HolProg 64 :=
.seq AllocBody669_216 AllocBody669_217

def AllocBody669_219 : StackLang.HolProg 64 :=
.seq AllocBody669_215 AllocBody669_218

def AllocBody669_220 : StackLang.HolProg 64 :=
.seq AllocBody669_214 AllocBody669_219

def AllocBody669_221 : StackLang.HolProg 64 :=
.seq AllocBody669_213 AllocBody669_220

def AllocBody669_222 : StackLang.HolProg 64 :=
.seq AllocBody669_212 AllocBody669_221

def AllocBody669_223 : StackLang.HolProg 64 :=
.seq AllocBody669_211 AllocBody669_222

def AllocBody669_224 : StackLang.HolProg 64 :=
.seq AllocBody669_210 AllocBody669_223

def AllocBody669_225 : StackLang.HolProg 64 :=
.seq AllocBody669_209 AllocBody669_224

def AllocBody669_226 : StackLang.HolProg 64 :=
.seq AllocBody669_208 AllocBody669_225

def AllocBody669_227 : StackLang.HolProg 64 :=
.seq AllocBody669_207 AllocBody669_226

def AllocBody669_228 : StackLang.HolProg 64 :=
.seq AllocBody669_206 AllocBody669_227

def AllocBody669_229 : StackLang.HolProg 64 :=
.seq AllocBody669_205 AllocBody669_228

def AllocBody669_230 : StackLang.HolProg 64 :=
.seq AllocBody669_204 AllocBody669_229

def AllocBody669_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody669_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody669_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody669_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody669_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody669_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody669_237 : StackLang.HolProg 64 :=
.seq AllocBody669_235 AllocBody669_236

def AllocBody669_238 : StackLang.HolProg 64 :=
.seq AllocBody669_234 AllocBody669_237

def AllocBody669_239 : StackLang.HolProg 64 :=
.seq AllocBody669_233 AllocBody669_238

def AllocBody669_240 : StackLang.HolProg 64 :=
.seq AllocBody669_232 AllocBody669_239

def AllocBody669_241 : StackLang.HolProg 64 :=
.seq AllocBody669_231 AllocBody669_240

def AllocBody669_242 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_243 : StackLang.HolProg 64 :=
.seq AllocBody669_241 AllocBody669_242

def AllocBody669_244 : StackLang.HolProg 64 :=
.call (some (AllocBody669_230, 0, 669, 6)) (Sum.inl 661) (some (AllocBody669_243, 669, 7))

def AllocBody669_245 : StackLang.HolProg 64 :=
.seq AllocBody669_203 AllocBody669_244

def AllocBody669_246 : StackLang.HolProg 64 :=
.seq AllocBody669_202 AllocBody669_245

def AllocBody669_247 : StackLang.HolProg 64 :=
.seq AllocBody669_201 AllocBody669_246

def AllocBody669_248 : StackLang.HolProg 64 :=
.seq AllocBody669_182 AllocBody669_247

def AllocBody669_249 : StackLang.HolProg 64 :=
.seq AllocBody669_179 AllocBody669_248

def AllocBody669_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody669_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2776#64)

def AllocBody669_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_255 : StackLang.HolProg 64 :=
.seq AllocBody669_253 AllocBody669_254

def AllocBody669_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 9

def AllocBody669_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_266 : StackLang.HolProg 64 :=
.seq AllocBody669_264 AllocBody669_265

def AllocBody669_267 : StackLang.HolProg 64 :=
.seq AllocBody669_263 AllocBody669_266

def AllocBody669_268 : StackLang.HolProg 64 :=
.seq AllocBody669_262 AllocBody669_267

def AllocBody669_269 : StackLang.HolProg 64 :=
.seq AllocBody669_261 AllocBody669_268

def AllocBody669_270 : StackLang.HolProg 64 :=
.seq AllocBody669_260 AllocBody669_269

def AllocBody669_271 : StackLang.HolProg 64 :=
.seq AllocBody669_259 AllocBody669_270

def AllocBody669_272 : StackLang.HolProg 64 :=
.seq AllocBody669_258 AllocBody669_271

def AllocBody669_273 : StackLang.HolProg 64 :=
.seq AllocBody669_257 AllocBody669_272

def AllocBody669_274 : StackLang.HolProg 64 :=
.seq AllocBody669_256 AllocBody669_273

def AllocBody669_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody669_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody669_283 : StackLang.HolProg 64 :=
.seq AllocBody669_281 AllocBody669_282

def AllocBody669_284 : StackLang.HolProg 64 :=
.seq AllocBody669_280 AllocBody669_283

def AllocBody669_285 : StackLang.HolProg 64 :=
.seq AllocBody669_279 AllocBody669_284

def AllocBody669_286 : StackLang.HolProg 64 :=
.seq AllocBody669_278 AllocBody669_285

def AllocBody669_287 : StackLang.HolProg 64 :=
.seq AllocBody669_277 AllocBody669_286

def AllocBody669_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody669_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_290 : StackLang.HolProg 64 :=
.seq AllocBody669_288 AllocBody669_289

def AllocBody669_291 : StackLang.HolProg 64 :=
.call (some (AllocBody669_287, 0, 669, 8)) (Sum.inl 658) (some (AllocBody669_290, 669, 9))

def AllocBody669_292 : StackLang.HolProg 64 :=
.seq AllocBody669_276 AllocBody669_291

def AllocBody669_293 : StackLang.HolProg 64 :=
.seq AllocBody669_275 AllocBody669_292

def AllocBody669_294 : StackLang.HolProg 64 :=
.seq AllocBody669_274 AllocBody669_293

def AllocBody669_295 : StackLang.HolProg 64 :=
.seq AllocBody669_255 AllocBody669_294

def AllocBody669_296 : StackLang.HolProg 64 :=
.seq AllocBody669_252 AllocBody669_295

def AllocBody669_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody669_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def AllocBody669_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 10

def AllocBody669_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody669_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 11

def AllocBody669_304 : StackLang.HolProg 64 :=
.seq AllocBody669_302 AllocBody669_303

def AllocBody669_305 : StackLang.HolProg 64 :=
.seq AllocBody669_301 AllocBody669_304

def AllocBody669_306 : StackLang.HolProg 64 :=
.seq AllocBody669_300 AllocBody669_305

def AllocBody669_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody669_308 : StackLang.HolProg 64 :=
.seq AllocBody669_306 AllocBody669_307

def AllocBody669_309 : StackLang.HolProg 64 :=
.seq AllocBody669_299 AllocBody669_308

def AllocBody669_310 : StackLang.HolProg 64 :=
.seq AllocBody669_298 AllocBody669_309

def AllocBody669_311 : StackLang.HolProg 64 :=
.seq AllocBody669_297 AllocBody669_310

def AllocBody669_312 : StackLang.HolProg 64 :=
.seq AllocBody669_296 AllocBody669_311

def AllocBody669_313 : StackLang.HolProg 64 :=
.seq AllocBody669_251 AllocBody669_312

def AllocBody669_314 : StackLang.HolProg 64 :=
.seq AllocBody669_250 AllocBody669_313

def AllocBody669_315 : StackLang.HolProg 64 :=
.seq AllocBody669_249 AllocBody669_314

def AllocBody669_316 : StackLang.HolProg 64 :=
.seq AllocBody669_178 AllocBody669_315

def AllocBody669_317 : StackLang.HolProg 64 :=
.seq AllocBody669_177 AllocBody669_316

def AllocBody669_318 : StackLang.HolProg 64 :=
.seq AllocBody669_176 AllocBody669_317

def AllocBody669_319 : StackLang.HolProg 64 :=
.seq AllocBody669_175 AllocBody669_318

def AllocBody669_320 : StackLang.HolProg 64 :=
.seq AllocBody669_174 AllocBody669_319

def AllocBody669_321 : StackLang.HolProg 64 :=
.seq AllocBody669_173 AllocBody669_320

def AllocBody669_322 : StackLang.HolProg 64 :=
.seq AllocBody669_172 AllocBody669_321

def AllocBody669_323 : StackLang.HolProg 64 :=
.seq AllocBody669_171 AllocBody669_322

def AllocBody669_324 : StackLang.HolProg 64 :=
.seq AllocBody669_170 AllocBody669_323

def AllocBody669_325 : StackLang.HolProg 64 :=
.seq AllocBody669_169 AllocBody669_324

def AllocBody669_326 : StackLang.HolProg 64 :=
.seq AllocBody669_168 AllocBody669_325

def AllocBody669_327 : StackLang.HolProg 64 :=
.seq AllocBody669_167 AllocBody669_326

def AllocBody669_328 : StackLang.HolProg 64 :=
.seq AllocBody669_166 AllocBody669_327

def AllocBody669_329 : StackLang.HolProg 64 :=
.seq AllocBody669_165 AllocBody669_328

def AllocBody669_330 : StackLang.HolProg 64 :=
.seq AllocBody669_164 AllocBody669_329

def AllocBody669_331 : StackLang.HolProg 64 :=
.seq AllocBody669_163 AllocBody669_330

def AllocBody669_332 : StackLang.HolProg 64 :=
.seq AllocBody669_162 AllocBody669_331

def AllocBody669_333 : StackLang.HolProg 64 :=
.seq AllocBody669_161 AllocBody669_332

def AllocBody669_334 : StackLang.HolProg 64 :=
.seq AllocBody669_160 AllocBody669_333

def AllocBody669_335 : StackLang.HolProg 64 :=
.seq AllocBody669_159 AllocBody669_334

def AllocBody669_336 : StackLang.HolProg 64 :=
.seq AllocBody669_158 AllocBody669_335

def AllocBody669_337 : StackLang.HolProg 64 :=
.seq AllocBody669_157 AllocBody669_336

def AllocBody669_338 : StackLang.HolProg 64 :=
.seq AllocBody669_156 AllocBody669_337

def AllocBody669_339 : StackLang.HolProg 64 :=
.seq AllocBody669_155 AllocBody669_338

def AllocBody669_340 : StackLang.HolProg 64 :=
.seq AllocBody669_154 AllocBody669_339

def AllocBody669_341 : StackLang.HolProg 64 :=
.seq AllocBody669_153 AllocBody669_340

def AllocBody669_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody669_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody669_345 : StackLang.HolProg 64 :=
.seq AllocBody669_343 AllocBody669_344

def AllocBody669_346 : StackLang.HolProg 64 :=
.seq AllocBody669_342 AllocBody669_345

def AllocBody669_347 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody669_341 AllocBody669_346

def AllocBody669_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody669_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody669_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def AllocBody669_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody669_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 10

def AllocBody669_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody669_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def AllocBody669_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 3

def AllocBody669_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 2

def AllocBody669_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 11

def AllocBody669_359 : StackLang.HolProg 64 :=
.seq AllocBody669_357 AllocBody669_358

def AllocBody669_360 : StackLang.HolProg 64 :=
.seq AllocBody669_356 AllocBody669_359

def AllocBody669_361 : StackLang.HolProg 64 :=
.seq AllocBody669_355 AllocBody669_360

def AllocBody669_362 : StackLang.HolProg 64 :=
.seq AllocBody669_354 AllocBody669_361

def AllocBody669_363 : StackLang.HolProg 64 :=
.seq AllocBody669_353 AllocBody669_362

def AllocBody669_364 : StackLang.HolProg 64 :=
.seq AllocBody669_352 AllocBody669_363

def AllocBody669_365 : StackLang.HolProg 64 :=
.seq AllocBody669_351 AllocBody669_364

def AllocBody669_366 : StackLang.HolProg 64 :=
.seq AllocBody669_350 AllocBody669_365

def AllocBody669_367 : StackLang.HolProg 64 :=
.seq AllocBody669_349 AllocBody669_366

def AllocBody669_368 : StackLang.HolProg 64 :=
.seq AllocBody669_348 AllocBody669_367

def AllocBody669_369 : StackLang.HolProg 64 :=
.seq AllocBody669_347 AllocBody669_368

def AllocBody669_370 : StackLang.HolProg 64 :=
.seq AllocBody669_152 AllocBody669_369

def AllocBody669_371 : StackLang.HolProg 64 :=
.seq AllocBody669_151 AllocBody669_370

def AllocBody669_372 : StackLang.HolProg 64 :=
.loop AllocBody669_371

def AllocBody669_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 11

def AllocBody669_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody669_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody669_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody669_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 11

def AllocBody669_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 10

def AllocBody669_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def AllocBody669_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody669_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody669_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody669_384 : StackLang.HolProg 64 :=
.seq AllocBody669_382 AllocBody669_383

def AllocBody669_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody669_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody669_387 : StackLang.HolProg 64 :=
.seq AllocBody669_385 AllocBody669_386

def AllocBody669_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody669_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody669_390 : StackLang.HolProg 64 :=
.seq AllocBody669_388 AllocBody669_389

def AllocBody669_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody669_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody669_393 : StackLang.HolProg 64 :=
.seq AllocBody669_391 AllocBody669_392

def AllocBody669_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody669_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody669_396 : StackLang.HolProg 64 :=
.seq AllocBody669_394 AllocBody669_395

def AllocBody669_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody669_399 : StackLang.HolProg 64 :=
.seq AllocBody669_397 AllocBody669_398

def AllocBody669_400 : StackLang.HolProg 64 :=
.seq AllocBody669_396 AllocBody669_399

def AllocBody669_401 : StackLang.HolProg 64 :=
.seq AllocBody669_393 AllocBody669_400

def AllocBody669_402 : StackLang.HolProg 64 :=
.seq AllocBody669_390 AllocBody669_401

def AllocBody669_403 : StackLang.HolProg 64 :=
.seq AllocBody669_387 AllocBody669_402

def AllocBody669_404 : StackLang.HolProg 64 :=
.seq AllocBody669_384 AllocBody669_403

def AllocBody669_405 : StackLang.HolProg 64 :=
.seq AllocBody669_381 AllocBody669_404

def AllocBody669_406 : StackLang.HolProg 64 :=
.seq AllocBody669_380 AllocBody669_405

def AllocBody669_407 : StackLang.HolProg 64 :=
.seq AllocBody669_379 AllocBody669_406

def AllocBody669_408 : StackLang.HolProg 64 :=
.seq AllocBody669_378 AllocBody669_407

def AllocBody669_409 : StackLang.HolProg 64 :=
.seq AllocBody669_377 AllocBody669_408

def AllocBody669_410 : StackLang.HolProg 64 :=
.seq AllocBody669_376 AllocBody669_409

def AllocBody669_411 : StackLang.HolProg 64 :=
.seq AllocBody669_375 AllocBody669_410

def AllocBody669_412 : StackLang.HolProg 64 :=
.seq AllocBody669_374 AllocBody669_411

def AllocBody669_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2777#64)

def AllocBody669_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_416 : StackLang.HolProg 64 :=
.seq AllocBody669_414 AllocBody669_415

def AllocBody669_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 11

def AllocBody669_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_427 : StackLang.HolProg 64 :=
.seq AllocBody669_425 AllocBody669_426

def AllocBody669_428 : StackLang.HolProg 64 :=
.seq AllocBody669_424 AllocBody669_427

def AllocBody669_429 : StackLang.HolProg 64 :=
.seq AllocBody669_423 AllocBody669_428

def AllocBody669_430 : StackLang.HolProg 64 :=
.seq AllocBody669_422 AllocBody669_429

def AllocBody669_431 : StackLang.HolProg 64 :=
.seq AllocBody669_421 AllocBody669_430

def AllocBody669_432 : StackLang.HolProg 64 :=
.seq AllocBody669_420 AllocBody669_431

def AllocBody669_433 : StackLang.HolProg 64 :=
.seq AllocBody669_419 AllocBody669_432

def AllocBody669_434 : StackLang.HolProg 64 :=
.seq AllocBody669_418 AllocBody669_433

def AllocBody669_435 : StackLang.HolProg 64 :=
.seq AllocBody669_417 AllocBody669_434

def AllocBody669_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody669_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody669_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody669_445 : StackLang.HolProg 64 :=
.seq AllocBody669_443 AllocBody669_444

def AllocBody669_446 : StackLang.HolProg 64 :=
.seq AllocBody669_442 AllocBody669_445

def AllocBody669_447 : StackLang.HolProg 64 :=
.seq AllocBody669_441 AllocBody669_446

def AllocBody669_448 : StackLang.HolProg 64 :=
.seq AllocBody669_440 AllocBody669_447

def AllocBody669_449 : StackLang.HolProg 64 :=
.seq AllocBody669_439 AllocBody669_448

def AllocBody669_450 : StackLang.HolProg 64 :=
.seq AllocBody669_438 AllocBody669_449

def AllocBody669_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody669_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody669_453 : StackLang.HolProg 64 :=
.seq AllocBody669_451 AllocBody669_452

def AllocBody669_454 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_455 : StackLang.HolProg 64 :=
.seq AllocBody669_453 AllocBody669_454

def AllocBody669_456 : StackLang.HolProg 64 :=
.call (some (AllocBody669_450, 0, 669, 10)) (Sum.inl 658) (some (AllocBody669_455, 669, 11))

def AllocBody669_457 : StackLang.HolProg 64 :=
.seq AllocBody669_437 AllocBody669_456

def AllocBody669_458 : StackLang.HolProg 64 :=
.seq AllocBody669_436 AllocBody669_457

def AllocBody669_459 : StackLang.HolProg 64 :=
.seq AllocBody669_435 AllocBody669_458

def AllocBody669_460 : StackLang.HolProg 64 :=
.seq AllocBody669_416 AllocBody669_459

def AllocBody669_461 : StackLang.HolProg 64 :=
.seq AllocBody669_413 AllocBody669_460

def AllocBody669_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody669_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody669_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody669_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody669_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody669_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody669_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 8

def AllocBody669_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody669_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody669_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def AllocBody669_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody669_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody669_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody669_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody669_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody669_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def AllocBody669_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody669_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody669_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody669_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody669_488 : StackLang.HolProg 64 :=
.seq AllocBody669_486 AllocBody669_487

def AllocBody669_489 : StackLang.HolProg 64 :=
.seq AllocBody669_485 AllocBody669_488

def AllocBody669_490 : StackLang.HolProg 64 :=
.seq AllocBody669_484 AllocBody669_489

def AllocBody669_491 : StackLang.HolProg 64 :=
.seq AllocBody669_483 AllocBody669_490

def AllocBody669_492 : StackLang.HolProg 64 :=
.seq AllocBody669_482 AllocBody669_491

def AllocBody669_493 : StackLang.HolProg 64 :=
.seq AllocBody669_481 AllocBody669_492

def AllocBody669_494 : StackLang.HolProg 64 :=
.seq AllocBody669_480 AllocBody669_493

def AllocBody669_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2778#64)

def AllocBody669_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_498 : StackLang.HolProg 64 :=
.seq AllocBody669_496 AllocBody669_497

def AllocBody669_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 13

def AllocBody669_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_509 : StackLang.HolProg 64 :=
.seq AllocBody669_507 AllocBody669_508

def AllocBody669_510 : StackLang.HolProg 64 :=
.seq AllocBody669_506 AllocBody669_509

def AllocBody669_511 : StackLang.HolProg 64 :=
.seq AllocBody669_505 AllocBody669_510

def AllocBody669_512 : StackLang.HolProg 64 :=
.seq AllocBody669_504 AllocBody669_511

def AllocBody669_513 : StackLang.HolProg 64 :=
.seq AllocBody669_503 AllocBody669_512

def AllocBody669_514 : StackLang.HolProg 64 :=
.seq AllocBody669_502 AllocBody669_513

def AllocBody669_515 : StackLang.HolProg 64 :=
.seq AllocBody669_501 AllocBody669_514

def AllocBody669_516 : StackLang.HolProg 64 :=
.seq AllocBody669_500 AllocBody669_515

def AllocBody669_517 : StackLang.HolProg 64 :=
.seq AllocBody669_499 AllocBody669_516

def AllocBody669_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody669_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody669_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody669_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody669_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody669_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody669_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody669_531 : StackLang.HolProg 64 :=
.seq AllocBody669_529 AllocBody669_530

def AllocBody669_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody669_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody669_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody669_535 : StackLang.HolProg 64 :=
.seq AllocBody669_533 AllocBody669_534

def AllocBody669_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody669_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody669_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody669_539 : StackLang.HolProg 64 :=
.seq AllocBody669_537 AllocBody669_538

def AllocBody669_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody669_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody669_542 : StackLang.HolProg 64 :=
.seq AllocBody669_540 AllocBody669_541

def AllocBody669_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody669_544 : StackLang.HolProg 64 :=
.seq AllocBody669_542 AllocBody669_543

def AllocBody669_545 : StackLang.HolProg 64 :=
.seq AllocBody669_539 AllocBody669_544

def AllocBody669_546 : StackLang.HolProg 64 :=
.seq AllocBody669_536 AllocBody669_545

def AllocBody669_547 : StackLang.HolProg 64 :=
.seq AllocBody669_535 AllocBody669_546

def AllocBody669_548 : StackLang.HolProg 64 :=
.seq AllocBody669_532 AllocBody669_547

def AllocBody669_549 : StackLang.HolProg 64 :=
.seq AllocBody669_531 AllocBody669_548

def AllocBody669_550 : StackLang.HolProg 64 :=
.seq AllocBody669_528 AllocBody669_549

def AllocBody669_551 : StackLang.HolProg 64 :=
.seq AllocBody669_527 AllocBody669_550

def AllocBody669_552 : StackLang.HolProg 64 :=
.seq AllocBody669_526 AllocBody669_551

def AllocBody669_553 : StackLang.HolProg 64 :=
.seq AllocBody669_525 AllocBody669_552

def AllocBody669_554 : StackLang.HolProg 64 :=
.seq AllocBody669_524 AllocBody669_553

def AllocBody669_555 : StackLang.HolProg 64 :=
.seq AllocBody669_523 AllocBody669_554

def AllocBody669_556 : StackLang.HolProg 64 :=
.seq AllocBody669_522 AllocBody669_555

def AllocBody669_557 : StackLang.HolProg 64 :=
.seq AllocBody669_521 AllocBody669_556

def AllocBody669_558 : StackLang.HolProg 64 :=
.seq AllocBody669_520 AllocBody669_557

def AllocBody669_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody669_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody669_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody669_562 : StackLang.HolProg 64 :=
.seq AllocBody669_560 AllocBody669_561

def AllocBody669_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody669_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody669_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody669_566 : StackLang.HolProg 64 :=
.seq AllocBody669_564 AllocBody669_565

def AllocBody669_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody669_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody669_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody669_570 : StackLang.HolProg 64 :=
.seq AllocBody669_568 AllocBody669_569

def AllocBody669_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody669_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody669_573 : StackLang.HolProg 64 :=
.seq AllocBody669_571 AllocBody669_572

def AllocBody669_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody669_575 : StackLang.HolProg 64 :=
.seq AllocBody669_573 AllocBody669_574

def AllocBody669_576 : StackLang.HolProg 64 :=
.seq AllocBody669_570 AllocBody669_575

def AllocBody669_577 : StackLang.HolProg 64 :=
.seq AllocBody669_567 AllocBody669_576

def AllocBody669_578 : StackLang.HolProg 64 :=
.seq AllocBody669_566 AllocBody669_577

def AllocBody669_579 : StackLang.HolProg 64 :=
.seq AllocBody669_563 AllocBody669_578

def AllocBody669_580 : StackLang.HolProg 64 :=
.seq AllocBody669_562 AllocBody669_579

def AllocBody669_581 : StackLang.HolProg 64 :=
.seq AllocBody669_559 AllocBody669_580

def AllocBody669_582 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_583 : StackLang.HolProg 64 :=
.seq AllocBody669_581 AllocBody669_582

def AllocBody669_584 : StackLang.HolProg 64 :=
.call (some (AllocBody669_558, 0, 669, 12)) (Sum.inl 661) (some (AllocBody669_583, 669, 13))

def AllocBody669_585 : StackLang.HolProg 64 :=
.seq AllocBody669_519 AllocBody669_584

def AllocBody669_586 : StackLang.HolProg 64 :=
.seq AllocBody669_518 AllocBody669_585

def AllocBody669_587 : StackLang.HolProg 64 :=
.seq AllocBody669_517 AllocBody669_586

def AllocBody669_588 : StackLang.HolProg 64 :=
.seq AllocBody669_498 AllocBody669_587

def AllocBody669_589 : StackLang.HolProg 64 :=
.seq AllocBody669_495 AllocBody669_588

def AllocBody669_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody669_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2779#64)

def AllocBody669_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_595 : StackLang.HolProg 64 :=
.seq AllocBody669_593 AllocBody669_594

def AllocBody669_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 15

def AllocBody669_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_606 : StackLang.HolProg 64 :=
.seq AllocBody669_604 AllocBody669_605

def AllocBody669_607 : StackLang.HolProg 64 :=
.seq AllocBody669_603 AllocBody669_606

def AllocBody669_608 : StackLang.HolProg 64 :=
.seq AllocBody669_602 AllocBody669_607

def AllocBody669_609 : StackLang.HolProg 64 :=
.seq AllocBody669_601 AllocBody669_608

def AllocBody669_610 : StackLang.HolProg 64 :=
.seq AllocBody669_600 AllocBody669_609

def AllocBody669_611 : StackLang.HolProg 64 :=
.seq AllocBody669_599 AllocBody669_610

def AllocBody669_612 : StackLang.HolProg 64 :=
.seq AllocBody669_598 AllocBody669_611

def AllocBody669_613 : StackLang.HolProg 64 :=
.seq AllocBody669_597 AllocBody669_612

def AllocBody669_614 : StackLang.HolProg 64 :=
.seq AllocBody669_596 AllocBody669_613

def AllocBody669_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody669_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody669_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody669_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody669_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody669_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody669_627 : StackLang.HolProg 64 :=
.seq AllocBody669_625 AllocBody669_626

def AllocBody669_628 : StackLang.HolProg 64 :=
.seq AllocBody669_624 AllocBody669_627

def AllocBody669_629 : StackLang.HolProg 64 :=
.seq AllocBody669_623 AllocBody669_628

def AllocBody669_630 : StackLang.HolProg 64 :=
.seq AllocBody669_622 AllocBody669_629

def AllocBody669_631 : StackLang.HolProg 64 :=
.seq AllocBody669_621 AllocBody669_630

def AllocBody669_632 : StackLang.HolProg 64 :=
.seq AllocBody669_620 AllocBody669_631

def AllocBody669_633 : StackLang.HolProg 64 :=
.seq AllocBody669_619 AllocBody669_632

def AllocBody669_634 : StackLang.HolProg 64 :=
.seq AllocBody669_618 AllocBody669_633

def AllocBody669_635 : StackLang.HolProg 64 :=
.seq AllocBody669_617 AllocBody669_634

def AllocBody669_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody669_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody669_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody669_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody669_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody669_641 : StackLang.HolProg 64 :=
.seq AllocBody669_639 AllocBody669_640

def AllocBody669_642 : StackLang.HolProg 64 :=
.seq AllocBody669_638 AllocBody669_641

def AllocBody669_643 : StackLang.HolProg 64 :=
.seq AllocBody669_637 AllocBody669_642

def AllocBody669_644 : StackLang.HolProg 64 :=
.seq AllocBody669_636 AllocBody669_643

def AllocBody669_645 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_646 : StackLang.HolProg 64 :=
.seq AllocBody669_644 AllocBody669_645

def AllocBody669_647 : StackLang.HolProg 64 :=
.call (some (AllocBody669_635, 0, 669, 14)) (Sum.inl 658) (some (AllocBody669_646, 669, 15))

def AllocBody669_648 : StackLang.HolProg 64 :=
.seq AllocBody669_616 AllocBody669_647

def AllocBody669_649 : StackLang.HolProg 64 :=
.seq AllocBody669_615 AllocBody669_648

def AllocBody669_650 : StackLang.HolProg 64 :=
.seq AllocBody669_614 AllocBody669_649

def AllocBody669_651 : StackLang.HolProg 64 :=
.seq AllocBody669_595 AllocBody669_650

def AllocBody669_652 : StackLang.HolProg 64 :=
.seq AllocBody669_592 AllocBody669_651

def AllocBody669_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_655 : StackLang.HolProg 64 :=
.seq AllocBody669_653 AllocBody669_654

def AllocBody669_656 : StackLang.HolProg 64 :=
.seq AllocBody669_652 AllocBody669_655

def AllocBody669_657 : StackLang.HolProg 64 :=
.seq AllocBody669_591 AllocBody669_656

def AllocBody669_658 : StackLang.HolProg 64 :=
.seq AllocBody669_590 AllocBody669_657

def AllocBody669_659 : StackLang.HolProg 64 :=
.seq AllocBody669_589 AllocBody669_658

def AllocBody669_660 : StackLang.HolProg 64 :=
.seq AllocBody669_494 AllocBody669_659

def AllocBody669_661 : StackLang.HolProg 64 :=
.seq AllocBody669_479 AllocBody669_660

def AllocBody669_662 : StackLang.HolProg 64 :=
.seq AllocBody669_478 AllocBody669_661

def AllocBody669_663 : StackLang.HolProg 64 :=
.seq AllocBody669_477 AllocBody669_662

def AllocBody669_664 : StackLang.HolProg 64 :=
.seq AllocBody669_476 AllocBody669_663

def AllocBody669_665 : StackLang.HolProg 64 :=
.seq AllocBody669_475 AllocBody669_664

def AllocBody669_666 : StackLang.HolProg 64 :=
.seq AllocBody669_474 AllocBody669_665

def AllocBody669_667 : StackLang.HolProg 64 :=
.seq AllocBody669_473 AllocBody669_666

def AllocBody669_668 : StackLang.HolProg 64 :=
.seq AllocBody669_472 AllocBody669_667

def AllocBody669_669 : StackLang.HolProg 64 :=
.seq AllocBody669_471 AllocBody669_668

def AllocBody669_670 : StackLang.HolProg 64 :=
.seq AllocBody669_470 AllocBody669_669

def AllocBody669_671 : StackLang.HolProg 64 :=
.seq AllocBody669_469 AllocBody669_670

def AllocBody669_672 : StackLang.HolProg 64 :=
.seq AllocBody669_468 AllocBody669_671

def AllocBody669_673 : StackLang.HolProg 64 :=
.seq AllocBody669_467 AllocBody669_672

def AllocBody669_674 : StackLang.HolProg 64 :=
.seq AllocBody669_466 AllocBody669_673

def AllocBody669_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody669_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody669_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody669_679 : StackLang.HolProg 64 :=
.seq AllocBody669_677 AllocBody669_678

def AllocBody669_680 : StackLang.HolProg 64 :=
.seq AllocBody669_676 AllocBody669_679

def AllocBody669_681 : StackLang.HolProg 64 :=
.seq AllocBody669_675 AllocBody669_680

def AllocBody669_682 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody669_674 AllocBody669_681

def AllocBody669_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody669_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody669_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody669_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody669_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody669_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody669_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody669_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 9

def AllocBody669_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody669_700 : StackLang.HolProg 64 :=
.seq AllocBody669_698 AllocBody669_699

def AllocBody669_701 : StackLang.HolProg 64 :=
.seq AllocBody669_697 AllocBody669_700

def AllocBody669_702 : StackLang.HolProg 64 :=
.seq AllocBody669_696 AllocBody669_701

def AllocBody669_703 : StackLang.HolProg 64 :=
.seq AllocBody669_695 AllocBody669_702

def AllocBody669_704 : StackLang.HolProg 64 :=
.seq AllocBody669_694 AllocBody669_703

def AllocBody669_705 : StackLang.HolProg 64 :=
.seq AllocBody669_693 AllocBody669_704

def AllocBody669_706 : StackLang.HolProg 64 :=
.seq AllocBody669_692 AllocBody669_705

def AllocBody669_707 : StackLang.HolProg 64 :=
.seq AllocBody669_691 AllocBody669_706

def AllocBody669_708 : StackLang.HolProg 64 :=
.seq AllocBody669_690 AllocBody669_707

def AllocBody669_709 : StackLang.HolProg 64 :=
.seq AllocBody669_689 AllocBody669_708

def AllocBody669_710 : StackLang.HolProg 64 :=
.seq AllocBody669_688 AllocBody669_709

def AllocBody669_711 : StackLang.HolProg 64 :=
.seq AllocBody669_687 AllocBody669_710

def AllocBody669_712 : StackLang.HolProg 64 :=
.seq AllocBody669_686 AllocBody669_711

def AllocBody669_713 : StackLang.HolProg 64 :=
.seq AllocBody669_685 AllocBody669_712

def AllocBody669_714 : StackLang.HolProg 64 :=
.seq AllocBody669_684 AllocBody669_713

def AllocBody669_715 : StackLang.HolProg 64 :=
.seq AllocBody669_683 AllocBody669_714

def AllocBody669_716 : StackLang.HolProg 64 :=
.seq AllocBody669_682 AllocBody669_715

def AllocBody669_717 : StackLang.HolProg 64 :=
.seq AllocBody669_465 AllocBody669_716

def AllocBody669_718 : StackLang.HolProg 64 :=
.seq AllocBody669_464 AllocBody669_717

def AllocBody669_719 : StackLang.HolProg 64 :=
.seq AllocBody669_463 AllocBody669_718

def AllocBody669_720 : StackLang.HolProg 64 :=
.seq AllocBody669_462 AllocBody669_719

def AllocBody669_721 : StackLang.HolProg 64 :=
.seq AllocBody669_461 AllocBody669_720

def AllocBody669_722 : StackLang.HolProg 64 :=
.seq AllocBody669_412 AllocBody669_721

def AllocBody669_723 : StackLang.HolProg 64 :=
.seq AllocBody669_373 AllocBody669_722

def AllocBody669_724 : StackLang.HolProg 64 :=
.seq AllocBody669_372 AllocBody669_723

def AllocBody669_725 : StackLang.HolProg 64 :=
.seq AllocBody669_150 AllocBody669_724

def AllocBody669_726 : StackLang.HolProg 64 :=
.seq AllocBody669_123 AllocBody669_725

def AllocBody669_727 : StackLang.HolProg 64 :=
.seq AllocBody669_122 AllocBody669_726

def AllocBody669_728 : StackLang.HolProg 64 :=
.seq AllocBody669_121 AllocBody669_727

def AllocBody669_729 : StackLang.HolProg 64 :=
.seq AllocBody669_110 AllocBody669_728

def AllocBody669_730 : StackLang.HolProg 64 :=
.seq AllocBody669_109 AllocBody669_729

def AllocBody669_731 : StackLang.HolProg 64 :=
.seq AllocBody669_108 AllocBody669_730

def AllocBody669_732 : StackLang.HolProg 64 :=
.seq AllocBody669_107 AllocBody669_731

def AllocBody669_733 : StackLang.HolProg 64 :=
.seq AllocBody669_106 AllocBody669_732

def AllocBody669_734 : StackLang.HolProg 64 :=
.seq AllocBody669_105 AllocBody669_733

def AllocBody669_735 : StackLang.HolProg 64 :=
.seq AllocBody669_104 AllocBody669_734

def AllocBody669_736 : StackLang.HolProg 64 :=
.seq AllocBody669_103 AllocBody669_735

def AllocBody669_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody669_739 : StackLang.HolProg 64 :=
.seq AllocBody669_737 AllocBody669_738

def AllocBody669_740 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody669_736 AllocBody669_739

def AllocBody669_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def AllocBody669_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 10

def AllocBody669_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def AllocBody669_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody669_746 : StackLang.HolProg 64 :=
.seq AllocBody669_744 AllocBody669_745

def AllocBody669_747 : StackLang.HolProg 64 :=
.seq AllocBody669_743 AllocBody669_746

def AllocBody669_748 : StackLang.HolProg 64 :=
.seq AllocBody669_742 AllocBody669_747

def AllocBody669_749 : StackLang.HolProg 64 :=
.seq AllocBody669_741 AllocBody669_748

def AllocBody669_750 : StackLang.HolProg 64 :=
.seq AllocBody669_740 AllocBody669_749

def AllocBody669_751 : StackLang.HolProg 64 :=
.seq AllocBody669_102 AllocBody669_750

def AllocBody669_752 : StackLang.HolProg 64 :=
.seq AllocBody669_101 AllocBody669_751

def AllocBody669_753 : StackLang.HolProg 64 :=
.loop AllocBody669_752

def AllocBody669_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 9

def AllocBody669_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2780#64)

def AllocBody669_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_759 : StackLang.HolProg 64 :=
.seq AllocBody669_757 AllocBody669_758

def AllocBody669_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 17

def AllocBody669_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_770 : StackLang.HolProg 64 :=
.seq AllocBody669_768 AllocBody669_769

def AllocBody669_771 : StackLang.HolProg 64 :=
.seq AllocBody669_767 AllocBody669_770

def AllocBody669_772 : StackLang.HolProg 64 :=
.seq AllocBody669_766 AllocBody669_771

def AllocBody669_773 : StackLang.HolProg 64 :=
.seq AllocBody669_765 AllocBody669_772

def AllocBody669_774 : StackLang.HolProg 64 :=
.seq AllocBody669_764 AllocBody669_773

def AllocBody669_775 : StackLang.HolProg 64 :=
.seq AllocBody669_763 AllocBody669_774

def AllocBody669_776 : StackLang.HolProg 64 :=
.seq AllocBody669_762 AllocBody669_775

def AllocBody669_777 : StackLang.HolProg 64 :=
.seq AllocBody669_761 AllocBody669_776

def AllocBody669_778 : StackLang.HolProg 64 :=
.seq AllocBody669_760 AllocBody669_777

def AllocBody669_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody669_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody669_787 : StackLang.HolProg 64 :=
.seq AllocBody669_785 AllocBody669_786

def AllocBody669_788 : StackLang.HolProg 64 :=
.seq AllocBody669_784 AllocBody669_787

def AllocBody669_789 : StackLang.HolProg 64 :=
.seq AllocBody669_783 AllocBody669_788

def AllocBody669_790 : StackLang.HolProg 64 :=
.seq AllocBody669_782 AllocBody669_789

def AllocBody669_791 : StackLang.HolProg 64 :=
.seq AllocBody669_781 AllocBody669_790

def AllocBody669_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody669_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody669_794 : StackLang.HolProg 64 :=
.seq AllocBody669_792 AllocBody669_793

def AllocBody669_795 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_796 : StackLang.HolProg 64 :=
.seq AllocBody669_794 AllocBody669_795

def AllocBody669_797 : StackLang.HolProg 64 :=
.call (some (AllocBody669_791, 0, 669, 16)) (Sum.inl 667) (some (AllocBody669_796, 669, 17))

def AllocBody669_798 : StackLang.HolProg 64 :=
.seq AllocBody669_780 AllocBody669_797

def AllocBody669_799 : StackLang.HolProg 64 :=
.seq AllocBody669_779 AllocBody669_798

def AllocBody669_800 : StackLang.HolProg 64 :=
.seq AllocBody669_778 AllocBody669_799

def AllocBody669_801 : StackLang.HolProg 64 :=
.seq AllocBody669_759 AllocBody669_800

def AllocBody669_802 : StackLang.HolProg 64 :=
.seq AllocBody669_756 AllocBody669_801

def AllocBody669_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody669_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 384#64)

def AllocBody669_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2781#64)

def AllocBody669_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_810 : StackLang.HolProg 64 :=
.seq AllocBody669_808 AllocBody669_809

def AllocBody669_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 19

def AllocBody669_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_821 : StackLang.HolProg 64 :=
.seq AllocBody669_819 AllocBody669_820

def AllocBody669_822 : StackLang.HolProg 64 :=
.seq AllocBody669_818 AllocBody669_821

def AllocBody669_823 : StackLang.HolProg 64 :=
.seq AllocBody669_817 AllocBody669_822

def AllocBody669_824 : StackLang.HolProg 64 :=
.seq AllocBody669_816 AllocBody669_823

def AllocBody669_825 : StackLang.HolProg 64 :=
.seq AllocBody669_815 AllocBody669_824

def AllocBody669_826 : StackLang.HolProg 64 :=
.seq AllocBody669_814 AllocBody669_825

def AllocBody669_827 : StackLang.HolProg 64 :=
.seq AllocBody669_813 AllocBody669_826

def AllocBody669_828 : StackLang.HolProg 64 :=
.seq AllocBody669_812 AllocBody669_827

def AllocBody669_829 : StackLang.HolProg 64 :=
.seq AllocBody669_811 AllocBody669_828

def AllocBody669_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody669_837 : StackLang.HolProg 64 :=
.seq AllocBody669_835 AllocBody669_836

def AllocBody669_838 : StackLang.HolProg 64 :=
.seq AllocBody669_834 AllocBody669_837

def AllocBody669_839 : StackLang.HolProg 64 :=
.seq AllocBody669_833 AllocBody669_838

def AllocBody669_840 : StackLang.HolProg 64 :=
.seq AllocBody669_832 AllocBody669_839

def AllocBody669_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody669_842 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_843 : StackLang.HolProg 64 :=
.seq AllocBody669_841 AllocBody669_842

def AllocBody669_844 : StackLang.HolProg 64 :=
.call (some (AllocBody669_840, 0, 669, 18)) (Sum.inl 77) (some (AllocBody669_843, 669, 19))

def AllocBody669_845 : StackLang.HolProg 64 :=
.seq AllocBody669_831 AllocBody669_844

def AllocBody669_846 : StackLang.HolProg 64 :=
.seq AllocBody669_830 AllocBody669_845

def AllocBody669_847 : StackLang.HolProg 64 :=
.seq AllocBody669_829 AllocBody669_846

def AllocBody669_848 : StackLang.HolProg 64 :=
.seq AllocBody669_810 AllocBody669_847

def AllocBody669_849 : StackLang.HolProg 64 :=
.seq AllocBody669_807 AllocBody669_848

def AllocBody669_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody669_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2782#64)

def AllocBody669_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_855 : StackLang.HolProg 64 :=
.seq AllocBody669_853 AllocBody669_854

def AllocBody669_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody669_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody669_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody669_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 669 21

def AllocBody669_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody669_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody669_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody669_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody669_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_866 : StackLang.HolProg 64 :=
.seq AllocBody669_864 AllocBody669_865

def AllocBody669_867 : StackLang.HolProg 64 :=
.seq AllocBody669_863 AllocBody669_866

def AllocBody669_868 : StackLang.HolProg 64 :=
.seq AllocBody669_862 AllocBody669_867

def AllocBody669_869 : StackLang.HolProg 64 :=
.seq AllocBody669_861 AllocBody669_868

def AllocBody669_870 : StackLang.HolProg 64 :=
.seq AllocBody669_860 AllocBody669_869

def AllocBody669_871 : StackLang.HolProg 64 :=
.seq AllocBody669_859 AllocBody669_870

def AllocBody669_872 : StackLang.HolProg 64 :=
.seq AllocBody669_858 AllocBody669_871

def AllocBody669_873 : StackLang.HolProg 64 :=
.seq AllocBody669_857 AllocBody669_872

def AllocBody669_874 : StackLang.HolProg 64 :=
.seq AllocBody669_856 AllocBody669_873

def AllocBody669_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody669_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody669_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody669_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody669_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody669_882 : StackLang.HolProg 64 :=
.seq AllocBody669_880 AllocBody669_881

def AllocBody669_883 : StackLang.HolProg 64 :=
.seq AllocBody669_879 AllocBody669_882

def AllocBody669_884 : StackLang.HolProg 64 :=
.seq AllocBody669_878 AllocBody669_883

def AllocBody669_885 : StackLang.HolProg 64 :=
.seq AllocBody669_877 AllocBody669_884

def AllocBody669_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody669_887 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody669_888 : StackLang.HolProg 64 :=
.seq AllocBody669_886 AllocBody669_887

def AllocBody669_889 : StackLang.HolProg 64 :=
.call (some (AllocBody669_885, 0, 669, 20)) (Sum.inl 70) (some (AllocBody669_888, 669, 21))

def AllocBody669_890 : StackLang.HolProg 64 :=
.seq AllocBody669_876 AllocBody669_889

def AllocBody669_891 : StackLang.HolProg 64 :=
.seq AllocBody669_875 AllocBody669_890

def AllocBody669_892 : StackLang.HolProg 64 :=
.seq AllocBody669_874 AllocBody669_891

def AllocBody669_893 : StackLang.HolProg 64 :=
.seq AllocBody669_855 AllocBody669_892

def AllocBody669_894 : StackLang.HolProg 64 :=
.seq AllocBody669_852 AllocBody669_893

def AllocBody669_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody669_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody669_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody669_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def AllocBody669_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody669_900 : StackLang.HolProg 64 :=
.seq AllocBody669_898 AllocBody669_899

def AllocBody669_901 : StackLang.HolProg 64 :=
.seq AllocBody669_897 AllocBody669_900

def AllocBody669_902 : StackLang.HolProg 64 :=
.seq AllocBody669_896 AllocBody669_901

def AllocBody669_903 : StackLang.HolProg 64 :=
.seq AllocBody669_895 AllocBody669_902

def AllocBody669_904 : StackLang.HolProg 64 :=
.seq AllocBody669_894 AllocBody669_903

def AllocBody669_905 : StackLang.HolProg 64 :=
.seq AllocBody669_851 AllocBody669_904

def AllocBody669_906 : StackLang.HolProg 64 :=
.seq AllocBody669_850 AllocBody669_905

def AllocBody669_907 : StackLang.HolProg 64 :=
.seq AllocBody669_849 AllocBody669_906

def AllocBody669_908 : StackLang.HolProg 64 :=
.seq AllocBody669_806 AllocBody669_907

def AllocBody669_909 : StackLang.HolProg 64 :=
.seq AllocBody669_805 AllocBody669_908

def AllocBody669_910 : StackLang.HolProg 64 :=
.seq AllocBody669_804 AllocBody669_909

def AllocBody669_911 : StackLang.HolProg 64 :=
.seq AllocBody669_803 AllocBody669_910

def AllocBody669_912 : StackLang.HolProg 64 :=
.seq AllocBody669_802 AllocBody669_911

def AllocBody669_913 : StackLang.HolProg 64 :=
.seq AllocBody669_755 AllocBody669_912

def AllocBody669_914 : StackLang.HolProg 64 :=
.seq AllocBody669_754 AllocBody669_913

def AllocBody669_915 : StackLang.HolProg 64 :=
.seq AllocBody669_753 AllocBody669_914

def AllocBody669_916 : StackLang.HolProg 64 :=
.seq AllocBody669_100 AllocBody669_915

def AllocBody669_917 : StackLang.HolProg 64 :=
.seq AllocBody669_99 AllocBody669_916

def AllocBody669_918 : StackLang.HolProg 64 :=
.seq AllocBody669_98 AllocBody669_917

def AllocBody669_919 : StackLang.HolProg 64 :=
.seq AllocBody669_97 AllocBody669_918

def AllocBody669_920 : StackLang.HolProg 64 :=
.seq AllocBody669_96 AllocBody669_919

def AllocBody669_921 : StackLang.HolProg 64 :=
.seq AllocBody669_51 AllocBody669_920

def AllocBody669_922 : StackLang.HolProg 64 :=
.seq AllocBody669_50 AllocBody669_921

def AllocBody669_923 : StackLang.HolProg 64 :=
.seq AllocBody669_49 AllocBody669_922

def AllocBody669_924 : StackLang.HolProg 64 :=
.seq AllocBody669_48 AllocBody669_923

def AllocBody669_925 : StackLang.HolProg 64 :=
.seq AllocBody669_5 AllocBody669_924

def AllocBody669_926 : StackLang.HolProg 64 :=
.seq AllocBody669_0 AllocBody669_925

def Alloc669 : Nat × StackLang.HolProg 64 := (669, AllocBody669_926)
theorem Alloc669_eq : StackAlloc.progComp (669, raw669) = Alloc669 := by
  kernel_rfl
#print axioms Alloc669_eq
end InitECandidate.Proofs.BackendStages
