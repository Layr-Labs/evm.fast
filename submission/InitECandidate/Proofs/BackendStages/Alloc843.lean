import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw843
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody843_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody843_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody843_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody843_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody843_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody843_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody843_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody843_7 : StackLang.HolProg 64 :=
.seq AllocBody843_5 AllocBody843_6

def AllocBody843_8 : StackLang.HolProg 64 :=
.seq AllocBody843_4 AllocBody843_7

def AllocBody843_9 : StackLang.HolProg 64 :=
.seq AllocBody843_3 AllocBody843_8

def AllocBody843_10 : StackLang.HolProg 64 :=
.seq AllocBody843_2 AllocBody843_9

def AllocBody843_11 : StackLang.HolProg 64 :=
.seq AllocBody843_1 AllocBody843_10

def AllocBody843_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4215#64)

def AllocBody843_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_15 : StackLang.HolProg 64 :=
.seq AllocBody843_13 AllocBody843_14

def AllocBody843_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody843_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody843_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 3

def AllocBody843_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody843_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody843_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody843_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody843_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_26 : StackLang.HolProg 64 :=
.seq AllocBody843_24 AllocBody843_25

def AllocBody843_27 : StackLang.HolProg 64 :=
.seq AllocBody843_23 AllocBody843_26

def AllocBody843_28 : StackLang.HolProg 64 :=
.seq AllocBody843_22 AllocBody843_27

def AllocBody843_29 : StackLang.HolProg 64 :=
.seq AllocBody843_21 AllocBody843_28

def AllocBody843_30 : StackLang.HolProg 64 :=
.seq AllocBody843_20 AllocBody843_29

def AllocBody843_31 : StackLang.HolProg 64 :=
.seq AllocBody843_19 AllocBody843_30

def AllocBody843_32 : StackLang.HolProg 64 :=
.seq AllocBody843_18 AllocBody843_31

def AllocBody843_33 : StackLang.HolProg 64 :=
.seq AllocBody843_17 AllocBody843_32

def AllocBody843_34 : StackLang.HolProg 64 :=
.seq AllocBody843_16 AllocBody843_33

def AllocBody843_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody843_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody843_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody843_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody843_42 : StackLang.HolProg 64 :=
.seq AllocBody843_40 AllocBody843_41

def AllocBody843_43 : StackLang.HolProg 64 :=
.seq AllocBody843_39 AllocBody843_42

def AllocBody843_44 : StackLang.HolProg 64 :=
.seq AllocBody843_38 AllocBody843_43

def AllocBody843_45 : StackLang.HolProg 64 :=
.seq AllocBody843_37 AllocBody843_44

def AllocBody843_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody843_48 : StackLang.HolProg 64 :=
.seq AllocBody843_46 AllocBody843_47

def AllocBody843_49 : StackLang.HolProg 64 :=
.call (some (AllocBody843_45, 0, 843, 2)) (Sum.inl 841) (some (AllocBody843_48, 843, 3))

def AllocBody843_50 : StackLang.HolProg 64 :=
.seq AllocBody843_36 AllocBody843_49

def AllocBody843_51 : StackLang.HolProg 64 :=
.seq AllocBody843_35 AllocBody843_50

def AllocBody843_52 : StackLang.HolProg 64 :=
.seq AllocBody843_34 AllocBody843_51

def AllocBody843_53 : StackLang.HolProg 64 :=
.seq AllocBody843_15 AllocBody843_52

def AllocBody843_54 : StackLang.HolProg 64 :=
.seq AllocBody843_12 AllocBody843_53

def AllocBody843_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 400#64)))

def AllocBody843_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4216#64)

def AllocBody843_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_62 : StackLang.HolProg 64 :=
.seq AllocBody843_60 AllocBody843_61

def AllocBody843_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody843_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody843_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 5

def AllocBody843_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody843_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody843_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody843_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody843_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_73 : StackLang.HolProg 64 :=
.seq AllocBody843_71 AllocBody843_72

def AllocBody843_74 : StackLang.HolProg 64 :=
.seq AllocBody843_70 AllocBody843_73

def AllocBody843_75 : StackLang.HolProg 64 :=
.seq AllocBody843_69 AllocBody843_74

def AllocBody843_76 : StackLang.HolProg 64 :=
.seq AllocBody843_68 AllocBody843_75

def AllocBody843_77 : StackLang.HolProg 64 :=
.seq AllocBody843_67 AllocBody843_76

def AllocBody843_78 : StackLang.HolProg 64 :=
.seq AllocBody843_66 AllocBody843_77

