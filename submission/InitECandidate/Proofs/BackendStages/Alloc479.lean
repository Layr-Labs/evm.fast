import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw479
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody479_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody479_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody479_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1501#64)

def AllocBody479_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody479_5 : StackLang.HolProg 64 :=
.seq AllocBody479_3 AllocBody479_4

def AllocBody479_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody479_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody479_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody479_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 479 3

def AllocBody479_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody479_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody479_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody479_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody479_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody479_16 : StackLang.HolProg 64 :=
.seq AllocBody479_14 AllocBody479_15

def AllocBody479_17 : StackLang.HolProg 64 :=
.seq AllocBody479_13 AllocBody479_16

def AllocBody479_18 : StackLang.HolProg 64 :=
.seq AllocBody479_12 AllocBody479_17

def AllocBody479_19 : StackLang.HolProg 64 :=
.seq AllocBody479_11 AllocBody479_18

def AllocBody479_20 : StackLang.HolProg 64 :=
.seq AllocBody479_10 AllocBody479_19

def AllocBody479_21 : StackLang.HolProg 64 :=
.seq AllocBody479_9 AllocBody479_20

def AllocBody479_22 : StackLang.HolProg 64 :=
.seq AllocBody479_8 AllocBody479_21

def AllocBody479_23 : StackLang.HolProg 64 :=
.seq AllocBody479_7 AllocBody479_22

def AllocBody479_24 : StackLang.HolProg 64 :=
.seq AllocBody479_6 AllocBody479_23

def AllocBody479_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody479_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody479_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody479_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody479_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody479_32 : StackLang.HolProg 64 :=
.seq AllocBody479_30 AllocBody479_31

def AllocBody479_33 : StackLang.HolProg 64 :=
.seq AllocBody479_29 AllocBody479_32

def AllocBody479_34 : StackLang.HolProg 64 :=
.seq AllocBody479_28 AllocBody479_33

def AllocBody479_35 : StackLang.HolProg 64 :=
.seq AllocBody479_27 AllocBody479_34

def AllocBody479_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody479_38 : StackLang.HolProg 64 :=
.seq AllocBody479_36 AllocBody479_37

def AllocBody479_39 : StackLang.HolProg 64 :=
.call (some (AllocBody479_35, 0, 479, 2)) (Sum.inl 465) (some (AllocBody479_38, 479, 3))

def AllocBody479_40 : StackLang.HolProg 64 :=
.seq AllocBody479_26 AllocBody479_39

def AllocBody479_41 : StackLang.HolProg 64 :=
.seq AllocBody479_25 AllocBody479_40

def AllocBody479_42 : StackLang.HolProg 64 :=
.seq AllocBody479_24 AllocBody479_41

def AllocBody479_43 : StackLang.HolProg 64 :=
.seq AllocBody479_5 AllocBody479_42

def AllocBody479_44 : StackLang.HolProg 64 :=
.seq AllocBody479_2 AllocBody479_43

def AllocBody479_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody479_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody479_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody479_48 : StackLang.HolProg 64 :=
.seq AllocBody479_46 AllocBody479_47

def AllocBody479_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1502#64)

def AllocBody479_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody479_52 : StackLang.HolProg 64 :=
.seq AllocBody479_50 AllocBody479_51

def AllocBody479_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody479_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody479_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody479_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 479 5

def AllocBody479_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody479_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody479_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody479_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody479_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody479_63 : StackLang.HolProg 64 :=
.seq AllocBody479_61 AllocBody479_62

def AllocBody479_64 : StackLang.HolProg 64 :=
.seq AllocBody479_60 AllocBody479_63

def AllocBody479_65 : StackLang.HolProg 64 :=
.seq AllocBody479_59 AllocBody479_64

def AllocBody479_66 : StackLang.HolProg 64 :=
.seq AllocBody479_58 AllocBody479_65

def AllocBody479_67 : StackLang.HolProg 64 :=
.seq AllocBody479_57 AllocBody479_66

def AllocBody479_68 : StackLang.HolProg 64 :=
.seq AllocBody479_56 AllocBody479_67

def AllocBody479_69 : StackLang.HolProg 64 :=
.seq AllocBody479_55 AllocBody479_68

def AllocBody479_70 : StackLang.HolProg 64 :=
.seq AllocBody479_54 AllocBody479_69