def AllocBody843_79 : StackLang.HolProg 64 :=
.seq AllocBody843_65 AllocBody843_78

def AllocBody843_80 : StackLang.HolProg 64 :=
.seq AllocBody843_64 AllocBody843_79

def AllocBody843_81 : StackLang.HolProg 64 :=
.seq AllocBody843_63 AllocBody843_80

def AllocBody843_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody843_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody843_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody843_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody843_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody843_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody843_91 : StackLang.HolProg 64 :=
.seq AllocBody843_89 AllocBody843_90

def AllocBody843_92 : StackLang.HolProg 64 :=
.seq AllocBody843_88 AllocBody843_91

def AllocBody843_93 : StackLang.HolProg 64 :=
.seq AllocBody843_87 AllocBody843_92

def AllocBody843_94 : StackLang.HolProg 64 :=
.seq AllocBody843_86 AllocBody843_93

def AllocBody843_95 : StackLang.HolProg 64 :=
.seq AllocBody843_85 AllocBody843_94

def AllocBody843_96 : StackLang.HolProg 64 :=
.seq AllocBody843_84 AllocBody843_95

def AllocBody843_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody843_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody843_99 : StackLang.HolProg 64 :=
.seq AllocBody843_97 AllocBody843_98

def AllocBody843_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody843_101 : StackLang.HolProg 64 :=
.seq AllocBody843_99 AllocBody843_100

def AllocBody843_102 : StackLang.HolProg 64 :=
.call (some (AllocBody843_96, 0, 843, 4)) (Sum.inl 68) (some (AllocBody843_101, 843, 5))

def AllocBody843_103 : StackLang.HolProg 64 :=
.seq AllocBody843_83 AllocBody843_102

def AllocBody843_104 : StackLang.HolProg 64 :=
.seq AllocBody843_82 AllocBody843_103

def AllocBody843_105 : StackLang.HolProg 64 :=
.seq AllocBody843_81 AllocBody843_104

def AllocBody843_106 : StackLang.HolProg 64 :=
.seq AllocBody843_62 AllocBody843_105

def AllocBody843_107 : StackLang.HolProg 64 :=
.seq AllocBody843_59 AllocBody843_106

def AllocBody843_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody843_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def AllocBody843_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody843_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody843_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody843_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_120 : StackLang.HolProg 64 :=
.seq AllocBody843_118 AllocBody843_119

def AllocBody843_121 : StackLang.HolProg 64 :=
.seq AllocBody843_117 AllocBody843_120

def AllocBody843_122 : StackLang.HolProg 64 :=
.seq AllocBody843_116 AllocBody843_121

def AllocBody843_123 : StackLang.HolProg 64 :=
.seq AllocBody843_115 AllocBody843_122

def AllocBody843_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def AllocBody843_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody843_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_129 : StackLang.HolProg 64 :=
.seq AllocBody843_127 AllocBody843_128

def AllocBody843_130 : StackLang.HolProg 64 :=
.seq AllocBody843_126 AllocBody843_129

def AllocBody843_131 : StackLang.HolProg 64 :=
.seq AllocBody843_125 AllocBody843_130

def AllocBody843_132 : StackLang.HolProg 64 :=
.seq AllocBody843_124 AllocBody843_131

def AllocBody843_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody843_123 AllocBody843_132

def AllocBody843_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody843_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody843_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody843_139 : StackLang.HolProg 64 :=
.seq AllocBody843_137 AllocBody843_138

def AllocBody843_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4217#64)

def AllocBody843_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_143 : StackLang.HolProg 64 :=
.seq AllocBody843_141 AllocBody843_142

def AllocBody843_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody843_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody843_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 7

def AllocBody843_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody843_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody843_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody843_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody843_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_154 : StackLang.HolProg 64 :=
.seq AllocBody843_152 AllocBody843_153

def AllocBody843_155 : StackLang.HolProg 64 :=
.seq AllocBody843_151 AllocBody843_154

def AllocBody843_156 : StackLang.HolProg 64 :=
.seq AllocBody843_150 AllocBody843_155

def AllocBody843_157 : StackLang.HolProg 64 :=
.seq AllocBody843_149 AllocBody843_156

def AllocBody843_158 : StackLang.HolProg 64 :=
.seq AllocBody843_148 AllocBody843_157

def AllocBody843_159 : StackLang.HolProg 64 :=
.seq AllocBody843_147 AllocBody843_158

def AllocBody843_160 : StackLang.HolProg 64 :=
.seq AllocBody843_146 AllocBody843_159

def AllocBody843_161 : StackLang.HolProg 64 :=
.seq AllocBody843_145 AllocBody843_160

def AllocBody843_162 : StackLang.HolProg 64 :=
.seq AllocBody843_144 AllocBody843_161

def AllocBody843_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody843_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody843_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody843_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody843_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody843_171 : StackLang.HolProg 64 :=
.seq AllocBody843_169 AllocBody843_170

def AllocBody843_172 : StackLang.HolProg 64 :=
.seq AllocBody843_168 AllocBody843_171

def AllocBody843_173 : StackLang.HolProg 64 :=
.seq AllocBody843_167 AllocBody843_172

def AllocBody843_174 : StackLang.HolProg 64 :=
.seq AllocBody843_166 AllocBody843_173

def AllocBody843_175 : StackLang.HolProg 64 :=
.seq AllocBody843_165 AllocBody843_174

def AllocBody843_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody843_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody843_178 : StackLang.HolProg 64 :=
.seq AllocBody843_176 AllocBody843_177

def AllocBody843_179 : StackLang.HolProg 64 :=
.call (some (AllocBody843_175, 0, 843, 6)) (Sum.inl 177) (some (AllocBody843_178, 843, 7))

def AllocBody843_180 : StackLang.HolProg 64 :=
.seq AllocBody843_164 AllocBody843_179

def AllocBody843_181 : StackLang.HolProg 64 :=
.seq AllocBody843_163 AllocBody843_180

def AllocBody843_182 : StackLang.HolProg 64 :=
.seq AllocBody843_162 AllocBody843_181

def AllocBody843_183 : StackLang.HolProg 64 :=
.seq AllocBody843_143 AllocBody843_182

def AllocBody843_184 : StackLang.HolProg 64 :=
.seq AllocBody843_140 AllocBody843_183

def AllocBody843_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody843_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody843_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody843_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4218#64)

def AllocBody843_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_194 : StackLang.HolProg 64 :=
.seq AllocBody843_192 AllocBody843_193

def AllocBody843_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody843_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody843_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 9

def AllocBody843_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody843_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody843_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody843_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody843_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_205 : StackLang.HolProg 64 :=
.seq AllocBody843_203 AllocBody843_204

def AllocBody843_206 : StackLang.HolProg 64 :=
.seq AllocBody843_202 AllocBody843_205

def AllocBody843_207 : StackLang.HolProg 64 :=
.seq AllocBody843_201 AllocBody843_206

def AllocBody843_208 : StackLang.HolProg 64 :=
.seq AllocBody843_200 AllocBody843_207

def AllocBody843_209 : StackLang.HolProg 64 :=
.seq AllocBody843_199 AllocBody843_208

def AllocBody843_210 : StackLang.HolProg 64 :=
.seq AllocBody843_198 AllocBody843_209

def AllocBody843_211 : StackLang.HolProg 64 :=
.seq AllocBody843_197 AllocBody843_210

def AllocBody843_212 : StackLang.HolProg 64 :=
.seq AllocBody843_196 AllocBody843_211

def AllocBody843_213 : StackLang.HolProg 64 :=
.seq AllocBody843_195 AllocBody843_212

def AllocBody843_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody843_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody843_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody843_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody843_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody843_222 : StackLang.HolProg 64 :=
.seq AllocBody843_220 AllocBody843_221

def AllocBody843_223 : StackLang.HolProg 64 :=
.seq AllocBody843_219 AllocBody843_222

def AllocBody843_224 : StackLang.HolProg 64 :=
.seq AllocBody843_218 AllocBody843_223

def AllocBody843_225 : StackLang.HolProg 64 :=
.seq AllocBody843_217 AllocBody843_224

def AllocBody843_226 : StackLang.HolProg 64 :=
.seq AllocBody843_216 AllocBody843_225

def AllocBody843_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody843_228 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody843_229 : StackLang.HolProg 64 :=
.seq AllocBody843_227 AllocBody843_228

def AllocBody843_230 : StackLang.HolProg 64 :=
.call (some (AllocBody843_226, 0, 843, 8)) (Sum.inl 68) (some (AllocBody843_229, 843, 9))

def AllocBody843_231 : StackLang.HolProg 64 :=
.seq AllocBody843_215 AllocBody843_230

def AllocBody843_232 : StackLang.HolProg 64 :=
.seq AllocBody843_214 AllocBody843_231

def AllocBody843_233 : StackLang.HolProg 64 :=
.seq AllocBody843_213 AllocBody843_232