def AllocBody479_71 : StackLang.HolProg 64 :=
.seq AllocBody479_53 AllocBody479_70

def AllocBody479_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody479_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody479_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody479_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody479_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody479_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody479_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody479_81 : StackLang.HolProg 64 :=
.seq AllocBody479_79 AllocBody479_80

def AllocBody479_82 : StackLang.HolProg 64 :=
.seq AllocBody479_78 AllocBody479_81

def AllocBody479_83 : StackLang.HolProg 64 :=
.seq AllocBody479_77 AllocBody479_82

def AllocBody479_84 : StackLang.HolProg 64 :=
.seq AllocBody479_76 AllocBody479_83

def AllocBody479_85 : StackLang.HolProg 64 :=
.seq AllocBody479_75 AllocBody479_84

def AllocBody479_86 : StackLang.HolProg 64 :=
.seq AllocBody479_74 AllocBody479_85

def AllocBody479_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody479_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody479_89 : StackLang.HolProg 64 :=
.seq AllocBody479_87 AllocBody479_88

def AllocBody479_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody479_91 : StackLang.HolProg 64 :=
.seq AllocBody479_89 AllocBody479_90

def AllocBody479_92 : StackLang.HolProg 64 :=
.call (some (AllocBody479_86, 0, 479, 4)) (Sum.inl 119) (some (AllocBody479_91, 479, 5))

def AllocBody479_93 : StackLang.HolProg 64 :=
.seq AllocBody479_73 AllocBody479_92

def AllocBody479_94 : StackLang.HolProg 64 :=
.seq AllocBody479_72 AllocBody479_93

def AllocBody479_95 : StackLang.HolProg 64 :=
.seq AllocBody479_71 AllocBody479_94

def AllocBody479_96 : StackLang.HolProg 64 :=
.seq AllocBody479_52 AllocBody479_95

def AllocBody479_97 : StackLang.HolProg 64 :=
.seq AllocBody479_49 AllocBody479_96

def AllocBody479_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody479_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody479_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody479_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody479_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody479_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody479_106 : StackLang.HolProg 64 :=
.seq AllocBody479_104 AllocBody479_105

def AllocBody479_107 : StackLang.HolProg 64 :=
.seq AllocBody479_103 AllocBody479_106

def AllocBody479_108 : StackLang.HolProg 64 :=
.seq AllocBody479_102 AllocBody479_107

def AllocBody479_109 : StackLang.HolProg 64 :=
.seq AllocBody479_101 AllocBody479_108

def AllocBody479_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody479_109 AllocBody479_110

def AllocBody479_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody479_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody479_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def AllocBody479_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody479_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody479_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def AllocBody479_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody479_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1503#64)

def AllocBody479_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody479_124 : StackLang.HolProg 64 :=
.seq AllocBody479_122 AllocBody479_123

def AllocBody479_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody479_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody479_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody479_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 479 7

def AllocBody479_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody479_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody479_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody479_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody479_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody479_135 : StackLang.HolProg 64 :=
.seq AllocBody479_133 AllocBody479_134

def AllocBody479_136 : StackLang.HolProg 64 :=
.seq AllocBody479_132 AllocBody479_135

def AllocBody479_137 : StackLang.HolProg 64 :=
.seq AllocBody479_131 AllocBody479_136

def AllocBody479_138 : StackLang.HolProg 64 :=
.seq AllocBody479_130 AllocBody479_137

def AllocBody479_139 : StackLang.HolProg 64 :=
.seq AllocBody479_129 AllocBody479_138

def AllocBody479_140 : StackLang.HolProg 64 :=
.seq AllocBody479_128 AllocBody479_139

def AllocBody479_141 : StackLang.HolProg 64 :=
.seq AllocBody479_127 AllocBody479_140

def AllocBody479_142 : StackLang.HolProg 64 :=
.seq AllocBody479_126 AllocBody479_141

def AllocBody479_143 : StackLang.HolProg 64 :=
.seq AllocBody479_125 AllocBody479_142

def AllocBody479_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody479_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody479_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody479_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody479_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody479_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody479_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody479_152 : StackLang.HolProg 64 :=
.seq AllocBody479_150 AllocBody479_151

def AllocBody479_153 : StackLang.HolProg 64 :=
.seq AllocBody479_149 AllocBody479_152