def AllocBody843_234 : StackLang.HolProg 64 :=
.seq AllocBody843_194 AllocBody843_233

def AllocBody843_235 : StackLang.HolProg 64 :=
.seq AllocBody843_191 AllocBody843_234

def AllocBody843_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody843_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody843_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody843_240 : StackLang.HolProg 64 :=
.seq AllocBody843_238 AllocBody843_239

def AllocBody843_241 : StackLang.HolProg 64 :=
.seq AllocBody843_237 AllocBody843_240

def AllocBody843_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4219#64)

def AllocBody843_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_245 : StackLang.HolProg 64 :=
.seq AllocBody843_243 AllocBody843_244

def AllocBody843_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody843_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody843_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 11

def AllocBody843_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody843_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody843_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody843_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody843_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_256 : StackLang.HolProg 64 :=
.seq AllocBody843_254 AllocBody843_255

def AllocBody843_257 : StackLang.HolProg 64 :=
.seq AllocBody843_253 AllocBody843_256

def AllocBody843_258 : StackLang.HolProg 64 :=
.seq AllocBody843_252 AllocBody843_257

def AllocBody843_259 : StackLang.HolProg 64 :=
.seq AllocBody843_251 AllocBody843_258

def AllocBody843_260 : StackLang.HolProg 64 :=
.seq AllocBody843_250 AllocBody843_259

def AllocBody843_261 : StackLang.HolProg 64 :=
.seq AllocBody843_249 AllocBody843_260

def AllocBody843_262 : StackLang.HolProg 64 :=
.seq AllocBody843_248 AllocBody843_261

def AllocBody843_263 : StackLang.HolProg 64 :=
.seq AllocBody843_247 AllocBody843_262

def AllocBody843_264 : StackLang.HolProg 64 :=
.seq AllocBody843_246 AllocBody843_263

def AllocBody843_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody843_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody843_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody843_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody843_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody843_273 : StackLang.HolProg 64 :=
.seq AllocBody843_271 AllocBody843_272

def AllocBody843_274 : StackLang.HolProg 64 :=
.seq AllocBody843_270 AllocBody843_273

def AllocBody843_275 : StackLang.HolProg 64 :=
.seq AllocBody843_269 AllocBody843_274

def AllocBody843_276 : StackLang.HolProg 64 :=
.seq AllocBody843_268 AllocBody843_275

def AllocBody843_277 : StackLang.HolProg 64 :=
.seq AllocBody843_267 AllocBody843_276

def AllocBody843_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody843_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody843_280 : StackLang.HolProg 64 :=
.seq AllocBody843_278 AllocBody843_279

def AllocBody843_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody843_282 : StackLang.HolProg 64 :=
.seq AllocBody843_280 AllocBody843_281

def AllocBody843_283 : StackLang.HolProg 64 :=
.call (some (AllocBody843_277, 0, 843, 10)) (Sum.inl 839) (some (AllocBody843_282, 843, 11))

def AllocBody843_284 : StackLang.HolProg 64 :=
.seq AllocBody843_266 AllocBody843_283

def AllocBody843_285 : StackLang.HolProg 64 :=
.seq AllocBody843_265 AllocBody843_284

def AllocBody843_286 : StackLang.HolProg 64 :=
.seq AllocBody843_264 AllocBody843_285

def AllocBody843_287 : StackLang.HolProg 64 :=
.seq AllocBody843_245 AllocBody843_286

def AllocBody843_288 : StackLang.HolProg 64 :=
.seq AllocBody843_242 AllocBody843_287

def AllocBody843_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody843_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 256#64)

def AllocBody843_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody843_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4220#64)

def AllocBody843_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_296 : StackLang.HolProg 64 :=
.seq AllocBody843_294 AllocBody843_295

def AllocBody843_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody843_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody843_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 13

def AllocBody843_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody843_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody843_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody843_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody843_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_307 : StackLang.HolProg 64 :=
.seq AllocBody843_305 AllocBody843_306

def AllocBody843_308 : StackLang.HolProg 64 :=
.seq AllocBody843_304 AllocBody843_307

def AllocBody843_309 : StackLang.HolProg 64 :=
.seq AllocBody843_303 AllocBody843_308

def AllocBody843_310 : StackLang.HolProg 64 :=
.seq AllocBody843_302 AllocBody843_309

def AllocBody843_311 : StackLang.HolProg 64 :=
.seq AllocBody843_301 AllocBody843_310

def AllocBody843_312 : StackLang.HolProg 64 :=
.seq AllocBody843_300 AllocBody843_311

def AllocBody843_313 : StackLang.HolProg 64 :=
.seq AllocBody843_299 AllocBody843_312

def AllocBody843_314 : StackLang.HolProg 64 :=
.seq AllocBody843_298 AllocBody843_313

def AllocBody843_315 : StackLang.HolProg 64 :=
.seq AllocBody843_297 AllocBody843_314

def AllocBody843_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody843_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody843_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody843_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody843_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody843_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody843_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody843_326 : StackLang.HolProg 64 :=
.seq AllocBody843_324 AllocBody843_325

def AllocBody843_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody843_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody843_329 : StackLang.HolProg 64 :=
.seq AllocBody843_327 AllocBody843_328

def AllocBody843_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody843_331 : StackLang.HolProg 64 :=
.seq AllocBody843_329 AllocBody843_330

def AllocBody843_332 : StackLang.HolProg 64 :=
.seq AllocBody843_326 AllocBody843_331

def AllocBody843_333 : StackLang.HolProg 64 :=
.seq AllocBody843_323 AllocBody843_332

def AllocBody843_334 : StackLang.HolProg 64 :=
.seq AllocBody843_322 AllocBody843_333

def AllocBody843_335 : StackLang.HolProg 64 :=
.seq AllocBody843_321 AllocBody843_334

def AllocBody843_336 : StackLang.HolProg 64 :=
.seq AllocBody843_320 AllocBody843_335

def AllocBody843_337 : StackLang.HolProg 64 :=
.seq AllocBody843_319 AllocBody843_336

def AllocBody843_338 : StackLang.HolProg 64 :=
.seq AllocBody843_318 AllocBody843_337

def AllocBody843_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody843_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody843_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody843_342 : StackLang.HolProg 64 :=
.seq AllocBody843_340 AllocBody843_341

def AllocBody843_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody843_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody843_345 : StackLang.HolProg 64 :=
.seq AllocBody843_343 AllocBody843_344

def AllocBody843_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody843_347 : StackLang.HolProg 64 :=
.seq AllocBody843_345 AllocBody843_346

def AllocBody843_348 : StackLang.HolProg 64 :=
.seq AllocBody843_342 AllocBody843_347

def AllocBody843_349 : StackLang.HolProg 64 :=
.seq AllocBody843_339 AllocBody843_348

def AllocBody843_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody843_351 : StackLang.HolProg 64 :=
.seq AllocBody843_349 AllocBody843_350

def AllocBody843_352 : StackLang.HolProg 64 :=
.call (some (AllocBody843_338, 0, 843, 12)) (Sum.inl 176) (some (AllocBody843_351, 843, 13))

def AllocBody843_353 : StackLang.HolProg 64 :=
.seq AllocBody843_317 AllocBody843_352

def AllocBody843_354 : StackLang.HolProg 64 :=
.seq AllocBody843_316 AllocBody843_353

def AllocBody843_355 : StackLang.HolProg 64 :=
.seq AllocBody843_315 AllocBody843_354

def AllocBody843_356 : StackLang.HolProg 64 :=
.seq AllocBody843_296 AllocBody843_355

def AllocBody843_357 : StackLang.HolProg 64 :=
.seq AllocBody843_293 AllocBody843_356

def AllocBody843_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody843_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody843_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4221#64)

def AllocBody843_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_365 : StackLang.HolProg 64 :=
.seq AllocBody843_363 AllocBody843_364

def AllocBody843_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody843_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody843_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 15

def AllocBody843_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody843_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody843_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody843_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody843_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_376 : StackLang.HolProg 64 :=
.seq AllocBody843_374 AllocBody843_375

def AllocBody843_377 : StackLang.HolProg 64 :=
.seq AllocBody843_373 AllocBody843_376

def AllocBody843_378 : StackLang.HolProg 64 :=
.seq AllocBody843_372 AllocBody843_377

def AllocBody843_379 : StackLang.HolProg 64 :=
.seq AllocBody843_371 AllocBody843_378

def AllocBody843_380 : StackLang.HolProg 64 :=
.seq AllocBody843_370 AllocBody843_379

def AllocBody843_381 : StackLang.HolProg 64 :=
.seq AllocBody843_369 AllocBody843_380

def AllocBody843_382 : StackLang.HolProg 64 :=
.seq AllocBody843_368 AllocBody843_381

def AllocBody843_383 : StackLang.HolProg 64 :=
.seq AllocBody843_367 AllocBody843_382

def AllocBody843_384 : StackLang.HolProg 64 :=
.seq AllocBody843_366 AllocBody843_383