def AllocBody479_154 : StackLang.HolProg 64 :=
.seq AllocBody479_148 AllocBody479_153

def AllocBody479_155 : StackLang.HolProg 64 :=
.seq AllocBody479_147 AllocBody479_154

def AllocBody479_156 : StackLang.HolProg 64 :=
.seq AllocBody479_146 AllocBody479_155

def AllocBody479_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody479_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody479_159 : StackLang.HolProg 64 :=
.seq AllocBody479_157 AllocBody479_158

def AllocBody479_160 : StackLang.HolProg 64 :=
.call (some (AllocBody479_156, 0, 479, 6)) (Sum.inl 463) (some (AllocBody479_159, 479, 7))

def AllocBody479_161 : StackLang.HolProg 64 :=
.seq AllocBody479_145 AllocBody479_160

def AllocBody479_162 : StackLang.HolProg 64 :=
.seq AllocBody479_144 AllocBody479_161

def AllocBody479_163 : StackLang.HolProg 64 :=
.seq AllocBody479_143 AllocBody479_162

def AllocBody479_164 : StackLang.HolProg 64 :=
.seq AllocBody479_124 AllocBody479_163

def AllocBody479_165 : StackLang.HolProg 64 :=
.seq AllocBody479_121 AllocBody479_164

def AllocBody479_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody479_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody479_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody479_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody479_170 : StackLang.HolProg 64 :=
.seq AllocBody479_168 AllocBody479_169

def AllocBody479_171 : StackLang.HolProg 64 :=
.seq AllocBody479_167 AllocBody479_170

def AllocBody479_172 : StackLang.HolProg 64 :=
.seq AllocBody479_166 AllocBody479_171

def AllocBody479_173 : StackLang.HolProg 64 :=
.seq AllocBody479_165 AllocBody479_172

def AllocBody479_174 : StackLang.HolProg 64 :=
.seq AllocBody479_120 AllocBody479_173

def AllocBody479_175 : StackLang.HolProg 64 :=
.seq AllocBody479_119 AllocBody479_174

def AllocBody479_176 : StackLang.HolProg 64 :=
.seq AllocBody479_118 AllocBody479_175

def AllocBody479_177 : StackLang.HolProg 64 :=
.seq AllocBody479_117 AllocBody479_176

def AllocBody479_178 : StackLang.HolProg 64 :=
.seq AllocBody479_116 AllocBody479_177

def AllocBody479_179 : StackLang.HolProg 64 :=
.seq AllocBody479_115 AllocBody479_178

def AllocBody479_180 : StackLang.HolProg 64 :=
.seq AllocBody479_114 AllocBody479_179

def AllocBody479_181 : StackLang.HolProg 64 :=
.seq AllocBody479_113 AllocBody479_180

def AllocBody479_182 : StackLang.HolProg 64 :=
.seq AllocBody479_112 AllocBody479_181

def AllocBody479_183 : StackLang.HolProg 64 :=
.seq AllocBody479_111 AllocBody479_182

def AllocBody479_184 : StackLang.HolProg 64 :=
.seq AllocBody479_100 AllocBody479_183

def AllocBody479_185 : StackLang.HolProg 64 :=
.seq AllocBody479_99 AllocBody479_184

def AllocBody479_186 : StackLang.HolProg 64 :=
.seq AllocBody479_98 AllocBody479_185

def AllocBody479_187 : StackLang.HolProg 64 :=
.seq AllocBody479_97 AllocBody479_186

def AllocBody479_188 : StackLang.HolProg 64 :=
.seq AllocBody479_48 AllocBody479_187

def AllocBody479_189 : StackLang.HolProg 64 :=
.seq AllocBody479_45 AllocBody479_188

def AllocBody479_190 : StackLang.HolProg 64 :=
.seq AllocBody479_44 AllocBody479_189

def AllocBody479_191 : StackLang.HolProg 64 :=
.seq AllocBody479_1 AllocBody479_190

def AllocBody479_192 : StackLang.HolProg 64 :=
.seq AllocBody479_0 AllocBody479_191

def Alloc479 : Nat × StackLang.HolProg 64 := (479, AllocBody479_192)
theorem Alloc479_eq : StackAlloc.progComp (479, raw479) = Alloc479 := by
  kernel_rfl
#print axioms Alloc479_eq
end InitECandidate.Proofs.BackendStages