def AllocBody843_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody843_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody843_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody843_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody843_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody843_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody843_394 : StackLang.HolProg 64 :=
.seq AllocBody843_392 AllocBody843_393

def AllocBody843_395 : StackLang.HolProg 64 :=
.seq AllocBody843_391 AllocBody843_394

def AllocBody843_396 : StackLang.HolProg 64 :=
.seq AllocBody843_390 AllocBody843_395

def AllocBody843_397 : StackLang.HolProg 64 :=
.seq AllocBody843_389 AllocBody843_396

def AllocBody843_398 : StackLang.HolProg 64 :=
.seq AllocBody843_388 AllocBody843_397

def AllocBody843_399 : StackLang.HolProg 64 :=
.seq AllocBody843_387 AllocBody843_398

def AllocBody843_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody843_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody843_402 : StackLang.HolProg 64 :=
.seq AllocBody843_400 AllocBody843_401

def AllocBody843_403 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody843_404 : StackLang.HolProg 64 :=
.seq AllocBody843_402 AllocBody843_403

def AllocBody843_405 : StackLang.HolProg 64 :=
.call (some (AllocBody843_399, 0, 843, 14)) (Sum.inl 842) (some (AllocBody843_404, 843, 15))

def AllocBody843_406 : StackLang.HolProg 64 :=
.seq AllocBody843_386 AllocBody843_405

def AllocBody843_407 : StackLang.HolProg 64 :=
.seq AllocBody843_385 AllocBody843_406

def AllocBody843_408 : StackLang.HolProg 64 :=
.seq AllocBody843_384 AllocBody843_407

def AllocBody843_409 : StackLang.HolProg 64 :=
.seq AllocBody843_365 AllocBody843_408

def AllocBody843_410 : StackLang.HolProg 64 :=
.seq AllocBody843_362 AllocBody843_409

def AllocBody843_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody843_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody843_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody843_416 : StackLang.HolProg 64 :=
.seq AllocBody843_414 AllocBody843_415

def AllocBody843_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4222#64)

def AllocBody843_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_420 : StackLang.HolProg 64 :=
.seq AllocBody843_418 AllocBody843_419

def AllocBody843_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody843_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody843_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody843_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 17

def AllocBody843_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody843_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody843_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody843_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody843_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_431 : StackLang.HolProg 64 :=
.seq AllocBody843_429 AllocBody843_430

def AllocBody843_432 : StackLang.HolProg 64 :=
.seq AllocBody843_428 AllocBody843_431

def AllocBody843_433 : StackLang.HolProg 64 :=
.seq AllocBody843_427 AllocBody843_432

def AllocBody843_434 : StackLang.HolProg 64 :=
.seq AllocBody843_426 AllocBody843_433

def AllocBody843_435 : StackLang.HolProg 64 :=
.seq AllocBody843_425 AllocBody843_434

def AllocBody843_436 : StackLang.HolProg 64 :=
.seq AllocBody843_424 AllocBody843_435

def AllocBody843_437 : StackLang.HolProg 64 :=
.seq AllocBody843_423 AllocBody843_436

def AllocBody843_438 : StackLang.HolProg 64 :=
.seq AllocBody843_422 AllocBody843_437

def AllocBody843_439 : StackLang.HolProg 64 :=
.seq AllocBody843_421 AllocBody843_438

def AllocBody843_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody843_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody843_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody843_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody843_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody843_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody843_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody843_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody843_450 : StackLang.HolProg 64 :=
.seq AllocBody843_448 AllocBody843_449

def AllocBody843_451 : StackLang.HolProg 64 :=
.seq AllocBody843_447 AllocBody843_450

def AllocBody843_452 : StackLang.HolProg 64 :=
.seq AllocBody843_446 AllocBody843_451

def AllocBody843_453 : StackLang.HolProg 64 :=
.seq AllocBody843_445 AllocBody843_452

def AllocBody843_454 : StackLang.HolProg 64 :=
.seq AllocBody843_444 AllocBody843_453

def AllocBody843_455 : StackLang.HolProg 64 :=
.seq AllocBody843_443 AllocBody843_454

def AllocBody843_456 : StackLang.HolProg 64 :=
.seq AllocBody843_442 AllocBody843_455

def AllocBody843_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody843_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody843_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody843_460 : StackLang.HolProg 64 :=
.seq AllocBody843_458 AllocBody843_459

def AllocBody843_461 : StackLang.HolProg 64 :=
.seq AllocBody843_457 AllocBody843_460

def AllocBody843_462 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody843_463 : StackLang.HolProg 64 :=
.seq AllocBody843_461 AllocBody843_462

def AllocBody843_464 : StackLang.HolProg 64 :=
.call (some (AllocBody843_456, 0, 843, 16)) (Sum.inl 840) (some (AllocBody843_463, 843, 17))

def AllocBody843_465 : StackLang.HolProg 64 :=
.seq AllocBody843_441 AllocBody843_464

def AllocBody843_466 : StackLang.HolProg 64 :=
.seq AllocBody843_440 AllocBody843_465

def AllocBody843_467 : StackLang.HolProg 64 :=
.seq AllocBody843_439 AllocBody843_466

def AllocBody843_468 : StackLang.HolProg 64 :=
.seq AllocBody843_420 AllocBody843_467

def AllocBody843_469 : StackLang.HolProg 64 :=
.seq AllocBody843_417 AllocBody843_468

def AllocBody843_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody843_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody843_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody843_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody843_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody843_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody843_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody843_483 : StackLang.HolProg 64 :=
.seq AllocBody843_481 AllocBody843_482

def AllocBody843_484 : StackLang.HolProg 64 :=
.seq AllocBody843_480 AllocBody843_483

def AllocBody843_485 : StackLang.HolProg 64 :=
.seq AllocBody843_479 AllocBody843_484

def AllocBody843_486 : StackLang.HolProg 64 :=
.seq AllocBody843_478 AllocBody843_485

def AllocBody843_487 : StackLang.HolProg 64 :=
.seq AllocBody843_477 AllocBody843_486

def AllocBody843_488 : StackLang.HolProg 64 :=
.seq AllocBody843_476 AllocBody843_487

def AllocBody843_489 : StackLang.HolProg 64 :=
.seq AllocBody843_475 AllocBody843_488

def AllocBody843_490 : StackLang.HolProg 64 :=
.seq AllocBody843_474 AllocBody843_489

def AllocBody843_491 : StackLang.HolProg 64 :=
.seq AllocBody843_473 AllocBody843_490

def AllocBody843_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody843_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody843_494 : StackLang.HolProg 64 :=
.seq AllocBody843_492 AllocBody843_493

def AllocBody843_495 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody843_491 AllocBody843_494

def AllocBody843_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody843_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody843_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody843_500 : StackLang.HolProg 64 :=
.seq AllocBody843_498 AllocBody843_499

def AllocBody843_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody843_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody843_503 : StackLang.HolProg 64 :=
.seq AllocBody843_501 AllocBody843_502

def AllocBody843_504 : StackLang.HolProg 64 :=
.seq AllocBody843_500 AllocBody843_503

def AllocBody843_505 : StackLang.HolProg 64 :=
.seq AllocBody843_497 AllocBody843_504

def AllocBody843_506 : StackLang.HolProg 64 :=
.seq AllocBody843_496 AllocBody843_505

def AllocBody843_507 : StackLang.HolProg 64 :=
.seq AllocBody843_495 AllocBody843_506

def AllocBody843_508 : StackLang.HolProg 64 :=
.seq AllocBody843_472 AllocBody843_507

def AllocBody843_509 : StackLang.HolProg 64 :=
.seq AllocBody843_471 AllocBody843_508

def AllocBody843_510 : StackLang.HolProg 64 :=
.seq AllocBody843_470 AllocBody843_509

def AllocBody843_511 : StackLang.HolProg 64 :=
.seq AllocBody843_469 AllocBody843_510

def AllocBody843_512 : StackLang.HolProg 64 :=
.seq AllocBody843_416 AllocBody843_511

def AllocBody843_513 : StackLang.HolProg 64 :=
.seq AllocBody843_413 AllocBody843_512

def AllocBody843_514 : StackLang.HolProg 64 :=
.seq AllocBody843_412 AllocBody843_513

def AllocBody843_515 : StackLang.HolProg 64 :=
.seq AllocBody843_411 AllocBody843_514

def AllocBody843_516 : StackLang.HolProg 64 :=
.seq AllocBody843_410 AllocBody843_515

def AllocBody843_517 : StackLang.HolProg 64 :=
.seq AllocBody843_361 AllocBody843_516

def AllocBody843_518 : StackLang.HolProg 64 :=
.seq AllocBody843_360 AllocBody843_517

def AllocBody843_519 : StackLang.HolProg 64 :=
.seq AllocBody843_359 AllocBody843_518

def AllocBody843_520 : StackLang.HolProg 64 :=
.seq AllocBody843_358 AllocBody843_519

def AllocBody843_521 : StackLang.HolProg 64 :=
.seq AllocBody843_357 AllocBody843_520

def AllocBody843_522 : StackLang.HolProg 64 :=
.seq AllocBody843_292 AllocBody843_521

def AllocBody843_523 : StackLang.HolProg 64 :=
.seq AllocBody843_291 AllocBody843_522

def AllocBody843_524 : StackLang.HolProg 64 :=
.seq AllocBody843_290 AllocBody843_523

def AllocBody843_525 : StackLang.HolProg 64 :=
.seq AllocBody843_289 AllocBody843_524

def AllocBody843_526 : StackLang.HolProg 64 :=
.seq AllocBody843_288 AllocBody843_525

def AllocBody843_527 : StackLang.HolProg 64 :=
.seq AllocBody843_241 AllocBody843_526

def AllocBody843_528 : StackLang.HolProg 64 :=
.seq AllocBody843_236 AllocBody843_527

def AllocBody843_529 : StackLang.HolProg 64 :=
.seq AllocBody843_235 AllocBody843_528

def AllocBody843_530 : StackLang.HolProg 64 :=
.seq AllocBody843_190 AllocBody843_529

def AllocBody843_531 : StackLang.HolProg 64 :=
.seq AllocBody843_189 AllocBody843_530

def AllocBody843_532 : StackLang.HolProg 64 :=
.seq AllocBody843_188 AllocBody843_531

def AllocBody843_533 : StackLang.HolProg 64 :=
.seq AllocBody843_187 AllocBody843_532

def AllocBody843_534 : StackLang.HolProg 64 :=
.seq AllocBody843_186 AllocBody843_533

def AllocBody843_535 : StackLang.HolProg 64 :=
.seq AllocBody843_185 AllocBody843_534

def AllocBody843_536 : StackLang.HolProg 64 :=
.seq AllocBody843_184 AllocBody843_535

def AllocBody843_537 : StackLang.HolProg 64 :=
.seq AllocBody843_139 AllocBody843_536

def AllocBody843_538 : StackLang.HolProg 64 :=
.seq AllocBody843_136 AllocBody843_537

def AllocBody843_539 : StackLang.HolProg 64 :=
.seq AllocBody843_135 AllocBody843_538

def AllocBody843_540 : StackLang.HolProg 64 :=
.seq AllocBody843_134 AllocBody843_539

def AllocBody843_541 : StackLang.HolProg 64 :=
.seq AllocBody843_133 AllocBody843_540

def AllocBody843_542 : StackLang.HolProg 64 :=
.seq AllocBody843_114 AllocBody843_541

def AllocBody843_543 : StackLang.HolProg 64 :=
.seq AllocBody843_113 AllocBody843_542

def AllocBody843_544 : StackLang.HolProg 64 :=
.seq AllocBody843_112 AllocBody843_543

def AllocBody843_545 : StackLang.HolProg 64 :=
.seq AllocBody843_111 AllocBody843_544

def AllocBody843_546 : StackLang.HolProg 64 :=
.seq AllocBody843_110 AllocBody843_545

def AllocBody843_547 : StackLang.HolProg 64 :=
.seq AllocBody843_109 AllocBody843_546

def AllocBody843_548 : StackLang.HolProg 64 :=
.seq AllocBody843_108 AllocBody843_547

def AllocBody843_549 : StackLang.HolProg 64 :=
.seq AllocBody843_107 AllocBody843_548

def AllocBody843_550 : StackLang.HolProg 64 :=
.seq AllocBody843_58 AllocBody843_549

def AllocBody843_551 : StackLang.HolProg 64 :=
.seq AllocBody843_57 AllocBody843_550

def AllocBody843_552 : StackLang.HolProg 64 :=
.seq AllocBody843_56 AllocBody843_551

def AllocBody843_553 : StackLang.HolProg 64 :=
.seq AllocBody843_55 AllocBody843_552

def AllocBody843_554 : StackLang.HolProg 64 :=
.seq AllocBody843_54 AllocBody843_553

def AllocBody843_555 : StackLang.HolProg 64 :=
.seq AllocBody843_11 AllocBody843_554

def AllocBody843_556 : StackLang.HolProg 64 :=
.seq AllocBody843_0 AllocBody843_555

def Alloc843 : Nat × StackLang.HolProg 64 := (843, AllocBody843_556)
theorem Alloc843_eq : StackAlloc.progComp (843, raw843) = Alloc843 := by
  kernel_rfl
#print axioms Alloc843_eq
end InitECandidate.Proofs.BackendStages
